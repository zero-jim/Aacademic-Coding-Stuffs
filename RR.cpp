#include <bits/stdc++.h>
using namespace std;

const long long mx=1e5;

int n;
int quantum_time;
int process_id[mx+5];
int burst_time[mx+5];
int arrival_time[mx+5];
int waiting_time[mx+5];
int finishing_time[mx+5];
int remaining_time[mx+5];
int turn_around_time[mx+5];

void find_waiting_and_turn_around_time(void)
{
    int i,complete,current_time,change;

    for(i=1; i<=n; i++)
    {
        remaining_time[i] = burst_time[i];
    }

    complete = 0;
    current_time = 0;

    while(complete < n)
    {
        change = 0;
        for(i=1; i<=n; i++)
        {
            if(arrival_time[i] <= current_time && remaining_time[i] > 0)
            {
                if(remaining_time[i] <= quantum_time)
                {
                    complete++;
                    current_time += remaining_time[i];

                    finishing_time[i] = current_time;
                    turn_around_time[i] = finishing_time[i] - arrival_time[i];
                    waiting_time[i] = finishing_time[i] - arrival_time[i] - burst_time[i];

                    remaining_time[i] = 0;
                }
                else
                {
                    current_time += quantum_time;
                    remaining_time[i] -= quantum_time;
                }
                change++;
            }
        }
        if(change == 0)
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

    printf("Quantum Time: ");
    cin>>quantum_time;

    printf("Process Ids:\n");
    for(i=1; i<=n; i++) cin>>process_id[i];

    printf("Process Burst Times:\n");
    for(i=1; i<=n; i++) cin>>burst_time[i];

    printf("Process Arrival Times:\n");
    for(i=1; i<=n; i++) cin>>arrival_time[i];

    find_average_times();

    return 0;
}
