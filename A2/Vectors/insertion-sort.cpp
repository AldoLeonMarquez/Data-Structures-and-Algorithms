//============================================================================
// Name        : insertion-sort.cpp
// Author      :
// Date        :
// Copyright   :
// Description : Implementation of insertion sort in C++
//============================================================================
#include "sort.h"
#include <vector>

void
InsertionSort::sort(vector<int>& A, int size)				// main entry point
{
	num_cmps = 0;
  /* Complete this function with the implementation of insertion sort algorithm
  Record number of comparisons in variable num_cmps of class Sort
  */
	for (int k = 1; k < size; k++)
	{
		int tmp = A[k];
		int j = k;
		for (; j > 0 && tmp < A[j - 1]; j--) {
			num_cmps++;
			A[j] = A[j - 1];
		}
		A[j] = tmp;
	}
}
