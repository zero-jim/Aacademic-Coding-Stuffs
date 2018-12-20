#include <stdio.h>
int main()
{
    int x;
    printf("Enter a value to see if it is even or odd: ");
    scanf("%d",&x);
    if(x%2==0)
        printf("The number is even");
    else
        printf("The number is odd");
    return 0;
}
