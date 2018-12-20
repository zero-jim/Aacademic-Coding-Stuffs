#include <stdio.h>
#include <conio.h>
int main()
{
    int mark;
    printf("\nEnter your mark: ");
    scanf("%d",&mark);
    if((mark>=80)&&(mark<=100))
        printf("Congrats!!! You have got an A+");
        else if((mark>=75)&&(mark<=79))
            printf("You have got an A");
        else if((mark>=70)&&(mark<=74))
            printf("You have got an A-");
        else if((mark>=65)&&(mark<=69))
            printf("You have got an B+");
        else if((mark>=60)&&(mark<=64))
            printf("You have got an B");
        else if((mark>=55)&&(mark<=59))
            printf("You have got an B-");
        else if((mark>=50)&&(mark<=54))
            printf("You have got an C+");
        else if((mark>=45)&&(mark<=49))
            printf("You have got an C");
        else if((mark>=40)&&(mark<=44))
            printf("You have got an D");
        else if(mark<40)
            printf("Sorry you have FAILED");
    getch();
    return 0;
}
