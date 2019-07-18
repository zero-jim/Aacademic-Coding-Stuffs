#include <stdio.h>
#include <conio.h>
int main()
{
    int a,b,c;
    printf("Enter the 1st value: ");
    scanf("%d",&a);
    printf("Enter the 2nd value: ");
    scanf("%d",&b);
    printf("Enter the 3rd value: ");
    scanf("%d",&c);
    if(a>b)
    {
        if(a>c)
            printf("\n\nThe largest number is %d",a);
        else
            printf("\n\nThe largest number is %d",c);
    }
    else
    {
        if(b>c)
            printf("\n\nThe largest number is %d",b);
        else
            printf("\n\nThe largest number is %d",c);
    }
    getch();
    return 0;
}
