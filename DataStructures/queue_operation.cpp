#include<iostream>
#include<queue>
using namespace std;
int main()
{
    queue<int> q;
    cout<<"Enter number of elements to push in the queue: ";
    int n,arr[100];
    cin>>n;
    for(int i=0;i<n;i++)
    {
        cin>>arr[i];
        q.push(arr[i]);                  /// use of push
    }
    while(!q.empty())
    {
        cout<<q.front()<<' ';              /// use of top/show
        q.pop();                         /// use of pop
    }
    cout<<endl;
    return 0;
}

