#include <stdio.h>
int main()
{
    int num,div;
    printf("Enter your number: ");
    scanf("%d",&num);
    div=num/10;
    switch(div)
    {
    case 10:
    case 9:
    case 8:
        printf("Star Mark");
        break;
    case 6:
        printf("1st Division");
        break;
    case 5:
        printf("2nd Division");
        break;
    case 4:
        printf("3rd Division");
        break;
    default:
        printf("Fail");
        break;
    }
    return 0;
}
