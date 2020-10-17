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
    My_matrix<double> m1(3,3);	
	 for(int i=0;i< 3 ;i++){
		for(int j=0;j< 3;j++){
	
			m1.elem(i,j)= 1.1; //assigning values
			cout<<m1.elem(i,j)<<" ";
		}
		cout<<endl;
	}
	cout<<"double type matrix"<<endl<<endl;
	
	My_matrix<double> m1B;
	m1B = m1; 
	 for(int i=0;i< 3 ;i++){
		for(int j=0;j< 3;j++){
			cout<<m1B.elem(i,j)<<" ";
		}
		cout<<endl;
	}
	cout<<"copy of double type matrix with assignment"<<endl<<endl;
	
	My_matrix<float> m2(3,3);
	 for(int i=0;i< 3 ;i++){
		for(int j=0;j< 3;j++){
	
			m2.elem(i,j)= 22.22; //assigning values
			cout<<m2.elem(i,j)<<" ";
		}
		cout<<endl;
	}
	cout<<"float type matrix"<<endl<<endl;
	
	My_matrix<float> m2B(m2);
	 for(int i=0;i< 3 ;i++){
		for(int j=0;j< 3;j++){
			cout<<m2B.elem(i,j)<<" ";
		}
		cout<<endl;
	}
	cout<<"copy of float type matrix with constuctor"<<endl<<endl;
	
	My_matrix<long int> m3(3,3);
	 for(int i=0;i< 3 ;i++){
		for(int j=0;j< 3;j++){
	
			m3.elem(i,j)= 3.3; //assigning values
			//cout<<m3.elem(i,j)<<" ";
		}
		cout<<endl;
	}
	
	My_matrix<long int> m3B(3,3);
	 for(int i=0;i< 3 ;i++){
		for(int j=0;j< 3;j++){
			m3B.elem(i,j)= 2.2; //assigning values
			//cout<<m3B.elem(i,j)<<" ";
		}
		cout<<endl;
	}
	My_matrix<long int> m4(3,3);
	My_matrix<long int> m4B(3,3);	
	//m4=m3+m3B;
	 for(int i=0;i< 3 ;i++){
		for(int j=0;j< 3;j++){
			//cout<<m4.elem(i,j)<<" ";
		}
		cout<<endl;
	}
	//m4B=m3*m3B;
	
	 for(int i=0;i< 3 ;i++){
		for(int j=0;j< 3;j++){
			//cout<<m4B.elem(i,j)<<" ";
		}
		cout<<endl;
	}
	
  } catch(exception &error){
    cerr << "Error: " << error.what() << endl;
  }
}

//12:45 -1:45 ETB 2016