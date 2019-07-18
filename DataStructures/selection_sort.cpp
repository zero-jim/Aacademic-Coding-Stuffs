#include<iostream>
using namespace std;
int main()
{
    cout<<"Selection_sort:"<<endl;
    int arr[100],n;
    cout<<"Enter number of element to be sorted: ";
    cin>>n;
    cout<<"Enter elements please...."<<endl;
    for(int i=0;i<n;i++)
    {
        cin>>arr[i];
    }
    cout<<"Here is the sorted data:"<<endl;
    for(int i=0;i<n;i++)
    {
        int mini=i;
        for(int j=i+1;j<n;j++)
        {
            if(arr[mini]>arr[j])
            {
                int tmp=arr[mini];
                arr[mini]=arr[j];
                arr[j]=tmp;
            }
        }
        cout<<arr[i]<<' ';
    }
    cout<<endl;
    return 0;
}
