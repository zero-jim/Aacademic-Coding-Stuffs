#include<iostream>
using namespace std;
int main()
{
    int first,last,middle,n,item,arr[100];
    cout<<"Enter the number of elements to be in the array: ";
    cin>>n;
    cout<<"Enter your elements: ";
    for(int i=0;i<n;i++)
    {
        cin>>arr[i];
    }
    cout<<"Enter the number you want to search: ";
    cin>>item;
    first=0;
    last=n-1;
    middle=(first+last)/2;
    while(first<=last)
    {
        if(arr[middle]<item)
            first=middle+1;
        else if(arr[middle]==item){
            cout<<"Element found at "<<middle+1<<" position."<<endl;
            break;
        }
        else
            last=middle-1;

        middle=(first+last)/2;
    }
    if(first>last)
        cout<<"Not found! "<<item<<" is not found in the array."<<endl;
    return 0;
}
