/* 
Implementation of the clas My_matrix
*/

#include <iostream>
#include <fstream>
#include "My_matrix.h"
#include <stdexcept>
#include <stdlib.h> 

template <typename T>
My_matrix<T>::My_matrix()
{
  // add your code here
  n = 0;
  m = 0;
  ptr = nullptr;
  }  
 
template <typename T>
void My_matrix<T>::allocate_memory()
{
  // add your code here
  ptr = new T*[n];
  for (int i = 0; i < n;i++){  
	  ptr [i]= new T[m] ;
  } 
}
template <typename T>
My_matrix<T>::My_matrix(int n1, int m1)
{
  // add your code here
  n = n1;
  m = m1;
   allocate_memory();
  
}
template <typename T>
My_matrix<T>::My_matrix(const My_matrix<T>& mat)
{
	n = mat.number_of_rows();
	m = mat.number_of_columns();
	allocate_memory();
	for(int i=0;i< 3 ;i++){
		for(int j=0;j< 3;j++){
			ptr[i][j] = mat.ptr[i][j]; 
		}
		cout<<endl;
	}
	
}

// move constructor (optional)
template <typename T>
My_matrix<T>::My_matrix(My_matrix<T>&& mat)
{
  // add your code here
}
template <typename T>
My_matrix<T>::~My_matrix()
{
    for (int i = 0; i < n; i++){
		
        delete [] ptr[i];
	}
    delete [] ptr;
}

template <typename T>
My_matrix<T>& My_matrix<T>::operator=(const My_matrix<T>& mat)
{        	
	n = mat.number_of_rows();
	m = mat.number_of_columns();
	if(this != &mat){
		this->allocate_memory();
		for(int i=0;i< mat.number_of_rows() ;i++){
			for(int j=0;j< mat.number_of_columns() ;j++){
				this->elem(i,j)=mat(i,j);			
			}
		}
	 }
	 else {
	 return *this;
	 }
}


// move assignment operator (optional)
template <typename T>
My_matrix<T>& My_matrix<T>::operator=(My_matrix<T>&& mat)
{
  // add your code here
}
template <typename T>
int My_matrix<T>::number_of_rows() const{
  return n;
}
template <typename T>
int My_matrix<T>::number_of_columns() const{
	return m;
}
template <typename T>
T* My_matrix<T>::operator()(int i) const
{
  // add your code here
  return ptr[i];
}
template <typename T>
T My_matrix<T>::operator()(int i, int j) const
{
  // add your code here
  return ptr[i][j];
}

template <typename T>
T& My_matrix<T>::operator()(int i, int j)
{
  // add your code here
  return ptr[i][j];
}
template <typename T>
T My_matrix<T>::elem(int i, int j) const
{
  if (i < 0 || i >= n) throw out_of_range("Out of range");
  if (j < 0 || j >= m) throw out_of_range("Out of range");
  // add your code here
  return ptr[i][j];
}
template <typename T>
T& My_matrix<T>::elem(int i, int j)
{
  // add your code here
  return ptr[i][j];
}
template <typename T>
ostream& operator<<(ostream& out, const My_matrix<T>& mat)
{
  // add your code here
  	for(int i=0;i< mat.number_of_rows() ;i++){
		for(int j=0;j< mat.number_of_columns() ;j++){
			out << mat(i,j)<<" ";
		}
		out<<"\r\n";
	}
	return out;

}
template <typename T>
istream& operator>>(istream& in, My_matrix<T>& mat)
{
  // add your code here
  T temp=0;
	for(int i=0;i< mat.number_of_rows() ;i++){
		for(int j=0;j< mat.number_of_columns() ;j++){
			in >> temp;
			mat(i,j)=temp;
			
		}
	}
	return in;
}
template <typename T>
My_matrix<T> operator+(const My_matrix<T>& mat1, const My_matrix<T>& mat2)
{
  // add your code here
  int M = mat1.number_of_columns();
  int N = mat1.number_of_rows();
  My_matrix<T> Sum(N,M);
  if ((mat1.number_of_columns()== mat2.number_of_columns()) && (mat1.number_of_rows() == mat2.number_of_rows())){
	  
	  T tempSum = 0; 
	  for(int i=0;i< N ;i++){
		for(int j=0;j< M ;j++){
			tempSum = mat1.elem(i,j)+mat2.elem(i,j);
		
			cout<<tempSum<<" ";
			Sum.elem(i,j)=tempSum;
		}
		cout<<endl;
	}  
	cout<<"Number of Rows: "<<Sum.number_of_rows()<<endl;
	cout<<"Number of Columns: "<<Sum.number_of_columns()<<endl;
  }
  else{
		cout <<"invalid operation"<<endl;
		
  }
  
  return Sum;
 
}
template <typename T>
My_matrix<T> operator*(const My_matrix<T>& mat1, const My_matrix<T>& mat2)
{
  // add your code here
  int n1 = mat1.number_of_rows();
  int m1 = mat2.number_of_columns();
  int n2 = mat2.number_of_rows();
  int m2 = mat2.number_of_columns();
  My_matrix<T> Mul(n2,m2);
 cout<<endl<<endl;
  if (mat1.number_of_rows() == mat2.number_of_columns()){
	  
	  for(int i = 0; i < n1; i++){
		  for(int j = 0; j < m2; j++){
			   Mul.elem(i,j)=0;
			  for(int k = 0;k < n1;k++){
				  
				  Mul.elem(i,j) += (mat1.elem(i,k)*mat2.elem(k,j));
				 
			  }
			
		  }
	  }
	  
	  for(int x = 0;x < n2;x++){
	  for(int z = 0;z< m2;z++){
		  cout<<Mul.elem(x,z)<<" ";
		  }
		  cout<<endl;
		  }
      cout<<"Number of Rows: "<<Mul.number_of_rows()<<endl;
	  cout<<"Number of Columns: "<<Mul.number_of_columns()<<endl;
  }
  else{
	  cout<<"invalid operation"<<endl;
  }
 
  
	return Mul;
	
}

template class My_matrix<double>;
template class My_matrix<long int>;
template class My_matrix<float>;
template class My_matrix<int>;




