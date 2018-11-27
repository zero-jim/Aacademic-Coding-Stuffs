#include <bits/stdc++.h>
using namespace std;

const long long mx=1e5;

int blocks;
int processes;
bool allocated[mx+5];
int block_size[mx+5];
int allocation[mx+5];
int process_size[mx+5];

void first_fit(void)
{
    int i,k;

    for(i=1; i<=blocks; i++)
    {
        allocated[i] = false;
    }
    for(i=1; i<=processes; i++)
    {
        allocation[i] = 0;
    }

    for(i=1; i<=processes; i++)
    {
        for(k=1; k<=blocks; k++)
        {
            if(block_size[k] >= process_size[i] && !allocated[k])
            {
                allocation[i] = k;
                allocated[k] = true;
                break;
            }
        }
    }

    printf("First Fit Memory Allocation:\n");
    for(i=1; i<=processes; i++)
    {
        if(allocation[i] > 0) printf("Process %d is allocated block %d\n",i,allocation[i]);
        else printf("Process %d is not allocated any block\n",i);
    }
    printf("\n");
    return;
}

void best_fit(void)
{
    int i,k,index,best;

    for(i=1; i<=blocks; i++)
    {
        allocated[i] = false;
    }
    for(i=1; i<=processes; i++)
    {
        allocation[i] = 0;
    }

    for(i=1; i<=processes; i++)
    {
        index = 0;
        best = INT_MAX;
        for(k=1; k<=blocks; k++)
        {
            if(block_size[k] < best && block_size[k] >= process_size[i] && !allocated[k])
            {
                index = k;
                allocated[k] = true;
                best = block_size[k];
            }
        }
        allocation[i] = index;
    }

    printf("Best Fit Memory Allocation:\n");
    for(i=1; i<=processes; i++)
    {
        if(allocation[i] > 0) printf("Process %d is allocated block %d\n",i,allocation[i]);
        else printf("Process %d is not allocated any block\n",i);
    }
    printf("\n");
    return;
}

void worst_fit(void)
{
    int i,k,index,worst;

    for(i=1; i<=blocks; i++)
    {
        allocated[i] = false;
    }
    for(i=1; i<=processes; i++)
    {
        allocation[i] = 0;
    }

    for(i=1; i<=processes; i++)
    {
        index = 0;
        worst = INT_MIN;
        for(k=1; k<=blocks; k++)
        {
            if(block_size[k] > worst && block_size[k] >= process_size[i] && !allocated[k])
            {
                index = k;
                allocated[k] = true;
                worst = block_size[k];
            }
        }
        allocation[i] = index;
    }

    printf("Worst Fit Memory Allocation:\n");
    for(i=1; i<=processes; i++)
    {
        if(allocation[i] > 0) printf("Process %d is allocated block %d\n",i,allocation[i]);
        else printf("Process %d is not allocated any block\n",i);
    }
    printf("\n");
    return;
}

int main()
{
    int i;

    printf("Number of Blocks: ");
    cin>>blocks;

    printf("Block Sizes:\n");
    for(i=1; i<=blocks; i++) cin>>block_size[i];

    printf("Number of Processes: ");
    cin>>processes;

    printf("Process Sizes:\n");
    for(i=1; i<=processes; i++) cin>>process_size[i];

    best_fit();
    first_fit();
    worst_fit();

    return 0;
}
