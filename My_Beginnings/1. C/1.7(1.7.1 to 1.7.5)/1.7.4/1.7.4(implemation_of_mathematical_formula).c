#include <stdio.h>
#include <conio.h>
#include <math.h>
int main()
{
    float pi,r,volume;
    pi=3.1416;
    printf("Enter the radius: ");
    scanf("%f",&r);
    volume=(4/3)*pi*r*r*r;
    printf("\n\nThe volume of the object is: %.2f",volume);
    getch();
    return 0;
}

