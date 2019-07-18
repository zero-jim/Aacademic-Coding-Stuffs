#include <stdio.h>
#include <conio.h>
int main()
{
    int x,y;
    printf("Enter a number to find if it is even or odd: ");
    scanf("%d",&x);
    y=x%2;
    if(y==0)
        printf("\n\nThe number is even");
    else
        printf("\n\nThe number is odd");
    getch();
    return 0;
}
