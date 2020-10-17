#include <iostream>
#include "TemplateDoublyLinkedList.h"

template <typename T>
class MinQueue;

template <typename T>
class MinQueue{
	private:
	DoublyLinkedList<T> dll; 
	public:
	MinQueue<T>(): dll(){ }
	~MinQueue<T>(){dll.~DoublyLinkedList<T>();}
	void enqueue(T elem){dll.insertLast(elem);}
	T dequeue();
	int size(){return dll.DoublyLinkedListLength(dll);}
	T min();
	bool isEmpty(){ return dll.isEmpty(); }
};

template <typename T>
T MinQueue<T>::dequeue(){
	T Min = T();
	if (dll.isEmpty()){

		cout<<"Empty Queue";
	}
	else{
	  T Temp  = T();
	  T Temp2 = T();
	  
	  DListNode<T> *current= dll.getFirst();
	  DListNode<T> *current2= dll.getFirst();
	  current=current->next;
	  DListNode<T> *currentMIN= dll.getFirst();
	  currentMIN = current2;
	  Temp2 = current2->obj;
	  Min = Temp2;
	  while(current!=dll.getAfterLast()){
		  Temp = current->obj;
		  Temp2 = current2->obj;
		  
		  if(!(Temp>Temp2)){
			  currentMIN = current;
			  Min=currentMIN->obj;
		  }
		  current=current->next;
		  current2=current2->next;
		  
	  } 
	  dll.removeAfter(*currentMIN->prev);
  }
	return Min;
  
}
template <typename T>
T MinQueue<T>::min(){
	if(!dll.isEmpty()){
	  T Temp  = T();
	  DListNode<T> *current= dll.getFirst();
	  T MIN = current->obj;
	  while(current!=dll.getAfterLast()){
		  Temp = current->obj;
		  if(Temp<MIN){
			  MIN = Temp;
		  }
		  current=current->next;
	  } 
	  return MIN;
  }
  else{
	  cout<<"Empty Doubly Linked List"<<endl;
			//return 0;
  }
}
