//Written by Iqbal Mahmud
#include <stdio.h>
#include <conio.h>
#include <ctype.h>
int main()
{
    char ch;
    printf("Enter a character: ");
    scanf("%c",&ch);
    if(isupper(ch))
        printf("The character is uppercase");
    else
        printf("The character is not uppercase");
    getch();
    return 0;
}
