// C++ Implementation for drawing line
#include <graphics.h>
#include <bits/stdc++.h>

int main()
{
    int gd = DETECT, gm;

    initgraph(&gd, &gm," ");

    // line for x1, y1, x2, y2
    int aa=100,bb=100,cc=200,dd=200;
    line(aa, bb, cc, dd);

    getch();
    closegraph();
    return 0;
}
