
#include<bits/stdc++.h>;
using namespace std;
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
            j=0;
            c.clear();
            while(1)
            {
                if(s.empty())break;
                if(s[0]=='-'||isdigit(s[0]))break;
                s.erase(s.begin());
            }
            if(s.empty()) continue;
            if(s[0]=='-')
            {
                c+=s[0];
                s.erase(s.begin());
            }
            for(i=0;i<s.size();i++)
            {
                if(isdigit(s[i]))j++;
                else break;
            }
            c+=s.substr(0,j);
            s.erase(s.begin(),s.begin()+j);
            cout<<c<<endl;

        }

    }
    return 0;
}
