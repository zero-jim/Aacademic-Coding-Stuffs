#include <stdio.h>
int main()
{
    int a,b,c;
    scanf("%d %d %d",&a,&b,&c);
    if((a>=b)&&(a>=c))
        printf("\n\n%d\n",a);
    else if((b>c)&&(b>a))
        printf("\n\n%d\n",b);
    else
        printf("\n\n%d\n",c);
    return 0;
}
