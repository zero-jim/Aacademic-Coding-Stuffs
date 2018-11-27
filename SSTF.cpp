#include <bits/stdc++.h>
using namespace std;

const long long mx=1e5;

int n;
int head;
int done[mx+5];
int positions[mx+5];

void sstf(void)
{
    int i,k,movement,shortest,index;

    for(i=1; i<=n; i++)
    {
        done[i] = false;
    }

    movement = 0;
    for(i=1; i<=n; i++)
    {
        index = 0;
        shortest = INT_MAX;

        for(k=1; k<=n; k++)
        {
            if(abs(head - positions[k]) < shortest && !done[k])
            {
                index = k;
                shortest = abs(head - positions[k]);
            }
        }

        done[index] = true;
        movement += shortest;
        head = positions[index];
    }
    printf("Total Head Movement %d Cylinders\n",movement);
    return;
}

int main()
{
    int i;

    printf("Initial Head Position: ");
    cin>>head;

    printf("Queue Size: ");
    cin>>n;

    printf("Queue:\n");
    for(i=1; i<=n; i++) cin>>positions[i];

    sstf();

    return 0;
}
