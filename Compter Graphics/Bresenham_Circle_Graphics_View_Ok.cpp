#include <iostream>
#include <graphics.h>
using namespace std;
void circlebres(float x1,float y1,float r)
{
	float x,y,p;
	x=0;
	y=r;
	p=3-(2*r);
	while(x<=y)
	{
		putpixel(x1+x,y1+y,WHITE);
		putpixel(x1-x,y1+y,WHITE);
		putpixel(x1+x,y1-y,WHITE);
		putpixel(x1-x,y1-y,WHITE);
		putpixel(x1+y,y1+x,WHITE);
		putpixel(x1+y,y1-x,WHITE);
		putpixel(x1-y,y1+x,WHITE);
		putpixel(x1-y,y1-x,WHITE);
		x=x+1;
		if(p<0)
		{
			p=p+4*(x)+6;
		}
		else
		{
			p=p+4*(x-y)+10;
			y=y-1;



 		}
		delay(20);

 	}
}
main()
{
	float x1,y1,r;
	int gd=DETECT,gm;
	initgraph(&gd,&gm,"C:\\Tc\\BGI");
	cout<<"Enter the starting co-ordinates of a center:";
	cin>>x1>>y1;
	cout<<"Enter the value of radius:";
	cin>>r;
	circlebres(x1,y1,r);
	getch();
	closegraph();
}
