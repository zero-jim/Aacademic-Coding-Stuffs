#include<bits/stdc++.h>
using namespace std;

int main()
{
    string str;
    while(true)
    {
        cin>>str;
        regex e("(a|b)*abb");
        bool match = regex_match(str,e);
        cout<<(match?"Matched":"Not Matched")<<endl<<endl;
    }
    return 0;
}
/*ababb*/
