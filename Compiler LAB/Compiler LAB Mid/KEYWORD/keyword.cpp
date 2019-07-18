#include<bits/stdc++.h>
using namespace std;
string key[6]={"int","main","for","float","cin","cout"};


int main()
{
    int i,j;
    string s,c;
    freopen("input.txt","r",stdin);
    freopen("output.txt","w",stdout);
    while(cin>>s)
    {
        c.clear();
        j=0;
        for(i=0;i<s.size();i++)
        {
            if(isalpha(s[i]))j++;
            else break;

        }
        c=s.substr(0,j);
        s.erase(s.begin());
        for(i=0;i<6;i++)
        {
            if(c==key[i])break;
        }
        if(i<6)
            cout<<c<<endl;
    }
    return 0;

}
