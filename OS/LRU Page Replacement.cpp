#include <bits/stdc++.h>
using namespace std;

const long long mx=1e5;

int n;
int frame_size;
int pages[mx+5];
int last_use[mx+5];

void lru_page_replacement(void)
{
    vector<int>frames;
    int i,j,k,page_faults,index,optimal;

    page_faults = 0;
    for(i=1; i<=n; i++)
    {
        for(k=0; k<frames.size(); k++)
        {
            if(frames[k] == pages[i]) break;
        }

        if(k == frames.size())
        {
            if(frames.size() == frame_size)
            {
                optimal = 0;
                index = n + 1;

                for(k=0; k<frames.size(); k++)
                {
                    j = frames[k];
                    if(last_use[j] < index)
                    {
                        optimal = k;
                        index = last_use[j];
                    }
                }

                index = pages[i];
                last_use[index] = i;
                frames[optimal] = pages[i];
            }
            else
            {
                index = pages[i];
                last_use[index] = i;
                frames.push_back(pages[i]);
            }

            page_faults++;
            printf("Reference to page %d caused a page fault\n",pages[i]);
        }
        else
        {
            index = pages[i];
            last_use[index] = i;
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

    lru_page_replacement();

    return 0;
}
