#include <stdio.h>
#include <conio.h>
#include <math.h>
int main()
{
    float pi,r,x;
    pi=3.1416;
    printf("Enter the radius of circle: ");
    scanf("%f",&r);
    x=2*pi*r;
    printf("\n\nThe of the circle is: %.2f",x);
    getch();
    return 0;
}
