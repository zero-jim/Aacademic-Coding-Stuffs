#include<iostream>
using namespace std;
int main()
{
    int arr[100],n,item;
    cout<<"Enter the number of elements to be in the array: ";
    cin>>n;
    cout<<"Enter your elements: ";
    for(int i=0;i<n;i++)
    {
        cin>>arr[i];
    }
    cout<<"Enter the number you want to search: ";
    cin>>item;
    arr[n]=item;
    int loc=0;
    while(arr[loc]!=item)
        loc++;
    if(loc==n)
        cout<<"Data not found."<<endl;
    else
        cout<<"Data found at "<<loc+1<<" position."<<endl;
    return 0;
}
