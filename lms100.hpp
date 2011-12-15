#ifndef lms100_hpp
#define lms100_hpp

#include <deque>
#include <vector>
#include <string>
#include <boost/function.hpp>
#include <boost/variant.hpp>

struct Lms100
{
    typedef boost::variant< long, float, std::string > Atomic;
    typedef boost::function<void(int,int,const float*)> ChannelReceiver;

    static const int msg_out = 1;

    static std::string STX, ETX;

    int sock;
    void * recvQueue;
    std::string recvLeftover;

    Lms100() : sock(-1), recvQueue(0) { }
    ~Lms100() { if (sock>-1) disconnect(); }

    void connect( const char * host = "192.168.0.1", int port = 2112);
    void disconnect();
    void display(long mask);
    void set_scan_cfg(long mode);
    void set_access_mode(long mode);
    void bang();
    void scan(long on);
    void set_mean_filter(long mode);
    void start_measurement();
    void request_status();

    void recv();
    void send_impl( const std::vector< Atomic >& argv );

    static std::deque<Atomic> parseMsg(const std::string& reply,
            const Lms100::ChannelReceiver& chrecv = NULL);

    static std::string sickFormat(const Atomic& atom);
};


#endif
