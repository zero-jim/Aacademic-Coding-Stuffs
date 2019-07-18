#include <bits/stdc++.h>
using namespace std;

template <class T> inline T bigmod(T b, T p, T m)
{
    T ret;
    if(p==0) return 1;
    if(p&1)
    {
        ret=(bigmod(b,p/2,m)%m);
        return ((b%m)*ret*ret)%m;
    }
    else
    {
        ret=(bigmod(b,p/2,m)%m);
        return (ret*ret)%m;
    }
}
/* template functions */

typedef long long LL;
typedef unsigned long long ULL;
typedef pair<int, int>pii;
typedef pair<LL, LL>pll;
typedef vector<int>vi;
typedef vector<LL>vll;
typedef vector<pii>vpii;
typedef vector<pll>vpll;
/* type definition */

int dx4[]= {1,-1,0,0};
int dy4[]= {0,0,1,-1};
int dx6[]= {0,0,1,-1,0,0};
int dy6[]= {1,-1,0,0,0,0};
int dz6[]= {0,0,0,0,1,-1};
int dx8[]= {1,-1,0,0,-1,1,-1,1};
int dy8[]= {0,0,1,-1,1,1,-1,-1};
int dkx8[]= {-1,1,-1,1,-2,-2,2,2};
int dky8[]= {2,2,-2,-2,1,-1,1,-1};
/* direction array */

int tc=1;
const double eps=1e-9;
const double pi=acos(-1.0);
const long long int mx=1e5;
const long long int mod=1e9+7;
/* global declaration */

int a[mx+5],n;

int partition(int l, int r)
{
    int i,j;
    i=l-1;
    for(j=l; j<r; j++)
    {
        if(a[j]<=a[r]) swap(a[++i],a[j]);
    }
    swap(a[++i],a[r]);
    return i;
}

void quick_sort(int l, int r)
{
    if(l<r)
    {
        int m=partition(l,r);
        quick_sort(l,m-1);
        quick_sort(m+1,r);
    }
    return;
}

int main()
{
    int i;
    while(cin>>n)
    {
        for(i=1; i<=n; i++)
            scanf("%d",&a[i]);
        quick_sort(1,n);
        for(i=1; i<=n; i++)
            printf("%d ",a[i]);
        printf("\n");
    }
    return 0;
}
