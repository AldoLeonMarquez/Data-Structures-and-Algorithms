/*
 * Binary Tree - header file
 */

#ifndef BTREE_H
#define BTREE_H

#include <iostream>
using namespace std;

struct Node
{
	
  int value;
  Node* left;
  Node* right;
  int search_cost;
  
  
  // constructor
  Node(int val = 0, Node* l = nullptr, Node* r = nullptr)
    : value(val), left(l), right(r), search_cost(0) {}

  // query
  bool is_leaf() { return (left == nullptr && right == nullptr); }
};

class BTree
{
private:
  
  
  Node* root;
public:
int size;
int Totalcost=0;

  // constructors
  BTree() : root(nullptr), size(0) {} // default constructor
 // BTree(const BTree& other); // copy constructor
  BTree(BTree&& other); // move constructor
  // assignment and move assignment operator
  BTree& operator=(const BTree& other);
  BTree& operator=(BTree&& other);

  int get_size() { return size; }
  Node* get_root() { return root; }
  // should not be used unless it is really necessary
  void set_root(Node* node) { root = node; }
  Node* insert(int obj);
  Node* search(int obj);
  void update_search_cost();
  double inorder(const Node& tree);
  void cop(Node* copy,const Node& original);
  void print_level_by_level(ostream& out);

};

ostream& operator<<(ostream& out, BTree& tree);
ostream& operator<<(ostream& out, Node& node);

istream& operator>>(istream& in, BTree& tree);

#endif
