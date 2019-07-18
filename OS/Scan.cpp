#include <bits/stdc++.h>
using namespace std;

const long long mx=1e5;

int n;
int head;
int direction;
int done[mx+5];
int positions[mx+5];

void scan(void)
{
    int i,movement,best,index,complete;

    for(i=1; i<=n; i++)
    {
        done[i] = false;
    }

    movement = 0;
    complete = 0;
    while(complete < n)
    {
        index = 0;
        if(direction == 0) best = INT_MIN;
        if(direction == 1) best = INT_MAX;

        for(i=1; i<=n; i++)
        {
            if(!done[i])
            {
                if(direction == 0 && positions[i] > best && positions[i] < head)
                {
                    index = i;
                    best = positions[i];
                }
                if(direction == 1 && positions[i] < best && positions[i] > head)
                {
                    index = i;
                    best = positions[i];
                }
            }
        }

        if(index > 0)
        {
            complete++;
            done[index] = true;
            movement += abs(head - best);
            head = positions[index];
        }
        else
        {
            direction = 1 - direction;
        }
    }
    printf("Total Head Movement %d Cylinders\n",movement);
    return;
}

int main()
{
    int i;

    printf("Initial Head Position: ");
    cin>>head;

    printf("Initial Direction [0/1]: ");
    cin>>direction;

    printf("Queue Size: ");
    cin>>n;

    printf("Queue:\n");
    for(i=1; i<=n; i++) cin>>positions[i];

    scan();

    return 0;
}
