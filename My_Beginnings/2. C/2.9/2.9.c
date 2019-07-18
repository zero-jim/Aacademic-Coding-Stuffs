#include <stdio.h>
int main()
{
    int year;
    printf("Input a year to find if it is leap year or not:\n\n");
    scanf("%d",&year);
    if((year%4==0)&&(year%100!=0)||(year%400==0))
        printf("\n\aIt's a leap year!!!!!!!!!");
    else
        printf("\n\aSorry it's not a leap year......");
    return 0;
}
