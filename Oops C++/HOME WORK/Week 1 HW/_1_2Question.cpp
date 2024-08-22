#include<iostream>
using namespace std;

int main(){
	
	int i,j,n;
	cout<<"Enter no. of rows "<<endl;
	cin>>n;
	for(i=0;i<=n-1;i++){
		for(j=n-1;j>=i;j--){
			cout<<(char)('A' + j + 1)<<" ";
		}
		cout<<endl;
	}
	return 0;
}
