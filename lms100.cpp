#define __STDC_LIMIT_MACROS
#include <stdint.h>

#include "lms100.hpp"

// BSD sockets
#include <netdb.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <errno.h>

// uncomment to debug the parser
//#define BOOST_SPIRIT_DEBUG
#define PHOENIX_LIMIT 6
#define BOOST_SPIRIT_SELECT_LIMIT 6
#include <boost/spirit/include/classic_core.hpp>
#include <boost/spirit/include/classic_push_back_actor.hpp>
#include <boost/spirit/include/classic_clear_actor.hpp>
#include <boost/spirit/include/classic_loops.hpp>
#include <boost/spirit/include/classic_attribute.hpp>
#include <boost/spirit/include/classic_for.hpp>
#include <boost/spirit/include/classic_select.hpp>
#include <boost/spirit/include/phoenix1.hpp>
#include <boost/assign/list_of.hpp>
#include <boost/bind.hpp>
#include <boost/lexical_cast.hpp>
#include <boost/algorithm/string/join.hpp>
#include <boost/range/adaptor/transformed.hpp>
#include <boost/regex.hpp>

#include <iostream>
#include <deque>
#include <iostream>

using namespace boost::assign;
using boost::lexical_cast;
using namespace boost::adaptors;
using namespace boost::algorithm;

#define SEND(head, ...) send_impl( (list_of(Atomic(head)), ## __VA_ARGS__) )
#define LIST(head,...) (list_of(Atomic(head)), ## __VA_ARGS__)

std::string Lms100::STX = "\x2s", Lms100::ETX = "\x3";

struct SickFormat : boost::static_visitor< std::string > {
    template< typename T >
        std::string format(const char * fmt, T val, size_t len = 32) const
        {
            char buffer[ len ];
            snprintf(buffer, len, fmt, val);
            return buffer;
        }

    std::string operator()(long val) const { return format("%lX", val); }
    std::string operator()(float val) const { return format("%f", val); }
    std::string operator()(const std::string& val) const { return val; }
};
std::string Lms100::sickFormat(const Atomic& atom) {
    return boost::apply_visitor( SickFormat(), atom );
}

void Lms100::connect( const char * host, int port)
{
    struct hostent * host_ent;
    struct sockaddr_in addr;

    if ((host_ent = gethostbyname(host)) == NULL) {
        fprintf(stderr,"can't resolve net address '%s'\n", host);
        perror("LMS100");
        return;
    }

    if ((sock = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP)) < 0) {
        fprintf(stderr,"can't create socket\n");
        perror("LMS100");
        return;
    }

    memset(&addr, 0, sizeof(addr));
    addr.sin_family      = AF_INET;
    addr.sin_addr.s_addr = *((in_addr_t*)host_ent->h_addr_list[0]);
    addr.sin_port        = htons(port);

    if (::connect(sock, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
        fprintf(stderr,"error connecting to %s:%d\n", host, port);
        perror("LMS100");
        // this cleans the socket up even though we haven't connected
        disconnect();
        return;
    }

    printf("connected to %s:%d\n", host, port);
}

void Lms100::disconnect()
{
    if (sock > -1) {
        close(sock);
        sock = -1;
        printf("disconnected\n");
    } else {
        fprintf(stderr,"already disconnected\n");
    }
}

void Lms100::send_impl( const std::vector< Atomic >& argv )
{
    std::string buffer = STX;
    buffer += join(argv | transformed(sickFormat), " ");
    buffer += ETX;

    if (sock < 0) {
        fprintf(stderr,"can't send, connect first\n");
        fprintf(stderr,"would have sent '%s'\n", buffer.c_str());
        return;
    }

    if (::send(sock, buffer.c_str(), buffer.length(), 0) != buffer.length()) {
        fprintf(stderr,"something's wrong, sent less bytes then expected\n");
        perror("LMS100");
    } else {
        printf("sent '%s'\n", buffer.c_str());
    }
}

void Lms100::display(long mask)
{
    SEND("MN","mLMLSetDisp",mask);
}

void Lms100::recv()
{
#define RCV_BUFFER_SIZE 65536
    char buffer[RCV_BUFFER_SIZE];
    int write_pos = 0;

    int parse_pos;
    int recvd = 0;

    if (sock < 0) {
        fprintf(stderr,"attempt to receive while not connected\n");
        return;
    }

    do {
        // pump data while available
        while (write_pos < (RCV_BUFFER_SIZE - 1)) {
            recvd = ::recv(sock, buffer + write_pos, RCV_BUFFER_SIZE - write_pos - 1, 0);

            if (recvd < 0) {
                if (errno == EAGAIN)
                    break;
                else {
                    fprintf(stderr,"error receiving data\n");
                    perror("LMS100");
                    return;
                }
            } else if (recvd == 0) {
                printf("connection closed by the server\n");
                disconnect();
                return;
            }

            write_pos += recvd;
        }

        recvLeftover += std::string(buffer,write_pos);

        // non-greedy kleene star - otherwise consequtive messages will be joined at heap.
        const boost::regex sick_re(STX + "(.*?)" + ETX);
        boost::sregex_token_iterator end, i(recvLeftover.begin(), recvLeftover.end(), sick_re, 1);

        int parsed = 0;
        while(i != end) {
            std::string reply( *i++ );
            std::cout << "FIXME handle data std::deque<Atomic> to_spit = parseMsg(reply, boost::bind(&Lms100::sendChannelData, this, _1, _2, _3))\n";

            std::cout << "FIXME if (to_spit.size()>0) outlet(msg_out, to_spit)\n";
            parsed += STX.length() + reply.length() + ETX.length();
        }
        recvLeftover = recvLeftover.substr(parsed);
        write_pos = 0;
    } while(recvd>0);
}

template < typename Container >
struct push_back_ok_impl {
    Container & vec;
    int ok;
    push_back_ok_impl(Container & vec_, int ok_ = 1) : vec(vec_), ok(ok_) {}
    void operator()(int val) const { vec.push_back( (val == ok)?"ok":"failed" ); }
};
template < typename Container >
push_back_ok_impl<Container> push_back_ok_a(Container & cont, int ok = 1)
{
    return push_back_ok_impl<Container>(cont, ok);
}

template < typename Container >
struct ack_impl {
    Container & vec;
    int ok;
    ack_impl(Container & vec_, int ok_ = 1) : vec(vec_), ok(ok_) {}
    void operator()(int val) const { vec.push_front( (val == ok)?"ACK":"NAK" ); }
};
template < typename Container >
ack_impl<Container> ack_a(Container & cont, int ok = 1)
{
    return ack_impl<Container>(cont, ok);
}

template < typename Container >
struct push_back_str_impl {
    Container & vec;
    push_back_str_impl(Container & vec_) : vec(vec_) {}
    void operator()(const char* const& begin, const char* const& end) const { vec.push_back( std::string(begin,end) ); }
};
template < typename Container >
push_back_str_impl<Container> push_back_str_a(Container & cont)
{
    return push_back_str_impl<Container>(cont);
}


template < typename Container >
struct push_back_u32_impl {
    Container & vec;
    push_back_u32_impl(Container & vec_) : vec(vec_) {}
    void operator()(unsigned val) const
    {
        if (val <= INT32_MAX)
            vec.push_back( (long)val);
        else
            // max only supports signed 32bit integers, we've got to convert to floating point
            vec.push_back( (float)val );
    }
};
template < typename Container >
push_back_u32_impl<Container> push_back_u32_a(Container & cont)
{
    return push_back_u32_impl<Container>(cont);
}

template < typename Container >
struct push_back_int_impl {
    Container & vec;
    push_back_int_impl(Container & vec_) : vec(vec_) {}
    void operator()(unsigned val) const { vec.push_back( *(long*)(&val) ); }
};
template < typename Container >
push_back_int_impl<Container> push_back_int_a(Container & cont)
{
    return push_back_int_impl<Container>(cont);
}

template< typename Container, typename KEY >
struct push_back_mapped_impl {
    typedef std::map<KEY, std::string> dict_t;
    Container & vec;
    dict_t dict;
    const char * def;
    push_back_mapped_impl( Container & vec_, const dict_t& dict_, const char* def_ = NULL )
        : vec(vec_), dict(dict_), def(def_) {}
    void operator()(KEY val) const {
        typename dict_t::const_iterator it = dict.find(val);
        if (it != dict.end()) vec.push_back((*it).second);
        else if (def) vec.push_back(def);
        else vec.push_back("unknown");
    }
};
template < typename Container, typename KEY >
push_back_mapped_impl<Container,KEY> push_back_mapped_a(Container & cont, const std::map<KEY, std::string>& dict, const char* def = NULL)
{
    return push_back_mapped_impl<Container,KEY>(cont, dict, def);
}

template < typename Container >
struct push_back_bool_impl {
    typedef std::map<int, std::string> dict_t;
    Container & vec;

    int true_val;

    push_back_bool_impl( Container & vec_, int true_val_ = 1)
        : vec(vec_), true_val(true_val_) {}

    void operator()(int val) const { vec.push_back( (val == true_val) ? 1l : 0l); }
};
template < typename Container >
push_back_bool_impl<Container> push_back_bool_a(Container & cont, int true_ = 1)
{
    return push_back_bool_impl<Container>(cont, true_);
}

struct send_data_a {
    Lms100::ChannelReceiver const& recv;
    int const&i, &n;
    float* & data;
    send_data_a(Lms100::ChannelReceiver const&  recv_, int const&  i_, int const&  n_, float* &  data_) : recv(recv_),i(i_),n(n_),data(data_) {}
    template< typename Num > void operator() (Num) const { recv( i, n, data ); }
    template< typename First, typename Second > void operator() (First, Second) const {
        if (recv)
            recv( i, n, data );
    }
};

void Lms100::set_scan_cfg(long mode)
{
    long
        a = ((mode==2) ? 5000 : 2500),
        b = ((mode==0) ? 2500 : 5000);

    set_access_mode(3);
    SEND("MN", "mLMPsetscancfg", a, "1", b, "FFF92230", "225510");

    set_access_mode(0);
}

void Lms100::set_mean_filter(long mode)
{
    set_access_mode(3);
    if ((mode == 0) || (mode == 1))
        SEND("WI", "F1", 0l, 2l, 0l);
    else
        SEND("WI", "F1", 1l, mode, 0l);
    set_access_mode(0);
}

void Lms100::set_access_mode(long mode)
{
    if (mode == 0) {
        SEND("MN", "Run");
    } else if (mode < 4) {
        const char * pass = (mode==3)?"F4724744":"B21ACE26";
        SEND("MN", "SetAccessMode", mode, pass);
    }
}

void Lms100::start_measurement()
{
    set_access_mode(3);
    SEND("MN", "LMCstartmeas");
    set_access_mode(0);
}

void Lms100::request_status()
{
    SEND("RN", "STlms");
}

void Lms100::bang()
{
    SEND("RN", "LMDscandata");
}

void Lms100::scan(long on)
{
    SEND("EN", "LMDscandata", on);
}

typedef std::map<unsigned, std::string> Enum;
Enum access_mode_map = map_list_of
    (0,"run")
    (1,"operator")
    (2,"maintainance")
    (3,"authorized-client")
    (4,"service");

Enum scan_cfg_status_map = map_list_of
    (0,"ok")
    (1, "bad-frequency")
    (2, "bad-angular-resolution")
    (3, "bad-freq-and-resolution")
    (4, "bad-area")
    (5, "other-error");

Enum device_status_map = map_list_of
    (0,"undefined")
    (1,"initialisation")
    (2,"configuration")
    (3,"idle")
    (4,"rotated")
    (5,"in-preparation")
    (6,"ready")
    (7,"ready-for-measurement")
    (8,"reserved")
    (9,"reserved")
    (10,"reserved")
    (11,"reserved");

Enum error_map = map_list_of
    (1,"Permission Denied")
    (2,"Unknown Command")
    (3,"Unknown Request")
    (4,"Invalid Parameter Value")
    (8,"Missing Parameter(s)")
    (10,"Permission Denied");

using namespace BOOST_SPIRIT_CLASSIC_NS;
using namespace phoenix;

struct LmsParser : public grammar<LmsParser>
{

    std::deque< Lms100::Atomic >& vec;
    const Lms100::ChannelReceiver& channel_receiver;
    LmsParser( std::deque<Lms100::Atomic>& vec_, const Lms100::ChannelReceiver& channel_receiver_ ) : vec(vec_), channel_receiver(channel_receiver_) {}

    template <typename ScannerT>
    struct definition
    {
        definition(LmsParser const& self)
        {
            int i, j, n, ch_idx;
            union hex_float { unsigned u; float f; };
            hex_float scaler;

#define LMS_MAX_SAMPLES_PER_SCAN 1082
            float chdata[LMS_MAX_SAMPLES_PER_SCAN], *pchdata = chdata;

#define STR2STR(a,b) str_p(a)[push_back_a(self.vec, b) ]
#define ENUM(dict,...) hex_p[ push_back_mapped_a(self.vec, dict, ## __VA_ARGS__) ]
            full_grammar =
                STR2STR("FA","NAK") >> ENUM(error_map,"unknown")
                | str_p("AN") >> (
                        STR2STR("mLMLSetDisp", "display") >> ack
                        | STR2STR("SetAccessMode", "set-access-mode") >> ack
                        | STR2STR("Run", "run") >> ack
                        | STR2STR("LMCstartmeas", "start-measurement") >> ack_0
                        | STR2STR("GetAccessMode", "access-mode") >> ENUM(access_mode_map)
                        | STR2STR("mLMPsetscancfg", "set-scan-cfg") >> ENUM(scan_cfg_status_map)[ack_a(self.vec,0)] >> !(u32 >> u32 >> u32 >> u32 >> u32)
                        )
                | str_p("EA") >> (
                        STR2STR("LMDscandata", "scanning") >> bool_1
                        )
                | str_p("RA") >> (
                        STR2STR("8", "device-ready") >> bool_1
                        | STR2STR("STlms", "device-status") >> ENUM(device_status_map) >> bool_0 >> ignore >> str >> ignore >> str >> u32 >> u32 >> u32
                        | STR2STR("LMPscancfg", "scan-config") >> u32 >> u8 >> u32 >> i32 >> i32
                        | STR2STR("F1", "mean-filter") >> bool_1 >> u8 >> u8
                        | scan_data
                        )
                | STR2STR("WA","ACK") >> STR2STR("F1","set-mean-filter")
                | str_p("SN") >> scan_data;

            scan_data = str_p("LMDscandata")
                >> repeat_p(16)[ignore]
                >> int_p[ var(i) = arg1 ] >> repeat_p(boost::ref(i))[ ignore >> ignore ] // encoders
                >> int_p[ var(i) = arg1 ] >> repeat_p(boost::ref(i))[ scan_data_channel ] // 16-bit channels
                >> int_p[ var(i) = arg1 ] >> repeat_p(boost::ref(i))[ scan_data_channel ] // 8-bit channels
                >> *ignore [ clear_a(self.vec) ]; // ignore the rest!
            scan_data_channel =
                select_p( str_p("DIST1"), str_p("RSSI1"), str_p("DIST2"), str_p("RSSI2") )[ assign_a(ch_idx) ]
                >> hex_p[ var(scaler.u) = arg1 ] >> repeat_p(3)[ignore] >> hex_p[ var(j) = arg1 ]
                >> for_p(var(n)=0 , var(n) < var(j) , var(n)++)[
                    hex_p[
                        if_((arg1 > 0) && (arg1 * var(scaler.f) < val(2e4f))) [
                            var(chdata)[var(n)] = arg1 * var(scaler.f)
                        ] .else_ [
                            if_(var(n) > 0) [
                                var(chdata)[var(n)] = var(chdata)[ var(n)-1 ]
                            ] .else_ [
                                var(chdata)[var(n)] = val(0.0f)
                            ]
                        ] ]
                    ]
                    [ send_data_a(self.channel_receiver, ch_idx, n, pchdata) ];

            u32 = hex_p[push_back_u32_a(self.vec)];
            u8 = hex_p[push_back_int_a(self.vec)]; // convert to long since max knows no better
            i32 = hex_p[push_back_int_a(self.vec)];
            ignore = lexeme_d[+graph_p];
            str = lexeme_d[+graph_p][ push_back_str_a(self.vec) ];
            bool_1 = int_p[push_back_bool_a(self.vec)];
            bool_0 = int_p[push_back_bool_a(self.vec, 0)];
            ok = int_p[push_back_ok_a(self.vec)];
            ack = int_p[ack_a(self.vec)];
            ack_0 = int_p[ack_a(self.vec, 0)];
#undef STR2STR
#undef ENUM

            BOOST_SPIRIT_DEBUG_RULE(full_grammar);
            BOOST_SPIRIT_DEBUG_RULE(ignore);
            BOOST_SPIRIT_DEBUG_RULE(str);
            BOOST_SPIRIT_DEBUG_RULE(bool_1);
            BOOST_SPIRIT_DEBUG_RULE(bool_0);
            BOOST_SPIRIT_DEBUG_RULE(ok);
            BOOST_SPIRIT_DEBUG_RULE(u32);
            BOOST_SPIRIT_DEBUG_RULE(u8);
            BOOST_SPIRIT_DEBUG_RULE(i32);
            BOOST_SPIRIT_DEBUG_RULE(scan_data);
            BOOST_SPIRIT_DEBUG_RULE(scan_data_channel);
        }

        rule<ScannerT> full_grammar,
            ignore, str,
            bool_1, bool_0, ok, ack, ack_0,
            u32, u8, i32,
            scan_data, scan_data_channel;

        rule<ScannerT> const& start() const { return full_grammar; }
    };
};

std::deque<Lms100::Atomic> Lms100::parseMsg(const std::string& reply,
        const Lms100::ChannelReceiver& chrecv )
{
    std::deque< Lms100::Atomic > argv;

    LmsParser parser(argv, chrecv);

    parse_info<> info = parse( reply.c_str(), parser, space_p);

    if (info.full)
        return argv;
    else
        return LIST( argv.size() ? "misformed-message" : "unknown-message", reply );
}

