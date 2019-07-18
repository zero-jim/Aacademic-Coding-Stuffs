//Written by Iqbal Mahmud
#include <stdio.h>
#include <conio.h>
#include <ctype.h>
int main()
{
    char ch;
    printf("Enter a character: ");
    scanf("%c",&ch);
    if(ispunct(ch))
        printf("The character is a punctuator");
    else
        printf("The character is not a punctuator");
    getch();
    return 0;
}
