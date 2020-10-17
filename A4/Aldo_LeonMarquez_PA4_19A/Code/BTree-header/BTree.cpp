/*
 * Binary Tree - source file (functions implementation)
 */

#include "BTree.h"
#include <vector>
#include <iostream>
#include <fstream>
#include <chrono>


ostream& operator<<(ostream& out, BTree& tree)
{
  tree.print_level_by_level(out);
  return out;
}

ostream& operator<<(ostream& out, Node& node)
{
  out << "( "
      << node.value
      << ", "
      << node.search_cost
      << " )";
  return out;
}

istream& operator>>(istream& in, BTree& tree)
{
  /*
    take input from the in stream, and build your tree

    input will look like
    4 
    2 
    6 
    1 
    3 
    5 
    7
	
  */
  int value;
  while (!in.eof()){
	  in >> value;
	  tree.insert(value);  
  }
  return in;
}
//Helper Function
void BTree::cop(Node* copyRoot,const Node& originalRoot){	
 // if(!originalRoot){return;}

  if(originalRoot.left!=nullptr){
	  
	  copyRoot= new Node(originalRoot.value);
	  cop(copyRoot->left,*originalRoot.left);
  }
  if(originalRoot.right!=nullptr){
	  copyRoot= new Node(originalRoot.value);
	  cop(copyRoot->right,*originalRoot.right);
  }
  return;
}
/*BTree::BTree(const BTree& other) 
{
  /*
    complete this copy constructor
    make sure when copying nodes to copy
    - value
    - left and right children
  
  root=other.root;
  size=other.size;
  cop(root,*other.root);
 
}
 
*/


BTree::BTree(BTree&& other)
{
  /*
    complete this move constructor
  */
  cout<<"Egcvejgcve"<<endl;
  root = other.root;
  delete other.root;  
}

BTree& BTree::operator=(const BTree& other)
{
 
    /*
      complete this assignment operator
      make sure when copying nodes to copy
      - value
      - left and right children
    */
	if (this == &other) {
		return *this;
	}
	cop(this->root,*other.root);
  return *this;
}

BTree& BTree::operator=(BTree&& other)
{
	this->size=other.size;
  if (this != &other) {
    /*
      complete this move assignment operator
    */
	delete this->root;          // Delete the object's data
    this->root = other.root;    // "Move" other's data into the current object
    other.root = nullptr;       // Mark the other object as "empty"
      
  }
  return *this;
}

Node* BTree::insert(int obj)
{
  /*
    insert a node into the tree
    - first find where the node should go
    - then modify pointers to connect your new node 
  */
  size++;
  Node* temp = get_root(); 
  Node* inserted= new Node(obj);  
  Node* i= new Node;  
  int cost=0;
  if(root==nullptr){
	  root=inserted;
	  root->search_cost=1;
	  return temp;
  } 
  bool found=false;
  while (!found){ 
  cost++;
	if (obj < temp->value){
	  if(temp->left == nullptr){
		  temp->left=inserted;
		 
		  found = true;
	  }		
	  temp=temp->left;	  
	}
	else if (obj > temp->value){
	   if(temp->right == nullptr){
		  found = true;
		  temp->right=inserted;
	  }
	  temp= temp->right;	  
	}
  }
  temp->search_cost=cost+1;
  return temp;
}

Node* BTree::search(int obj)
{
  /*
    recursivly search down the tree to find the node that contains obj
    - if you don't find anything return nullptr
  */
  Node* temp = root; 
  bool endOfTree=false; //also used as found bool
  bool found=false;
  
  while (!endOfTree){
	
	if (obj == temp->value){
		found = true;
		endOfTree = true;
		
	}
	else if (obj < temp->value){
	  if(temp->left == nullptr){
		  endOfTree = true;	 
	  }	
	  temp=temp->left;	  
	}
	else if (obj > temp->value){
	   if(temp->right == nullptr){
		  endOfTree = true;
	  }
	  temp=temp->right;	  
	}
  }
  if(found){return temp;  }
  else {return nullptr;}
}

void BTree::update_search_cost()
{
  /*
    do a BFS of your tree and update the search cost of all nodes
  */
  Node* temp = root; 
  vector<Node*> all;
  Node* placeHolder = new Node(-99); 
  bool done = true;
  if(root==nullptr){return;}
  all.push_back(root);
  int currentLevel=1; //current number of node per level  
  int Level=0;
  int currentcost=1;
   while(!all.empty()){
	   Node *currentNode = all.front();
	   currentNode->search_cost=currentcost;
	   
	   currentLevel--;
	   all.erase(all.begin());
	   if (currentNode){
            if (currentNode->left==nullptr){
				all.push_back(placeHolder);
			}
            else{
                done = false;
                all.push_back(currentNode->left);
            }
            if (currentNode->right==nullptr){
				all.push_back(placeHolder);
			}
            else{
                done = false;
                all.push_back(currentNode->right);
            }      
			Level=Level+2;
        }   
	   if(currentLevel == 0){	  
	      currentcost++;
		  if (done){
			   return;
		   }
		   done = true; 
		   currentLevel=Level;
		   Level = 0;
	   }
   }
  
}

double BTree::inorder(const Node& tree)
{
  /*
    print your nodes in infix order

    if our tree looks like 

    4
    2 6
    1 3 5 7
    we should get

    1 2 3 4 5 6 7 
  */

  if (tree.left != nullptr){inorder(*tree.left);};
	this->Totalcost=this->Totalcost+tree.search_cost;
	cout<< tree.value <<"["<<tree.search_cost<<"]"<<" ";
  if (tree.right != nullptr) {inorder(*tree.right);}
  
  return Totalcost;
}

void BTree::print_level_by_level(ostream& out)
{
  /*
    print the tree using a BFS 

    output should look like this if we dont have a full tree

    4
    2 6
    1 X 5 7
    X X X X X X X 9

    it will be helpfull to do this part iterativly, 
    so do the BFS with the std stack data structure.

    it may also be helpfull to put the entire tree into a vector 
    (probably google this if you dont know how to do it)
  */
  ofstream OFile;
  char  r = rand() % 49;   // generate a random number
  char c = 'a' + r;  
  string s(1, c); 
  string filename = "result"+s+".txt";
  OFile.open(filename);
  vector<Node*> all;
  int Max=0;
  
  vector<int> allvalues;
  Node* temp = root; 
  // usefull to insert to the vector, keeping the level size and indicating is empty with -99
  Node* placeHolder = new Node(-99); 
  bool done = true;
  if(root==nullptr){return;}
  all.push_back(root);
  int currentLevel=1; //current number of node per level 
  int currentSearch=1; 
  int Level=0;
   while(!all.empty()){
	   Node *currentNode = all.front();
	   currentLevel--;
	   all.erase(all.begin());
	   if (currentNode){
		   allvalues.push_back(currentNode->value);
            if (currentNode->left==nullptr){
				all.push_back(placeHolder);
			}
            else{
                done = false;
                all.push_back(currentNode->left);
            }
            if (currentNode->right==nullptr){
				all.push_back(placeHolder);
			}
            else{
                done = false;
                all.push_back(currentNode->right);
            }      
			Level=Level+2;
        }   
	   if(currentLevel == 0){	  
	      for (int i=0;i<allvalues.size();i++){
			  if (allvalues.at(i)==-99){
				 OFile<<"X ";				 
			  }
			  else
			  OFile<<allvalues.at(i)<<"["<<currentSearch<<"]"; 
		  }
		  OFile<<"\r\n";
		  currentSearch++;
		  allvalues.clear();	
		  if (done){
			   return;
		   }
		   done = true; 
		   currentLevel=Level;
		   Level = 0;
	   }
   }
  delete placeHolder;
  OFile.close();
  return;
}