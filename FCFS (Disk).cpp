#include <bits/stdc++.h>
using namespace std;

const long long mx=1e5;

int n;
int head;
int positions[mx+5];

void fcfs(void)
{
    int i,movement;

    movement = 0;
    for(i=1; i<=n; i++)
    {
        movement += abs(head - positions[i]);
        head = positions[i];
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

    fcfs();

    return 0;
}
