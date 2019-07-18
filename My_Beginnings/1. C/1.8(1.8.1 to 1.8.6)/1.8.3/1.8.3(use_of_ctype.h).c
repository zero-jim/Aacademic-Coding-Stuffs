//Written by Iqbal Mahmud
#include <stdio.h>
#include <conio.h>
#include <ctype.h>
int main()
{
    char ch;
    printf("Enter a character: ");
    scanf("%c",&ch);
    if(islower(ch))
        printf("The character is lowercase");
    else
        printf("The character is not lowercase");
    getch();
    return 0;
}
