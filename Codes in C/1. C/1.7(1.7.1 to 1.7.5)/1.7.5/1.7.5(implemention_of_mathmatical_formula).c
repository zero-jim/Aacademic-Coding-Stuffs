#include <stdio.h>
#include <conio.h>
#include <math.h>
int main()
{
    float a,b,c,S,A;
    printf("Enter the three sides of the triangle with a space in between: ");
    scanf("%f %f %f",&a,&b,&c);
    S=(0.5)*(a+b+c);
    A=sqrt(S*(S-a)*(S-b)*(S-c));
    printf("\n\nThe area of the triangle is: %.2f",A);
    getch();
    return 0;
}
