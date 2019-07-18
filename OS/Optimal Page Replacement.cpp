#include <bits/stdc++.h>
using namespace std;

const long long mx=1e5;

int n;
int frame_size;
int pages[mx+5];

void optimal_page_replacement(void)
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
                index = 0;
                optimal = 0;

                for(k=0; k<frames.size(); k++)
                {
                    for(j=i+1; j<=n; j++)
                    {
                        if(pages[j] == frames[k])
                        {
                            if(j > index)
                            {
                                index = j;
                                optimal = k;
                            }
                            break;
                        }
                    }
                    if(j > n)
                    {
                        optimal = k;
                        index = n + 1;
                        break;
                    }
                }

                frames[optimal] = pages[i];
            }
            else
            {
                frames.push_back(pages[i]);
            }

            page_faults++;
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

    optimal_page_replacement();

    return 0;
}
