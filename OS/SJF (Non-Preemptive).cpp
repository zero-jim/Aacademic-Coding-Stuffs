#include <bits/stdc++.h>
using namespace std;

const long long mx=1e5;

int n;
int process_id[mx+5];
int burst_time[mx+5];
int arrival_time[mx+5];
int waiting_time[mx+5];
int finishing_time[mx+5];
int turn_around_time[mx+5];

void find_waiting_and_turn_around_time(void)
{
    int i,complete,current_time,index,minimum;

    for(i=1; i<=n; i++)
    {
        finishing_time[i] = 0;
    }

    index = 0;
    complete = 0;
    current_time = 0;
    minimum = INT_MAX;

    while(complete < n)
    {
        for(i=1; i<=n; i++)
        {
            if(arrival_time[i] <= current_time)
            {
                if(burst_time[i] < minimum && finishing_time[i] == 0)
                {
                    index = i;
                    minimum = burst_time[i];
                }
            }
        }

        if(index > 0)
        {
            complete++;
            minimum = INT_MAX;
            current_time += burst_time[index];
            finishing_time[index] = current_time;
            turn_around_time[index] = finishing_time[index] - arrival_time[index];
            waiting_time[index] = finishing_time[index] - arrival_time[index] - burst_time[index];

            index = 0;
        }
        else
        {
            current_time++;
        }
    }

    return;
}

void find_average_times(void)
{
    int i;
    double total_waiting_time, total_turn_around_time, N;

    find_waiting_and_turn_around_time();

    N = n;
    total_waiting_time = 0.0;
    total_turn_around_time = 0.0;
    for(i=1; i<=n; i++)
    {
        total_waiting_time += waiting_time[i];
        total_turn_around_time += turn_around_time[i];
    }
    printf("Average Waiting Time: %.02f\n", (total_waiting_time/N));
    printf("Average Turn Around Time: %.02f\n", (total_turn_around_time/N));
    return;
}

int main()
{
    int i;
    printf("Number of Processes: ");
    cin>>n;

    printf("Process Ids:\n");
    for(i=1; i<=n; i++) cin>>process_id[i];

    printf("Process Burst Times:\n");
    for(i=1; i<=n; i++) cin>>burst_time[i];

    printf("Process Arrival Times:\n");
    for(i=1; i<=n; i++) cin>>arrival_time[i];

    find_average_times();

    return 0;
}
