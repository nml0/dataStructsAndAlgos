#include <stdio.h>
#include <time.h>
#include <stdlib.h>

#include "sortingFunctions.h"
#include "sortingUtils.h"

#define ARRAY_SIZE 100000


int main()
{
    int randomNumbers[ARRAY_SIZE];
    int i;

    // Seed the random number generator
    srand(time(NULL));
    for (i = 0; i < ARRAY_SIZE; i++) {
        randomNumbers[i] = rand();
    }
    
    //quickSort(randomNumbers, ARRAY_SIZE, 0, ARRAY_SIZE - 1);
    mergeSort(randomNumbers, ARRAY_SIZE);

#ifdef DEBUG_ACTIVE    
    printArray(randomNumbers, ARRAY_SIZE);
#endif // DEBUG_ACTIVE 

    if (arraySortedOrNot(randomNumbers, ARRAY_SIZE))
        printf("Array was successfuly sorted!\n");
    else
        printf("Warning! Array was not sorted\n");
    
}
