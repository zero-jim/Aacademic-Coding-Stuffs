#include <stdio.h>
int main()
{
    long int n,temp,sum,range;
    scanf("%ld",&n);
    printf("Give the value of N: ");
    scanf("%ld",&range);
    sum=0;
    temp=n;
    range=temp;
    n=temp;
    for(n=n; n<=range; n++)
    {
        sum += n;
    }
    printf("\nSum of n to N=%ld is %ld",range,sum);
    return 0;
}
