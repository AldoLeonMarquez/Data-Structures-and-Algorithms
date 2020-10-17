#include "skipList.h"
#include <iostream>
#include <vector>
#include <list>
#include <ctime>

using namespace std;

skipList::skipList(){
	SL.push_back(list<Node>());
	SL[0].clear();
	SL[0].push_back(Node(ninfinity,SL[0].begin())); //infinity and ninfinity are declared as the Max and lowest of the limit header 
	SL[0].push_back(Node(infinity,SL[0].end()));
	for (int i=1;i<9;i++){
		SL.push_back(list<Node>());
		SL[i].clear(); 	
		SL[i].push_back(Node(ninfinity,SL[i-1].begin())); //infinity and ninfinity are declared as the Max and lowest of the limit header 
		SL[i].push_back(Node(infinity,--SL[i-1].end()));
		
		
	}
}
int skipList::coinflips(){
	int coinF=0;
	int trials=0;
	bool tails= false;
	while(!tails && trials<10){
		int coin =1+rand() % 2;
		if (coin == 1){
			coinF++;
			trials++;
			} //# of coin flips generator
		else if(coin==2) {
			coinF++;
			tails=true;
			}
	}	
	return coinF;
}

int skipList::insert(int key){
	int coinFlips=coinflips();
	int nComparison=0;
	if (coinFlips>maxlevel){
		maxlevel=coinFlips;
	}
	
	cout<<"Coin Flips for Key "<<key<<": "<<coinFlips<<endl;
	int insertlevel=coinFlips-1;
	list<Node>::iterator curr=SL[insertlevel].begin();
	list<Node>::iterator temp=SL[insertlevel].end();
	bool done=false;
	while (insertlevel>=0){
			while(done==false){
				if(key>curr->value){
					curr++;		
					nComparison++;
				}
				if(key<curr->value){
					nComparison++;
					SL[insertlevel].insert(curr,Node(key));
					curr--;
					temp->down=curr;
					temp=curr;
					curr--;
					curr=curr->down;
					done=true;
				}
			}	
		
		done=false;
		insertlevel--;	
		}
		return nComparison;
}
int skipList::search(int key){
	list<Node>::iterator curr=SL[maxlevel-1].begin();
	list<Node>::iterator last=SL[0].end();
	last--;
	int nComparison=0;
	int currentlevel=maxlevel-1;
	bool done=false;

		while(done==false){
			if (key == curr->value){
				cout<<"Found, Number of Comparisons: "<<nComparison<<endl;
				done = true;
			}
			if (key > curr->value){
				curr++;
				nComparison++;
			}
			if (key < curr->value){
				nComparison++;
				if (curr==last){
					cout<<"Not Found"<<endl;
					done=true;
				}
				curr--;
				curr=curr->down;
			}
		}
	return nComparison;
}
void skipList::clear(){
	 SL.clear();  //delete everything on the vector, then add the default 10 floors 
	 maxlevel=1;
	 SL.push_back(list<Node>());
	 SL[0].clear();
	 SL[0].push_back(Node(ninfinity,SL[0].begin())); //infinity and ninfinity are declared as the Max and lowest of the limit header 
	 SL[0].push_back(Node(infinity,SL[0].end()));
	 for (int i=1;i<10;i++){
		SL.push_back(list<Node>());
		SL[i].clear(); 	
		SL[i].push_back(Node(ninfinity,SL[i-1].begin())); //infinity and ninfinity are declared as the Max and lowest of the limit header 
		SL[i].push_back(Node(infinity,--SL[i-1].end()));
	}
}
int skipList::deletion(int key){
	 list<Node>::iterator curr=SL[maxlevel].begin();
	 list<Node>::iterator last=SL[0].end();
	 last--;
	 list<Node>::iterator next=SL[maxlevel].begin();
	 bool done=false; //done with level
	 int currentlevel=maxlevel-1;
	 int nComparison=0;
	 int check=0;
	 while(done==false){
			if (key == curr->value){ 
				 while(currentlevel>=0){  //Start deleting once its found;		
					 next=curr->down;
					 SL[currentlevel].erase(curr++);
					 curr=next;
					 currentlevel--;
				 }
				  list<Node>::iterator test=SL[0].begin();
				  list<Node>::iterator testN=SL[0].end();
				  testN--;
				  while(test!=testN){         //I had to implement this loop since my delete would randomly not delete entirely a value.
					  if (test->value==key){  //I tried several thing but only managed to do it this way.
						  SL[0].erase(test++); //I Believe that passing the list as a reference would had made a difference.
					  }						   
					  test++;
				  }
				done = true;
				cout<<"Delete Comparisons: "<<nComparison<<endl;
				break;
			}
			if (key > curr->value){
				curr++;
				nComparison++;
			}
			if (key < curr->value){
				nComparison++;
				if (curr==last){
					done=true;
				}
				curr--;
				curr=curr->down;
				if(currentlevel>0){
					currentlevel--;
				}
			}
		}
		return nComparison;
}


ostream& operator<<(ostream& out,skipList& sList){
	int ninf=std::numeric_limits<int>::lowest();
	int inf=std::numeric_limits<int>::max();
	 for (int i = sList.maxlevel-1;i>=0;i--){
		list<Node>::iterator curre=sList.SL[i].begin();
		list<Node>::iterator temp=sList.SL[i].end();
		while(curre!=temp){
			if (curre->value==inf || curre->value==ninf){
				if (curre->value==inf){
					out<<"inf"<<" ";
					curre++;
				}
				if (curre->value==ninf){
					out<<"-inf"<<" ";
					curre++;
				}
			}
			else {
				out<<curre->value<<" ";
				curre++;
			}
				
		}
		out<<endl;
	}
    return out;
} 
istream& operator>>(istream& in, skipList& sList){
	int key;
	double TotalCost=0;
	while (!in.eof()){
		int a=0;
	  in >> key;
	a= sList.insert(key);  
	TotalCost=TotalCost+a;
  }
  cout<<endl<<"Average Cost for insertion: "<<TotalCost/15<<endl;
  return in;
}