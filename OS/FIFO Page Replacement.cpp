#include <bits/stdc++.h>
using namespace std;

const long long mx=1e5;

int n;
int frame_size;
int pages[mx+5];

void fifo_page_replacement(void)
{
    vector<int>frames;
    int i,k,page_faults;

    page_faults = 0;
    for(i=1; i<=n; i++)
    {
        for(k=0; k<frames.size(); k++)
        {
            if(frames[k] == pages[i]) break;
        }

        if(k == frames.size())
        {
            page_faults++;
            frames.push_back(pages[i]);
            if(frames.size() > frame_size) frames.erase(frames.begin());

            printf("Reference to page %d caused a page fault\n",pages[i]);
        }
        else
        {
            printf("Reference to page %d did not cause a page fault\n",pages[i]);
        }
    }
    printf("\nTotal Page Faults: %d\n",page_faults);
    return;
}

int main()
{
    int i;

    printf("Number of Frames: ");
    cin>>frame_size;

    printf("Page Reference Stream Length: ");
    cin>>n;

    printf("Page Reference Stream:\n");
    for(i=1; i<=n; i++) cin>>pages[i];

    fifo_page_replacement();

    return 0;
}
