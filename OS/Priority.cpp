#include <bits/stdc++.h>
using namespace std;

const long long mx=1e5;

struct process
{
    int priority;
    int process_id;
    int burst_time;
    int arrival_time;
    int finishing_time;
};

bool operator<(process A, process B)
{
    if(A.priority < B.priority)
    {
        return true;
    }
    if(A.priority == B.priority)
    {
        return A.arrival_time < B.arrival_time;
    }
    return false;
}

int n;
int waiting_time[mx+5];
process processes[mx+5];
int turn_around_time[mx+5];

void find_waiting_and_turn_around_time(void)
{
    int i;

    sort(processes+1, processes+n+1);

    for(i=1; i<=n; i++)
    {
        processes[i].finishing_time = processes[i-1].finishing_time + processes[i].burst_time;

        turn_around_time[i] = processes[i].finishing_time - processes[i].arrival_time;
        waiting_time[i] = processes[i].finishing_time - processes[i].arrival_time - processes[i].burst_time;
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
    for(i=1; i<=n; i++) cin>>processes[i].process_id;

    printf("Process Burst Times:\n");
    for(i=1; i<=n; i++) cin>>processes[i].burst_time;

    printf("Process Arrival Times:\n");
    for(i=1; i<=n; i++) cin>>processes[i].arrival_time;

    printf("Process Priorities:\n");
    for(i=1; i<=n; i++) cin>>processes[i].priority;

    find_average_times();

    return 0;
}
