#include <stdio.h>
int main()
{
    int p,q,n;
    scanf("%d",&n);
    printf("\n");
    for(p=1;p<=n;p++)
    {
        for(q=0;q<=(n-p);q++)
            printf(" ");
        for(q=1;q<=p;q++)
            printf("*");
        for(q=1;q<p;q++)
            printf("*");
        printf("\n");
    }
    return 0;
}
