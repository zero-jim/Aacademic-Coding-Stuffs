#include <stdio.h>
#include <conio.h>
int main()
{
    float x,y,divides;
    printf("Enter the 1st number:");
    scanf("%f",&x);
    printf("Enter the 2nd number:");
    scanf("%f",&y);
    divides=x/y;
    printf("Summation of %.2f and %.2f is %.2f",x,y,divides);
    getch();
    return 0;
}
