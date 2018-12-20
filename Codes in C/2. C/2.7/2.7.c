#include <stdio.h>
#include <ctype.h>
int main()
{
    char c;
    printf("Enter a character to see if it is alpha numeric or not: ");
    scanf("%c",&c);
    if(isalnum(c))
        printf("The character is alpha numeric");
    else
        printf("The character is not alpha numeric");
    return 0;
}
