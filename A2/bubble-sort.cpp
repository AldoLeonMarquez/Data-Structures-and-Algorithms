//============================================================================
// Name        : bubble-sort.cpp
// Author      : 
// Date        :
// Copyright   : 
// Description : Implementation of bubble sort in C++
//============================================================================

#include "sort.h"
#include <iostream>
void BubbleSort::sort(int A[], int size){  // main entry point
  /* Complete this function with the implementation of bubble sort algorithm 
     Record number of comparisons in variable num_cmps of class Sort
  */
  int current =0 ;
  bool done = false;
  for(int i=0;i<size;i++){
	  done= false; 
	  for(int k=0;k<size-i;k++){
		 
		  if (A[k] > A[k+1]){
			  num_cmps++;
     		  int current = A[k];
			  A[k] = A[k+1];
			  A[k+1] = current;
			  done == true;
			}
		  if(done==true){
			break;
			} 
		}
	}
 
}
