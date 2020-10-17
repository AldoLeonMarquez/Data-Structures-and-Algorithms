#include <iostream>
#include <vector>
#include <list>
#include <limits>

using namespace std;
struct Node{
	int value;
	list<Node>::iterator down;
  // constructor
  Node(int val, list<Node>::iterator d)
    : value(val),down(d){}	
  Node(int val)
    : value(val){}	
};
class skipList{
private:
	int infinity = std::numeric_limits<int>::max();
	int ninfinity = std::numeric_limits<int>::lowest();
	int levels=10;
public:
 int maxlevel=1;  //current maximum used level, useful for the print. Updated depending on the individual coin flips.
 vector<list<Node>> SL;
 skipList(); //Useful constructor with set size of 10 levels.
 int insert(int key);
 int coinflips(); 
 int search(int key);
 void clear();
 int deletion(int key); 
 
};

istream& operator>>(istream& in, skipList& L); //Create form Input File 
 ostream& operator<<(ostream& out, skipList& L); //Print 
 