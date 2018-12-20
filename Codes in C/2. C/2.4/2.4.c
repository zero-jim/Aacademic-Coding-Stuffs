#include <stdio.h>
#define pi 3.1416
int main()
{
    float r, area;
    printf("Give the radius of the circle: ");
    scanf("%f",&r);
    area=(pi*r*r);
    printf("The area of the circle is: %.2f",area);
    return 0;
}
