#include<iostream>
#include<stack>
using namespace std;
int main()
{
    stack<int> s;
    cout<<"Enter number of elements to push in the stack: ";
    int n,arr[100];
    cin>>n;
    for(int i=0;i<n;i++)
    {
        cin>>arr[i];
        s.push(arr[i]);                  /// use of push
    }
    while(!s.empty())
    {
        cout<<s.top()<<' ';              /// use of top/show
        s.pop();                         /// use of pop
    }
    cout<<endl;
    return 0;
}
