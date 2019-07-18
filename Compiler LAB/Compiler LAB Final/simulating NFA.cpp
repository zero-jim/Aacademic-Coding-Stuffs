#include<bits/stdc++.h>
#define MAX 1000
using namespace std;

int main()
{
    int states, symbols, symdir[20], final_states, mark[20], mat[20][20][20],i, j, k;
    char str1[MAX];
    int curr[20], t[20],ind, ind1,l1;
    for(i=0; i<20; i++)
        for(j=0;j<20;j++)
            for(k=0;k<20;k++)
                mat[i][j][k]=-1;
    printf("Enter the number of states : ");
    cin>>states;
    printf("Enter the number of symbols : ");
    cin>>symbols;
    printf("Enter the symbols : \n");
    for(i=0;i<symbols;i++)
    {
        printf("Enter the symbol number %d : ", i);
        cin>>symdir[i];
    }
    printf("Enter the number of final states : ");
    cin>>final_states;
    printf("Enter the number of the states which are final : ");
    for(i=0;i<final_states;i++)
    {
        int temp;
        cin>>temp;
        mark[temp]=1;
    }
    printf("Define the relations for the states and symbols : \n");
    for(i=0;i<states;i++)
    {
        for(j=0;j<symbols;j++)
        {
            int ntemp;
            printf("Enter the number of relations for Q(%d) -> %d : ", i, symdir[j]);
            cin>>ntemp;
            for(k=0;k<ntemp;k++)
            {
                printf("Enter the relation number %d for Q(%d) -> %d : ", k, i, symdir[j]);
                cin>>mat[i][symdir[j]][k];
            }
        }
    }
    int cases;
    printf("Enter the number of strings to be tested : ");
    cin>>cases;
    for(k=0;k<cases;k++)
    {
        printf("Enter the string to be tested : ");
        cin>> str1;
        curr[0]=0;
        ind=1;
        int limit=strlen(str1);
        for(i=0;i<limit;i++)
        {
            int ele=(int)(str1[i]-'0');
            ind1=0;
            for(l1=0;l1<ind;l1++)
            {
                j=0;
                while(mat[curr[l1]][ele][j]!=-1)
                {
                    t[ind1++]=mat[curr[l1]][ele][j];
                    j++;
                }
            }
            for(l1=0;l1<ind1;l1++)
            {
                curr[l1]=t[l1];
            }

            ind=ind1;
        }
        int flag=0;
        for(i=0;i<ind;i++)
        {
            if(mark[curr[i]]==1)
            {
                flag=1;
                break;
            }
        }
        printf("The entered string is ");
        if(flag==1)
            printf("Accepted\n");
        else
            printf("Rejected\n");
    }
    return 0;
}
