// Includes
#include <string.h>
#include <stdlib.h>

// Implements
#include "sortingFunctions.h"
#include "sortingUtils.h"

void bubbleSort(int* nums, int numsSize) 
{
  int i   = 0;
  int j   = 0;
  int tmp = 0;
  
  for (i = 0; i < numsSize; i++)
  {
      for (j = 0; j < numsSize - i - 1; j++)
      {
          if (nums[j] > nums[j+1])
          {
              tmp = nums[j+1];
              nums[j+1] = nums[j];
              nums[j] = tmp;
          }
      }  
  }
}

void selectionSort(int* nums, int numsSize) 
{
    int i   = 0;
    int j   = 0;
    int tmp   = 0;
    int min_index = 0;

    for (i = 0; i < numsSize; i++)
    {
        min_index=i;

        for (j = i; j < numsSize - 1; j++)
        {
            // Find the min from all unsorted part
            if (nums[j+1] < nums[min_index])
            {
                min_index = j+1;
            }
        }

        // Swap min value and put it in sorted part
        tmp = nums[i];
        nums[i] = nums[min_index];
        nums[min_index] = tmp;
    }
}


void splitArray(int* arr, int n, int** arr1, int** arr2, int* size1, int* size2) {
    
    // Calculate the midpoint of the array
    int mid = n / 2;

    // Allocate memory for the left and right arrays
    *arr1  = (int*)malloc(mid * sizeof(int));
    *arr2  = (int*)malloc((n - mid) * sizeof(int));
    
    // Copy elements to the left array
    memcpy(*arr1, arr, mid * sizeof(int));
    *size1 = mid;
    
    int i;
    
    // Copy elements to the right array
    memcpy(*arr2, arr + mid, (n - mid) * sizeof(int));
    *size2 = n - mid;
    
}

void merge(int* arr1, int size1, int* arr2, int size2, int* originalArray, int originalArrSize)
{
    int posArr1 = 0;
    int posArr2 = 0;
    int i  = 0;
    
    for (i = 0; i < originalArrSize; i++)
    {
        if((posArr1 < size1) && (posArr2 < size2))
        {
            if(arr1[posArr1] < arr2[posArr2])
            {
                originalArray[i] = arr1[posArr1];
                posArr1++;
            }
            else
            {
                originalArray[i] = arr2[posArr2];
                posArr2++;
            }
        }
        else
        {
            if (posArr1 >= size1)
            {
                originalArray[i] = arr2[posArr2];
                posArr2++;
            }
            
            else if (posArr2 >= size2)
            {
                originalArray[i] = arr1[posArr1];
                posArr1++;
            }
        }
    }
}


int* mergeSort(int* nums, int numsSize) 
{

    if (numsSize <=1)
    {
        return nums; 
    }
    else
    {
        int* arr1;
        int* arr2;
        int size1,size2;
        int i;
        
        splitArray(nums, numsSize, &arr1, &arr2, &size1,&size2);
        
        mergeSort(arr1, size1);
        mergeSort(arr2, size2);
        
        merge(arr1, size1, arr2, size2, nums, numsSize);
        return nums;
    }
}

void quickSort(int* nums, int numsSize, int startIdx, int endIdx) {
    
    // For a single number array, there is nothing to sort
    if ((endIdx - startIdx)  >= 1)
    {
       int arrayPos = startIdx;
       int lastSwappedPos = arrayPos - 1;
       int pivotValue = nums[endIdx];
        
        for (arrayPos = startIdx; arrayPos <= endIdx; arrayPos++)
        {
            if (nums[arrayPos] <= pivotValue)
            {
                lastSwappedPos++;

                if(lastSwappedPos < arrayPos)
                {
                    swapValues(nums, arrayPos, lastSwappedPos);
                }
            }
#ifdef DEBUG_ACTIVE            
            printArray(nums, numsSize);
#endif // DEBUG_ACTIVE
        }

        quickSort(nums, numsSize, startIdx, lastSwappedPos - 1); // endIdx = lastSwappedPos -1 because we don't want to include the pivot
        quickSort(nums, numsSize, lastSwappedPos + 1, endIdx);
        
    }
}

