#include<bits/stdc++.h>
using namespace std;
#define max 5
int ara[max];
int main()
{
    int x;
    for(int i=1; i<=max; i++)
    {
        cin>>x;
        ara[x]++;
    }
    for(int i=0; i<max; i++)
    {
        for(int j=0; j<ara[i]; j++)
        {
            printf("%d ", i);
        }
    }
    return 0;
}
