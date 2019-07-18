#include<iostream>
#include<cstdio>
using namespace std;
int main()
{
    int a[8]={4,6,7,9,8,2},k=2,j,n=6-1,item;
    cout<<"Original array contains:......."<<endl;
    for(int i=0;i<6;i++)
        cout<<"Array["<<i<<"] = "<<a[i]<<endl;
    j=n;
    item=3;
    while(j>=k)
    {
        a[j+1]=a[i];
        j=j-1;
    }
    a[k]=item;
    n=n+1;
    cout<<"After inserting a new element the array contains...."<<endl;
    for(int i=0;i<n;i++)
        cout<<"Array["<<i<<"] = "<<a[i]<<endl;
}
