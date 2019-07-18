#include<bits/stdc++.h>
using namespace std;
string op="~!%^&*-+=/<>|";
int main()
{
    int  i,j;
    string s,c;
    freopen("input.txt","r",stdin);
    freopen("output.txt","w",stdout);
    while(cin>>s)
    {
        while(s.empty()==false)
        {
            if(s.empty()) break;
            for(i=0;i<op.size();i++)
            {
                if(s[0]==op[i])break;
            }
            if(i<op.size()) break;
            s.erase(s.begin());


        }
        if(s.empty()) continue;
        cout<<s[0];
        s.erase(s.begin());
        for(i=0;i<op.size();i++)
        {
            if(op[i]==s[0])
            {
                cout<<s[0];
                s.erase(s.begin());
            }
        }
        cout<<endl;
    }
    return 0;
}
