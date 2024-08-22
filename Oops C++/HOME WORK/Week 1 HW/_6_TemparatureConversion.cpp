// 6. Write a C++ program to convert the temperature given in Fahrenheit to Celsius and vice versa. ( C = 5/9(F-32) )

#include <iostream>
using namespace std;

int main()
{
    double cel, f;

    cout << " enter the temperature " << endl;
    cin >> f;
    cel = (f - 32.0) * 5.0 / 9.0;
    cout << cel;
    return 0;
}