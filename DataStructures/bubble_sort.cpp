#include<iostream>
using namespace std;
int main()
{
    int arr[100],n;
    cout<<"Enter number of elements: ";
    cin>>n;
    cout<<"Enter element of the array: ";
    for(int i=0;i<n;i++)
    {
        cin>>arr[i];
    }
    cout<<"Before sorting:"<<endl;
    for(int i=0;i<n;i++)
    {
        cout<<arr[i]<<' ';
    }
    cout<<endl<<"After sorting:"<<endl;
    for(int i=0;i<n;i++)
    {
        for(int j=i+1;j<n;j++)
        {
            if(arr[i]>arr[j])
            {
                int tmp=arr[i];
                arr[i]=arr[j];
                arr[j]=tmp;
            }
        }
        cout<<arr[i]<<' ';
    }
    cout<<endl;
    return 0;
}
