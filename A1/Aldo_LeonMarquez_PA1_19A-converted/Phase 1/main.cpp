// main.cpp
// Tests all functionality of the class My_matrix class.

#include <iostream>
#include <fstream>
#include "My_matrix.h"

int main(){
	
  
  // Some test cases are expected to throw an exception.
  // Add more try and catch blocks as necessary for your code
  // to finish execution.
    
  try{
    
    // Test 1
    // * Create an object of type My_matrix, called m1, using constructor
    // * Initialize m1 in main (by assigning numbers to matrix elements)
    // * Display m1 on the screen using the operator <<
	
	My_matrix m1(3,3);	//create Matrix 
	for(int i=0;i< 3 ;i++){
		for(int j=0;j< 3;j++){
			m1.elem(i,j)= 12; //assigning values
			cout<<m1.elem(i,j)<<" ";
		}
		cout<<endl;
	}
	cout<<endl<<endl;
    // Test 2
    // * Create an object of type My_matrix, called m2, using (default)
    //   constructor
    // * Open an input file containing a matrix (row by row)
    // * Initialize m2 by reading from the input file using
    //   the operator >>
    // * Open an output file (can be empty)
    // * Write m2 to the output file using the operator <<
	
	My_matrix m2; //create m2
	m2 = m1;
	ifstream IN;
	
	
	My_matrix m6(3,3);
	IN.open ("test.txt"); //opening file 
	
	IN>>m6;	//inputing data to m2 from a file 
	
	IN.close ();
	
	cout <<"m6"<<endl<<endl;
	
	
	ofstream OUT;
	OUT.open ("Output");
	
	OUT<<m6;    //Writing m2 to an output file 
	OUT.close();
	
	// Test 3
    // * Use the copy constructor to make a copy of m1 called m3
    // * Apply the copy assignment to m1 called m4
    // * Display m3 and m4 on the screen using the operator <<
	
	My_matrix m3(m1);
	My_matrix m4;
	m4=m1;
	
	for(int i=0;i< 3 ;i++){
		for(int j=0;j< 3;j++){
			
			cout<<m3.elem(i,j)<<" ";
		}
		cout<<endl;
	}
	cout<<"copy m3	using copy constructor "<<endl<<endl;
	for(int i=0;i< 3 ;i++){
		for(int j=0;j< 3;j++){
			
			cout<<m4.elem(i,j)<<" ";
		}
		cout<<endl;
	}
	cout<<"copy m4 using  copy assignment "<<endl<<endl;
	m2=m1;
    ofstream OUT2;
	OUT2.open ("asd");
	
	OUT2<<m2;
	
	OUT2.close();
	
	My_matrix C(3,3);
		
    // Test 4
    // * Test the matrix multiplication operator (operator*)
    // * Apply the multiplication operator to valid and invalid cases
    // * Display the resulting matrix and its number of rows and columns
	m1*m2;
	cout<<"Valid Multiplication"<<endl;
	My_matrix B(2,2);
	B*C;
	
    // Test 5
    // * Test the matrix addition operator (operator+)
    // * Apply the multiplication operator to valid and invalid cases
    // * Display the resulting matrix and its number of rows and columns
	cout<<endl;
	m1+m2;
	cout<<"Valid Sum"<<endl;
	cout<<endl;
	C+B;
  } catch(exception &error){
    cerr << "Error: " << error.what() << endl;
  }
}

//12:45 -1:45 ETB 2016