#include <stdio.h>
#include <conio.h>
#include <math.h>
int main()
{
    float r,area;
    printf("Enter the radius of your circle: ");
    scanf("%f",&r);
    area=3.1416*r*r;
    printf("The area of the circle is: %.2f",area);
    getch();
    return 0;
}
