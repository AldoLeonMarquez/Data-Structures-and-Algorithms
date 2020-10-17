#include "DoublyLinkedList.h"
#include <iostream>
using namespace std;
int main () {
  // Construct a linked list with header & trailer
  cout << "Create a new list" << endl;
  DoublyLinkedList dll;
  cout << "list: " << dll << endl << endl;
  
  // Insert 10 nodes at back with value 10,20,30,..,100
  cout << "Insert 10 nodes at back with value 10,20,30,..,100" << endl;
  for (int i=10;i<=100;i+=10) {
    dll.insertLast(i);
  }
  cout << "list: \n" << dll << endl << endl;

  // Insert 10 nodes at front with value 10,20,30,..,100
  cout << "Insert 10 nodes at front with value 10,20,30,..,100" << endl;
  for (int i=10;i<=100;i+=10) {
    dll.insertFirst(i);
  }
  cout << "list: \n" << dll << endl << endl;
  
  // Copy to a new list
  cout << "Copy to a new list" << endl;
  DoublyLinkedList dll2(dll);
  cout << "list2: \n" << dll2 << endl << endl;
  
  // Assign to another new list
  cout << "Assign to another new list" << endl;
  DoublyLinkedList dll3;
  dll3=dll;
  cout << "list3: \n" << dll3 << endl << endl;
 
  // Delete the last 10 nodes
  cout << "Delete the last 10 nodes" << endl;
  for (int i=0;i<10;i++) {
    dll.removeLast();
  }
  cout << "list: \n" << dll << endl << endl;
  
  // Delete the first 10 nodes
  cout << "Delete the first 10 nodes" << endl;
  for (int i=0;i<10;i++) {
    dll.removeFirst();
  }
  cout << "list: \n" << dll << endl << endl;
   
  // Check the other two lists
  cout << "Make sure the other two lists are not affected." << endl;
  cout << "list2: \n" << dll2 << endl;
  cout << "list3: \n" << dll3 << endl;

  // more testing...
  // add tests for insertAfter, insertBefore
  cout<<"Insert After First of 2 "<<endl;
  DListNode *current = dll2.getFirst();
   for (int i=0;i<10;i++) {
	dll2.insertAfter(*current,i);
	current= current->next;
  }
  cout << "list: \n" << dll2 << endl << endl;
  
  cout<<"Insert Before the end of the list of 2 "<<endl;
  DListNode *current2 = dll2.getAfterLast()->prev;
   for (int i=0;i<10;i++) {
	dll2.insertBefore(*current2,i);
	current2= current2->prev;
  }
  cout << "list: \n" << dll2 << endl << endl;
  
  // add tests for removeAfter, removeBefore
  cout<<"Remove After First of 2 "<<endl;
  current = dll2.getFirst();
   for (int i=0;i<10;i++) {
	dll2.removeAfter(*current);
  }
  cout << "list: \n" << dll2 << endl << endl;
  
  cout<<"Remove the end of 2 "<<endl;
  current2 = dll2.getAfterLast()->prev;
   for (int i=0;i<10;i++) {
	dll2.removeBefore(*current2);
	
  }
  cout << "list: \n" << dll2 << endl << endl;
  
  // add tests for DoublyLinkedListLength  */
	int test = DoublyLinkedListLength(dll2);
	cout<<"Lengt of list 2 = "<<test<<endl<<endl;
  return 0;
}
