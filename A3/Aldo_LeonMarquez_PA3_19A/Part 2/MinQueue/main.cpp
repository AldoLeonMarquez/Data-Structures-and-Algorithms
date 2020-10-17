#include "MinQueue.h"
#include <iostream>
#include <string>
#include <stdexcept>
#include <cstdio>
#include <sstream>

using namespace std;
int main(){

 cout << "Create a new list" << endl;
  DoublyLinkedList<int> dll;
  cout << "list: " << dll << endl << endl;
  
  // Insert 10 nodes at back with value 10,20,30,..,100
  cout << "insert 10 random \nnumbers to a list" << endl;
  for (int i=10;i<=100;i+=10) {
    dll.insertLast(1+rand() % (10) );
  }
	
	MinQueue<int> A;
	DListNode<int> *cur = dll.getFirst();
	 for (int i=10;i<=100;i+=10) {
		int Temp = cur->obj;
		A.enqueue(Temp);
		cur=cur->next;
	}
	int B = A.min();
	cout<<"Full Queue"<<endl;
	cout<<"Size of Queue: "<<A.size()<<endl;

	for(int i=0;i<10;i++){
		
		int temp = A.dequeue();
		cout<<temp<<endl;
		
	}
	cout<<"Minimum from the Queue: "<<B<<endl;
	cout<<"Empty Queue \nSize of Queue: "<<A.size()<<endl;
	cout<<"Char Queue "<<endl;
	MinQueue<char> SQ;
	for (int i = 0; i<10; i++){
		char TC = 96+rand() % (24);
		SQ.enqueue(TC);
	}
	cout<<"Full Char Queue"<<endl;
	
	char C = SQ.min();
	for(int i=0;i<10;i++){
		
		char temp = SQ.dequeue();
		cout<<temp<<endl;
	}
	cout<<"Size of Queue: "<<SQ.size()<<endl;
	cout<<"Minimum from the Queue: "<<C<<endl;
	cout<<"Empty Queue \nSize of Queue: "<<SQ.size()<<endl;
	cout<<"Dequeue of an\nempty Queue"<<endl;
	SQ.dequeue();
}

//FirstName_LastName_PA3.tar