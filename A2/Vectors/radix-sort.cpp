//============================================================================
// Name        : radix-sort.cpp
// Author      :
// Date        :
// Copyright   :
// Description : Implementation of radix sort in C++
//============================================================================

#include "sort.h"
#include <iostream>
#include <vector>
void
RadixSort::sort(vector<int>& A, int size)
{
vector<unsigned int> Ashift(size);
int base = 10;
int d = 1;
vector<int> C(base);
vector<unsigned int> B(size);
for(int i = 0; i < size; ++i){
  Ashift[i] = A[i] + 32767;
}
while(d < 65535){
  int j;
  int k;
  for(j = 0; j < base; ++j){
    C[j] = 0;
  }
  for(j = 0; j < size; ++j){
    C[(Ashift[j] / d) % (base)]++;
  }
  for(j = 1; j < base; ++j){
    C[j] += C[j-1];
  }
  for(k = size-1; k >= 0; --k){
    j = C[(Ashift[k] / d) % (base)]-1;
    C[(Ashift[k] / d) % (base)]--;
    B[j] = Ashift[k];
  }
  d *= 10;
  Ashift = B;
}
 for(int i = 0; i < size; ++i){
   A[i] = Ashift[i]-32767;
 }
}
