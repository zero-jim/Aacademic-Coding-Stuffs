#include<bits/stdc++.h>
using namespace std;
string key[32]={"int", "main" ,"for" ,"cin", "cout"};
int main()
{
    int i,j;
    string s,c;
    freopen("input.txt","r",stdin);
    freopen("output.txt","w",stdout);
    while(cin>>s)
    {
        while(1)
        {
            if(s.empty())break;
            j=0;
            c.clear();
            while(1)
            {
                if(isalpha(s[0]))break;
                if(s[0]=='_')break;
                if(s.empty())break;
                s.erase(s.begin());
            }
            if(s.empty())continue;
            for(i=0;i<s.size();i++)
            {
                if(isalpha(s[i])||s[i]=='_'||isdigit(s[i]))
                    j++;
                else break;
            }
            c=s.substr(0,j);
            s.erase(s.begin(),s.begin()+j);
            for(i=0;i<32;i++)


                {

                    if(c==key[i]) break;
                }
            if(i>=32)
                cout<<c<<endl;

        }
    }
    return 0;
}
