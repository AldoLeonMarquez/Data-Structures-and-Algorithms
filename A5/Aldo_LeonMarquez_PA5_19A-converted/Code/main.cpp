#include "skipList.h"
#include <iostream>
#include <vector>
#include <fstream>
#include <list>
#include <ctime>
using namespace std;



int main(){
	srand(time(0));
	skipList a;
	ifstream inFS;
    inFS.open("test");
	cout<<"Coin Flips for every inserted value: "<<endl<<endl;
	inFS >> a; 
	inFS.close();
	cout<<endl<<"Full List"<<endl<<endl;
	cout<<a<<endl;
	
	double TotalSCost=0;
	for(int i=0;i<15;i++){
		int T=0;
		T=a.search(i+1);
		TotalSCost=T+TotalSCost;
	}
	cout<<endl;
	double TotalDCost=0;
	for(int i=0;i<15;i++){
		int T=0;
		T=a.deletion(i+1);
		TotalDCost=T+TotalDCost;
	}
	cout<<endl<<"Average Search Cost: "<<(TotalSCost/15)<<endl;
	cout<<endl<<"Average Delete Cost: "<<(TotalDCost/15)<<endl;
	cout<<endl<<endl<<a;
	a.clear();
	cout<<endl<<"List after clear"<<endl<<endl;
	cout<<a;
}