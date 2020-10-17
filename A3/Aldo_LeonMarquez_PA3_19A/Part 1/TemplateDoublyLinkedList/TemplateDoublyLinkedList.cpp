#include "TemplatedDoublyLinkedList.h"
#include <stdexcept>

// extend range_error from <stdexcept>
struct EmptyDLinkedListException : std::range_error {
  explicit EmptyDLinkedListException(char const* msg=NULL): range_error(msg) {}
};

// copy constructor
template <typename T>
DoublyLinkedList::DoublyLinkedList(const DoublyLinkedList& dll)
{
  // Initialize the list
  header.next = &trailer;
  trailer.prev = &header;
  /* Complete this function */
  if(!dll.isEmpty()){
	  DListNode *current= dll.getFirst();
	  while(current!=dll.getAfterLast()){
		  
		  insertLast(current->obj);
		  current=current->next;
	  } 
  }
}
// move constructor
template <typename T>
DoublyLinkedList::DoublyLinkedList(DoublyLinkedList&& dll)
{
  /* Complete this function */
  trailer=dll.trailer;
  dll.trailer.next =nullptr;
  header=dll.header;
  dll.header.next=nullptr;
	
}

// assignment operator
template <typename T>
DoublyLinkedList& DoublyLinkedList::operator=(const DoublyLinkedList& dll)
{
  // use 
  if (this != &dll){
	DListNode *prev_node, *node = header.next;
	while (node != &trailer) {
		prev_node = node;
		node = node->next;
		delete prev_node;
	}
	}
    header.next = &trailer;
	trailer.prev = &header;
	DListNode *current;
	  current = dll.getFirst();
    while(current!=dll.getAfterLast()){
		  insertLast(current->obj);
		  current=current->next;
	} 
	return *this;
}
// move assignment operator
template <typename T>
DoublyLinkedList& DoublyLinkedList::operator=(DoublyLinkedList&& dll)
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
void DoublyLinkedList::insertFirst(T newobj)
{ 
    /* Complete this function */
	DListNode *newNode = new DListNode(newobj,&header,header.next);
	header.next->prev= newNode;
	header.next = newNode;
}

// insert the new object as the last one
template <typename T>
void DoublyLinkedList::insertLast(T newobj)
{
    /* Complete this function */
	DListNode *newNode = new DListNode(newobj,trailer.prev,&trailer);
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
	
	DListNode *node = header.next;
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
	DListNode *node = trailer.prev;
	node->prev->next = &trailer; 
	trailer.prev = node->prev;
	int obj = node->obj;
	delete node;
	return obj;
}

// destructor
template <typename T>
DoublyLinkedList<T>::~DoublyLinkedList()
{
    /* Complete this function */
	DListNode *prev_node, *node = header.next;
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
T DoublyLinkedList::last() const
{
    /* Complete this function */
	if (isEmpty()){
		throw EmptyDLinkedListException("Empty Doubly Linked List");
	}
	return trailer.prev->obj;
}

// insert the new object after the node p
template <typename T>
void DoublyLinkedList::insertAfter(DListNode &p, T newobj)
{
    /* Complete this function */
	DListNode *newNode = new DListNode(newobj,&p,p.next);
	p.next = newNode;
	p.next->prev = newNode;
	
}

// insert the new object before the node p
template <typename T>
void DoublyLinkedList::insertBefore(DListNode &p, T newobj)
{
    /* Complete this function */
	DListNode *newNode = new DListNode(newobj,p.prev,&p);
	
	p.prev->next = newNode; 	
	p.prev = newNode;
	
	
}

// remove the node after the node p
template <typename T>
T DoublyLinkedList::removeAfter(DListNode &p)
{
    /* Complete this function */
	DListNode *raNode = p.next;
	p.next = raNode->next;
	p.next->prev = &p;
	T obj = raNode->obj;
	delete raNode;
	return obj;
}

// remove the node before the node p
template <typename T>
T DoublyLinkedList::removeBefore(DListNode &p)
{
    /* Complete this function */
	DListNode *raNode = p.prev;
	p.prev = raNode->prev;
	p.prev->next = &p;
	T obj = raNode->obj;
	delete raNode;
	return obj;
}

// return the list length
template <typename T>
int DoublyLinkedListLength(DoublyLinkedList& dll)
{
    /* Complete this function */
	DListNode *current = dll.getFirst();
	int length = 0;
	while(current != dll.getAfterLast()) {
		length++;
		current = current->next; 
	}
return length;
}

// output operator
template <typename T>
ostream& operator<<(ostream& out, const DoublyLinkedList& dll)
{
  
  /* Complete this function */
  DListNode *current = dll.getFirst();
  while(current != dll.getAfterLast()){
	  T A =current->obj;
	  out<<A<<endl;
	  current= current->next;
  }
  return out;
}
