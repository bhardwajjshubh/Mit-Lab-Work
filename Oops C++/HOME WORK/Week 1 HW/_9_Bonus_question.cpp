// 1. Write a C++ program, which generates all the possible combinations of the given 3-digit number.

#include <iostream>
using namespace std;

int main()
{
    int arr[2];
    cout << "Enter single digit three times " << endl;
    cin >> arr[0] >> arr[1] >> arr[2];

    for (int i = 0; i <= 2; i++)
    {
        for (int j = 0; j <= 2; j++)
        {
            for (int k = 0; k <= 2; k++)
            {
                cout << arr[i] << arr[j] << arr[k] << endl;
            }
        }
    }
    return 0;
}