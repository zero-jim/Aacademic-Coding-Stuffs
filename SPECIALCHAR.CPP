#include<bits/stdc++.h>
using namespace std;
string single_op="~!%^&*-+=<>|/";
int main()
{
    int i,j;
    char ch;
    freopen("input.txt","r",stdin);
    freopen("output.txt","w",stdout);
    while(cin>>ch)
    {
        if(ispunct(ch))
        {
            for(i=0;i<single_op.size();i++)
            {
                if(ch==single_op[i])break;
            }
            if(i>=single_op.size())
                cout<<ch<<endl;
        }
    }
    return 0;
}
