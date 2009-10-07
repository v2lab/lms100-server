#include "maxxx.h"

struct Hello : MaxxxBase<Hello> {
    Hello() { post("Default hello_maxxx constructor called\n"); }

    void i_am(t_symbol * name) {
        post("hi there, %s\n", name->s_name);
    }

    void bang() {
        post("I've got bang!\n");
    }

    void _int(long i) {
        post("int %d\n", i);
    }
    void _float(float f) {
        post("float %f\n", f);
    }
    void test2(long i, double f) {
        post("tested %d, %f\n", i, f);
    }
    void test(long i, double f, t_symbol * s) {
        post("tested %d, %f, %s\n", i, f, s->s_name);
    }
};

int main()
{
    Hello::class_reg("hello_maxxx");

    Hello::method_reg("i_am", &Hello::i_am);
    Hello::method_reg("bang", &Hello::bang);
    Hello::method_reg("int", &Hello::_int);
    Hello::method_reg("float", &Hello::_float);
    Hello::method_reg("test2", &Hello::test2);
    Hello::method_reg("test", &Hello::test);

    class_register(CLASS_BOX, Hello::_class);

    return 0;
}
