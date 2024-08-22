/* Write a C++ program to convert the distance in mm to cm, inch, feet (1 cm = 10mm, 1 inch = 2.5cm, 1 feet = 12 inches). */

#include <iostream>
using namespace std;

int main()
{
    float mm, cm, inch, feet;
    cout << "enter value in mm to convert in other format " << endl;
    cin >> mm;
    // mm to cm
    cm = mm / 10;

    // mm to inch
    inch = mm / 25.4;

    // mm to feet
    feet = mm / 304.8;
    cout << mm << " mm = " << cm << " cm " << endl;
    cout << mm << " mm = " << inch << " inch " << endl;
    cout << mm << " mm = " << feet << " feet " << endl;
}
