//============================================================================
// Name        : bubble-sort.cpp
// Author      :
// Date        :
// Copyright   :
// Description : Implementation of bubble sort in C++
//============================================================================

#include "sort.h"
#include <iostream>
#include <vector>
void BubbleSort::sort(vector<int>& A, int size){
  num_cmps = 0; // main entry point
  /* Complete this function with the implementation of bubble sort algorithm
     Record number of comparisons in variable num_cmps of class Sort
  */
  for(int i=1;i<size;i++){
	  bool done= false;
	  for(int k=0;k<size-i;k++){
		  if (num_cmps++,A[k] > A[k+1]){
			  int current = A[k];
			  A[k] = A[k+1];
			  A[k+1] = current;
			  done = true;
			  }
			}
      if(!done){
      break;
		}
	}

}
