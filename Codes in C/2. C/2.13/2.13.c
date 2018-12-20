#include <stdio.h>
int main()
{
    long long int n,m,i;
    m=1;
    printf("Enter the value of n: ");
    scanf("%lld",&n);
    if(n>1)
    {
        for(i=n; i>1; i--)
        {
            m*=i;
        }
        printf("%lld!= %lld",n,m);
    }
    if((n>=0)&&(n<=1))
        printf("1");
    if(n<0)
        printf("The factorial does not exist");
    return 0;
}
