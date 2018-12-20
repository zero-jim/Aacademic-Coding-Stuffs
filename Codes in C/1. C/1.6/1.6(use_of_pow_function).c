#include <stdio.h>
#include <conio.h>
#include <math.h>
int main()
{
    double a,b,c;
    printf("Enter a number: ");
    scanf("%lf",&a);
    printf("Enter another number: ");
    scanf("%lf",&b);
    c=pow(a,b);
    printf("%.2lf to the power %.2lf = %G",a,b,c);
    getch();
    return 0;
}
