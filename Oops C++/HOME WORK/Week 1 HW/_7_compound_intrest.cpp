// . Write a C++ program to calculate the compound interest.  A = P (1 + r/n )nt

#include <iostream>
#include <math.h>
using namespace std;

int main()
{
    float ci, p, r, t, n;
    cout << "enter p,r,t,n " << endl;

    cin >> p >> r >> t >> n;

    ci = p * (pow(1 + r / n, n * t));
    cout << "The compound intrest is " << ci << endl;
}