#include <iostream>

using namespace std;
int main()
{
    int hr, min, sec;
    cout << "Enter the time in seconds" << endl;
    cin >> sec;
    hr = sec / 3600;
    sec = sec % 3600;

    min = sec / 60;
    sec = sec % 60;

    cout << hr << "hr:" << min << "min:" << sec << "sec";
    return 0;
}
