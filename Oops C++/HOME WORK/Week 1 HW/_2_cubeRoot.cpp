/* 2.  Write a C++ program to check whether the given number is a perfect cube or not 
	(without using any library function). Display the proper message accordingly. 
	(Example: 27 is a perfect cube, cube root is 3.) 
*/

#include<iostream>
using namespace std;
int main()
{
    int num,start=0,end,mid;
    cout<<"Enter the number whose cube root you want to find : ";
    cin>>num;
    end=num;
    mid=(start+end)/2;
    while(mid*mid*mid!=num)
    {
        mid=(start+end)/2;
        if(mid*mid*mid<num)
            start=mid;
        else if(mid*mid*mid>num)
            end=mid;
    }
    cout<<"The cube rot of "<<num<<" is "<<mid;
}
