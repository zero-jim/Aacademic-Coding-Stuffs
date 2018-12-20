#include <stdio.h>
#include <math.h>
int main()
{
    int x,y,a;
    printf("Denote the value of x: ");
    scanf("%d",&x);
    printf("Denote the value of y: ");
    scanf("%d",&y);
    a=pow(x,y);
    printf("(x^y)=%d",a);
    return 0;
}
