#include <iostream>
#include <math.h>

using namespace std;
extern "C" float func_interval(float x);// функция на ассемблере

extern "C" float fun_el(float x) {
    float f;
    f = ((cos(x) / sin(x) + cos(x)) / exp(x));
    return f;
}
float Function(float x) //проверка на C
{
    float f;
    f = ((cos(x) / sin(x) + cos(x)) / exp(x));
    return f;
}
int main(int argc, char** argv)
{
    cout << "Assembler answers: " << endl;
    for (float i = 0.0f; i < 1.1f; i += 0.1f)
    {
          cout << func_interval(i) << endl;
    }

    cout << endl << "C answers: " << endl;
    for (float i = 0.0f; i < 1.1f; i += 0.1f)
    {
        cout << Function(i) << endl;
    }
    system("pause");
    return 1;
}

