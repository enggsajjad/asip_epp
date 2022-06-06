#ifndef COSY
	#include <stdio.h>
	#include <stdlib.h>
#endif

#define MAX 300


void merge(int array[], int arr1[], int half1, int arr2[], int half2)
{
 int p, p1, p2;

 p = 0;
 p1 = 0;
 p2 = 0;

 while(p1 < half1 && p2 < half2)
    {
     if(arr1[p1] < arr2[p2])
        array[p++] = arr1[p1++];
     else
        array[p++] = arr2[p2++];
    }

 while(p1 < half1)
    array[p++] = arr1[p1++];
 while(p2 <= half2)
    array[p++] = arr2[p2++];

}

void msort(int list[], int n)
{
 int i, half1, half2;
 int arr1[MAX/2+1];
 int arr2[MAX/2+1];

 if(n > 1)
   {
    half1 = n / 2;
    half2 = n - half1;

    for(i = 0; i < half1; i++)
       arr1[i] = list[i];
    for(i = 0; i < half2; i++)
       arr2[i] = list[half1 + i];

    msort(arr1, half1);
    msort(arr2, half2);
    merge(list, arr1, half1, arr2, half2);
   }
}


int main()
{ 
	int i, n;
 	int array[MAX];
 	n = MAX;
 
 	for (i=0; i<MAX; i++)
	{
		array[i] = MAX-i;
	}
	
 	msort(array, n);
 
	#ifndef COSY
 		printf(" Sorted list\n");
		for(i=0; i<MAX; i++)
		{
    			printf("%d ",array[i]);
		}
 		printf("\n");
	#endif

 	return 0;
}
