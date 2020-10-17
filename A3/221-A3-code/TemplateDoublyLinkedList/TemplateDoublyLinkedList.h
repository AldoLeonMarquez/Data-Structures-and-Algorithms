#include <cstdlib>
#include <stdexcept>
#include <string>
#include <iostream>
 using namespace std;

 struct EmptyDLinkedListException : std::range_error {
  explicit EmptyDLinkedListException(char const* msg=NULL): range_error(msg) {}
};
template <typename T>
class DoublyLinkedList;
// doubly linked list
template <typename T>
struct DListNode {
  T obj;
  DListNode<T> *prev, *next;
  DListNode<T>(T e = T(), DListNode<T> *p = NULL, DListNode<T> *n = NULL)
    : obj(e), prev(p), next(n) {}
};

template <typename T>
class DoublyLinkedList {
private:
  DListNode<T> header, trailer;
public:
  DoublyLinkedList() : header(T()), trailer(T()) // constructor
  { header.next = &trailer; trailer.prev = &header; }
  DoublyLinkedList(const DoublyLinkedList<T>& dll); // copy constructor
  DoublyLinkedList(DoublyLinkedList<T>&& dll); // move constructor
  ~DoublyLinkedList(); // destructor
  DoublyLinkedList<T>& operator=(const DoublyLinkedList<T>& dll); // assignment operator
  DoublyLinkedList<T>& operator=(DoublyLinkedList<T>&& dll); // move assignment operator
  // return the pointer to the first node
  DListNode<T> *getFirst() const { return header.next; } 
  // return the pointer to the trailer
  const DListNode<T> *getAfterLast() const { return &trailer; }
  // return if the list is empty
  bool isEmpty() const { return header.next == &trailer; }
  T first() const; // return the first object
  T last() const; // return the last object
  void insertFirst(T newobj); // insert to the first of the list
  T removeFirst(); // remove the first node
  void insertLast(T newobj); // insert to the last of the list
  T removeLast(); // remove the last node
  void insertAfter(DListNode<T> &p, T newobj);
  void insertBefore(DListNode<T> &p, T newobj);
  T removeAfter(DListNode<T> &p);
  T removeBefore(DListNode<T> &p);
};

// output operator
template <typename T>
ostream& operator<<(ostream& out, const DoublyLinkedList<T>& dll);
// return the list length
template <typename T>
int DoublyLinkedListLength(DoublyLinkedList<T>& dll);




// copy constructor
template <typename T>
DoublyLinkedList<T>::DoublyLinkedList(const DoublyLinkedList& dll)
{
  // Initialize the list
  header.next = &trailer;
  trailer.prev = &header;
  /* Complete this function */
  if(!dll.isEmpty()){
	  DListNode<T> *current= dll.getFirst();
	  while(current!=dll.getAfterLast()){
		  
		  insertLast(current->obj);
		  current=current->next;
	  } 
  }
}
// move constructor
template <typename T>
DoublyLinkedList<T>::DoublyLinkedList(DoublyLinkedList<T>&& dll)
{
  /* Complete this function */
  trailer=dll.trailer;
  dll.trailer.next =nullptr;
  header=dll.header;
  dll.header.next=nullptr;
	
}

// assignment operator
template <typename T>
DoublyLinkedList<T>& DoublyLinkedList<T>::operator=(const DoublyLinkedList<T>& dll)
{
  // use 
  if (this != &dll){
	DListNode<T> *prev_node, *node = header.next;
	while (node != &trailer) {
		prev_node = node;
		node = node->next;
		delete prev_node;
	}
	}
    header.next = &trailer;
	trailer.prev = &header;
	DListNode<T> *current;
	  current = dll.getFirst();
    while(current!=dll.getAfterLast()){
		  insertLast(current->obj);
		  current=current->next;
	} 
	return *this;
}
// move assignment operator
template <typename T>
DoublyLinkedList<T>& DoublyLinkedList<T>::operator=(DoublyLinkedList<T>&& dll)
{
/* Complete this function */
  // use if (this != &dll)
	if (this != &dll){	
		trailer=dll.trailer;
		header=dll.header;	
	}
}

// insert the new object as the first one
template <typename T>
void DoublyLinkedList<T>::insertFirst(T newobj)
{ 
    /* Complete this function */
	DListNode<T> *newNode = new DListNode<T>(newobj,&header,header.next);
	header.next->prev= newNode;
	header.next = newNode;
}

// insert the new object as the last one
template <typename T>
void DoublyLinkedList<T>::insertLast(T newobj)
{
    /* Complete this function */
	DListNode<T> *newNode = new DListNode<T>(newobj,trailer.prev,&trailer);
	trailer.prev->next= newNode;
	trailer.prev = newNode;
}

// remove the first object from the list
template <typename T>
T DoublyLinkedList<T>::removeFirst()
{ 
    /* Complete this function */
	if (isEmpty()){
		throw EmptyDLinkedListException("Empty Doubly Linked List");
	}
	
	DListNode<T> *node = header.next;
	node->next->prev = &header;
	header.next = node->next;
	T obj = node->obj;
	delete node;
	return obj;
}

// remove the last object from the list
template <typename T>
T DoublyLinkedList<T>::removeLast()
{
    /* Complete this function */
	if (isEmpty()){
		throw EmptyDLinkedListException("Empty Doubly Linked List");
	}
	DListNode<T> *node = trailer.prev;
	node->prev->next = &trailer; 
	trailer.prev = node->prev;
	T obj = node->obj;
	delete node;
	return obj;
}

// destructor
template <typename T>
DoublyLinkedList<T>::~DoublyLinkedList()
{
    /* Complete this function */
	DListNode<T> *prev_node, *node = header.next;
	while (node != &trailer) {
		prev_node = node;
		node = node->next;
		delete prev_node;
	}
	header.next = &trailer;
	trailer.prev = &header;
	}


// return the first object
template <typename T>
T DoublyLinkedList<T>::first() const
{ 
    /* Complete this function */
	if (isEmpty()){
		throw EmptyDLinkedListException("Empty Doubly Linked List");
	}
	return header.next->obj;
}

// return the last object
template <typename T>
T DoublyLinkedList<T>::last() const
{
    /* Complete this function */
	if (isEmpty()){
		throw EmptyDLinkedListException("Empty Doubly Linked List");
	}
	return trailer.prev->obj;
}

// insert the new object after the node p
template <typename T>
void DoublyLinkedList<T>::insertAfter(DListNode<T> &p, T newobj)
{
    /* Complete this function */
	DListNode<T> *newNode = new DListNode<T>(newobj,&p,p.next);
	p.next = newNode;
	p.next->prev = newNode;
	
}

// insert the new object before the node p
template <typename T>
void DoublyLinkedList<T>::insertBefore(DListNode<T> &p, T newobj)
{
    /* Complete this function */
	DListNode<T> *newNode = new DListNode<T>(newobj,p.prev,&p);
	
	p.prev->next = newNode; 	
	p.prev = newNode;
	
	
}

// remove the node after the node p
template <typename T>
T DoublyLinkedList<T>::removeAfter(DListNode<T> &p)
{
    /* Complete this function */
	DListNode<T> *raNode = p.next;
	p.next = raNode->next;
	p.next->prev = &p;
	T obj = raNode->obj;
	delete raNode;
	return obj;
}

// remove the node before the node p
template <typename T>
T DoublyLinkedList<T>::removeBefore(DListNode<T> &p)
{
    /* Complete this function */
	DListNode<T> *raNode = p.prev;
	p.prev = raNode->prev;
	p.prev->next = &p;
	T obj = raNode->obj;
	delete raNode;
	return obj;
}

// return the list length
template <typename T>
int DoublyLinkedListLength(DoublyLinkedList<T>& dll)
{
    /* Complete this function */
	DListNode<T> *current = dll.getFirst();
	int length = 0;
	while(current != dll.getAfterLast()) {
		length++;
		current = current->next; 
	}
return length;
}

// output operator
template <typename T>
ostream& operator<<(ostream& out, const DoublyLinkedList<T>& dll)
{
  
  /* Complete this function */
  DListNode<T> *current = dll.getFirst();
  while(current != dll.getAfterLast()){
	  T A =current->obj;
	  out<<A<<endl;
	  current= current->next;
  }
  return out;
}

