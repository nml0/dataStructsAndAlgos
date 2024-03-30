// Uses
#include <stdio.h> 

// Implements
#include "sortingUtils.h"

void printArray(int* arr, int n)
{
    int i;
    
    printf("----\n");
    
    for (i = 0; i < n; i++)
    {
        printf("%d\n", arr[i]);
    }
    printf("----\n");
    
}

void swapValues(int* nums, int posA, int posB)
{
    int tmp;

    tmp = nums[posA]; 
    nums[posA] = nums[posB]; 
    nums[posB] = tmp; 
}

int arraySortedOrNot(int arr[], int n)
{
    // Array has one or no element or the
    // rest are already checked and approved.
    if (n == 1 || n == 0)
        return 1;
 
    // Unsorted pair found (Equal values allowed)
    if (arr[n - 1] < arr[n - 2])
        return 0;
 
    // Last pair was sorted
    // Keep on checking
    return arraySortedOrNot(arr, n - 1);
}