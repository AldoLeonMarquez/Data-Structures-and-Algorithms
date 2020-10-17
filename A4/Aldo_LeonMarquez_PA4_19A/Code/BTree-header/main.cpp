/* 
 *  main function
 */

#include "BTree.h"
#include <iostream>
#include <fstream>

using namespace std;

BTree read_file(string file_name)
{
  BTree tree;
  /*
    open the file and use the input operator (operator>>)
    to construct a new tree
  */
  ifstream inFS;
  inFS.open(file_name);
  
  inFS >> tree;
  inFS.close();
 
  return tree;
}


int main()
{
  /*
    write main function
 */
  ostream out(NULL);
  BTree Firstp=read_file("1p");
  Firstp.print_level_by_level(out);
  BTree Secondp=read_file("2p");
  Secondp.print_level_by_level(out);
  BTree Thirdp=read_file("3p");
  Thirdp.print_level_by_level(out);
  BTree Fourthp=read_file("4p");
  Fourthp.print_level_by_level(out);
  
  BTree Firstr=read_file("1r");
  Firstr.print_level_by_level(out);
  BTree Secondr=read_file("2r");
  Secondr.print_level_by_level(out);
  BTree Thirdr=read_file("3r");
  Thirdr.print_level_by_level(out);
  BTree Fourthr=read_file("4r");
  Fourthr.print_level_by_level(out);
  
  BTree Firstl=read_file("1l");
  Firstl.print_level_by_level(out);
  BTree Secondl=read_file("2l");
  Secondl.print_level_by_level(out);
  BTree Thirdl=read_file("3l");
  Thirdl.print_level_by_level(out);
  BTree Fourthl=read_file("4l");
  Fourthl.print_level_by_level(out);
  
  cout<<"Copy Constructor Demo: Copy of 3p Tree"<<endl;
  BTree copyC(Thirdp);
  copyC.inorder(*copyC.get_root());
  cout<<endl;
  cout<<"Copy Assignment Demo: Copy of 3p Tree"<<endl;
  BTree copyA(Thirdp);
  copyA.inorder(*copyA.get_root());
  cout<<endl;
  cout<<"Search Demo"<<endl;
  Node* search = new Node();
  search = copyC.search(6);
  cout<<"Value found, value: "<<search->value<<endl;
 }

