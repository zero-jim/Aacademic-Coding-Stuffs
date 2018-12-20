#include <stdio.h>
#include <conio.h>
int main()
{
    float x,y,sum;
    printf("Enter the 1st number:");
    scanf("%f",&x);
    printf("Enter the 2nd number:");
    scanf("%f",&y);
    sum=x+y;
    printf("Summation of %.2f and %.2f is %.2f",x,y,sum);
    getch();
    return 0;
}
