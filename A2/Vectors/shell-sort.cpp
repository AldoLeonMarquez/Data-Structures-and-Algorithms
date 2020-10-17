//============================================================================
// Name        : shell-sort.cpp
// Author      :
// Date        :
// Copyright   :
// Description : Implementation of shell sort in C++
//============================================================================
#include "sort.h"
#include <iostream>
#include <vector>

void
ShellSort::sort(vector<int>& A, int size)
{
	num_cmps = 0;
  /* Complete this function with the implementation of shell sort algorithm
  Record number of comparisons in variable num_cmps of class Sort
  */

	for (int gap = size / 2; gap > 0; gap /= 2)
	{
		// Do a gapped insertion sort for this gap size.
		// The first gap elements a[0..gap-1] are already in gapped order
		// keep adding one more element until the entire array is
		// gap sorted
		for (int i = gap; i < size; i += 1)
		{
			// add a[i] to the elements that have been gap sorted
			// save a[i] in temp and make a hole at position i
			int temp = A[i];

			// shift earlier gap-sorted elements up until the correct
			// location for a[i] is found
			int j;
			for (j = i; j >= gap && A[j - gap] > temp; j -= gap){
				num_cmps++;
				A[j] = A[j - gap];
			}
			//  put temp (the original a[i]) in its correct location
			A[j] = temp;
		}
	}

}
