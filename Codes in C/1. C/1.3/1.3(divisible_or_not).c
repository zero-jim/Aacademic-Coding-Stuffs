#include <stdio.h>
#include <conio.h>
int main()
{
    int x,y;
    printf("Enter a number to find if it is divisible by 3 or not: ");
    scanf("%d",&x);
    y=x%3;
    if(y==0)
        printf("\n\nThe number is divisible");
    else
        printf("\n\nThe number is not divisible");
    getch();
    return 0;
}
