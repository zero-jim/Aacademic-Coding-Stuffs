//Written by Iqbal Mahmud
#include <stdio.h>
#include <conio.h>
#include <ctype.h>
int main()
{
    char ch;
    printf("Enter a character: ");
    scanf("%c",&ch);
    if(isprint(ch))
        printf("The character is printable");
    else
        printf("The character is not printable");
    getch();
    return 0;
}
