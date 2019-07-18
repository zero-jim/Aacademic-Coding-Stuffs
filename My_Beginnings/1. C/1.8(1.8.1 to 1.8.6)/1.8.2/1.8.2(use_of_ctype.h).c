//Written by Iqbal Mahmud
#include <stdio.h>
#include <conio.h>
#include <ctype.h>
int main()
{
    char ch;
    printf("Enter a character: ");
    scanf("%c",&ch);
    if(isdigit(ch))
        printf("The character is a digit");
    else
        printf("The character is not a digit");
    getch();
    return 0;
}
