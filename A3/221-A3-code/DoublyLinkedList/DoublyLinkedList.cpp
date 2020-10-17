#include "DoublyLinkedList.h"
#include <stdexcept>

// extend range_error from <stdexcept>
struct EmptyDLinkedListException : std::range_error {
  explicit EmptyDLinkedListException(char const* msg=NULL): range_error(msg) {}
};

// copy constructor
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
DoublyLinkedList::DoublyLinkedList(DoublyLinkedList&& dll)
{
  /* Complete this function */
  trailer=dll.trailer;
  dll.trailer.next =nullptr;
  header=dll.header;
  dll.header.next=nullptr;
	
}

// assignment operator
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
void DoublyLinkedList::insertFirst(int newobj)
{ 
    /* Complete this function */
	DListNode *newNode = new DListNode(newobj,&header,header.next);
	header.next->prev= newNode;
	header.next = newNode;
}

// insert the new object as the last one
void DoublyLinkedList::insertLast(int newobj)
{
    /* Complete this function */
	DListNode *newNode = new DListNode(newobj,trailer.prev,&trailer);
	trailer.prev->next= newNode;
	trailer.prev = newNode;
}

// remove the first object from the list
int DoublyLinkedList::removeFirst()
{ 
    /* Complete this function */
	if (isEmpty()){
		throw EmptyDLinkedListException("Empty Doubly Linked List");
	}
	
	DListNode *node = header.next;
	node->next->prev = &header;
	header.next = node->next;
	int obj = node->obj;
	delete node;
	return obj;
}

// remove the last object from the list
int DoublyLinkedList::removeLast()
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
DoublyLinkedList::~DoublyLinkedList()
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
int DoublyLinkedList::first() const
{ 
    /* Complete this function */
	if (isEmpty()){
		throw EmptyDLinkedListException("Empty Doubly Linked List");
	}
	return header.next->obj;
}

// return the last object
int DoublyLinkedList::last() const
{
    /* Complete this function */
	if (isEmpty()){
		throw EmptyDLinkedListException("Empty Doubly Linked List");
	}
	return trailer.prev->obj;
}

// insert the new object after the node p
void DoublyLinkedList::insertAfter(DListNode &p, int newobj)
{
    /* Complete this function */
	DListNode *newNode = new DListNode(newobj,&p,p.next);
	p.next = newNode;
	p.next->prev = newNode;
	
}

// insert the new object before the node p
void DoublyLinkedList::insertBefore(DListNode &p, int newobj)
{
    /* Complete this function */
	DListNode *newNode = new DListNode(newobj,p.prev,&p);
	
	p.prev->next = newNode; 	
	p.prev = newNode;
	
	
}

// remove the node after the node p
int DoublyLinkedList::removeAfter(DListNode &p)
{
    /* Complete this function */
	DListNode *raNode = p.next;
	p.next = raNode->next;
	p.next->prev = &p;
	int obj = raNode->obj;
	delete raNode;
	return obj;
}

// remove the node before the node p
int DoublyLinkedList::removeBefore(DListNode &p)
{
    /* Complete this function */
	DListNode *raNode = p.prev;
	p.prev = raNode->prev;
	p.prev->next = &p;
	int obj = raNode->obj;
	delete raNode;
	return obj;
}

// return the list length
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
ostream& operator<<(ostream& out, const DoublyLinkedList& dll)
{
  
  /* Complete this function */
  DListNode *current = dll.getFirst();
  while(current != dll.getAfterLast()){
	  int A =current->obj;
	  out<<A<<endl;
	  current= current->next;
  }
  return out;
}
