#include <stdio.h>

void fun(int a)
{
    printf("Value of a is %d\n", a);
}

int main()
{

    void (*fun_ptr)(int) = &fun;
    void (*fun_ptr_2)(int) = &fun;
    printf("address of fun: %p \n", &fun);
    (*fun_ptr)(10);
    (*fun_ptr_2)(10);

    return 0;
}