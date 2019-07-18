#include<bits/stdc++.h>
using namespace std;
string key[5]={"int" ,"cin", "cout" ,"for","main" };
int main()
{
    int i,j,k;
    string s,c;
    freopen("input.txt","r",stdin);
    freopen("output.txt","w",stdout);
    while(cin>>s)
    {
        j=0;
        c.clear();
        for(i=0;i<s.size();i++)
        {
            if(isalpha(s[i]))j++;
            else break;

        }
        c=s.substr(0,j);
        s.erase(s.begin(),s.begin()+j);
        for(i=0;i<5;i++)

        {
            if(c==key[i])break;

        }
        if(i<5)
        {
            cout<<c<<endl ;
        }



    }
    return 0;
}
