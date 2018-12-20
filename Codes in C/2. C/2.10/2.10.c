#include <stdio.h>
int main()
{
    char ch;
    printf("Enter a character: ");
    ch=getchar();
    switch(ch)
    {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
        printf("Your choice is a vowel");
        break;
    default :
        printf("Your choice is not a vowel");
        break;
    }
    return 0;
}
