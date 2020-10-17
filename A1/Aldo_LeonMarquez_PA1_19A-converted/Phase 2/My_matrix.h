/* My_matrix.h

Header file for the class My_matrix

Write your name and UIN here
//Aldo Leon Marquez
//326004699

*/
#ifndef My_matrix_H
#define My_matrix_H

#include <iostream>
#include <exception>

using namespace std;
// Definitions of user defined type exceptions 
struct invalid_input : public exception {
  virtual const char* what() const throw()
  { return "Invalid matrix input"; }
};

struct incompatible_matrices : public exception {
  virtual const char* what() const throw()
  { return "Incompatible matrices"; }
};


template <typename T>
class My_matrix {
	
  //member variables
  int n;
  int m;
  T **ptr;
  void allocate_memory();  // optional
  
public:	
  //member functions
  My_matrix();  // default constructor
  My_matrix(int n1, int m1); // parameter constructor
  ~My_matrix(); // destructor
  My_matrix(const My_matrix& mat); // copy constructor
  My_matrix(My_matrix&& mat);  // move constructor (optional)
  My_matrix& operator=(const My_matrix& mat); //copy assignment operator
  My_matrix& operator=(My_matrix&& mat); // move assignment operator (optional)
  int number_of_rows() const; 
  int number_of_columns() const;
  T* operator()(int i) const; // overloaded to access to ith row
  T& operator()(int i, int j); // overloaded to access (i,j) element
  T operator()(int i, int j) const; // overloaded to access (i,j) element
  T elem(int i, int j) const; // overloaded to access (i,j) element
  T& elem(int i, int j); // overloaded to access (i,j) element
};

// see the handout for the description of these operators
template <typename T>
My_matrix<T> operator+(const My_matrix<T> & mat1, const My_matrix<T> & mat2);
template <typename T>
My_matrix<T> operator*(const My_matrix<T>  mat1, const My_matrix<T> & mat2);
template <typename T>
ostream& operator<<(ostream& out, const My_matrix<T> & mat);
template <typename T>
istream& operator>>(istream& in, My_matrix<T> & mat);

#endif
