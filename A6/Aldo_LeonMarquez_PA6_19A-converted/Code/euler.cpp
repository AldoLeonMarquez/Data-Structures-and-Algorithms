/*
	*Name:    Aldo Leon Marquez 
	*Section: 501
	*UIN: 	  326004699
	*email:   allema98@tamu.edu
*/
#include "euler.h"
#include <vector>
#include <fstream>
#include <iostream>
#include <list>
#include <string>
using namespace std;

euler::euler(string filename){
	ifstream inFS;
    inFS.open(filename);
	inFS>>nNode;
	inFS>>nEdges;
	Vec.resize(nNode, vector<int> (nNode, 0));
	int i=nEdges;
	while (i>0){
		int inX=0;
		inFS>>inX;
		int inY=0;
		inFS>>inY;
		Vec[inX-1][inY-1]=1;
		Vec[inY-1][inX-1]=1;
		i--;
	}
	inFS.close();
	for (int i=0;i<Vec.size();i++){
		for (int j=0;j<Vec.size();j++){
			cout<<Vec[i][j]<<" ";
		}
		cout<<endl;
	}
	edges.resize(Vec.size(),0);
	Odd=0;
	for (int i=0;i<Vec.size();i++){
		for (int j=0;j<Vec.size();j++){
			if (Vec[i][j]==1){
				edges[i]++;
			}
		}
	}
}

bool euler::isEuler(){
	for (int i=0;i<edges.size();i++){
		if(edges[i] % 2 !=0){	
			Odd++;
			StartNode=i;
		}
	}
	if (Odd==0 || Odd == 2){
		cout<<"Could be drawn :)"<<endl; 
		if(Odd==0){
			StartNode=0;
		}	
		return true;
	}
	else {
		cout<<"Could not be drawn :("<<endl; 
		return false;
	}
}

void euler::drawPath(){
	 list <int> path; 
	 int A=0;
	 int Temp=StartNode;
	 vector<int> e=edges;
	 path.push_front(Temp+1);
	 vector<vector<int>> Copy=Vec;
	 while(A<=nEdges){
		for(int i=0;i<nNode;i++){
			if(Copy[Temp][i]==1){
				if(e[i]>1){
					path.push_front(i+1);
					Copy[Temp][i]=0;
					Copy[i][Temp]=0;
					e[Temp]--;
					e[i]--;
					Temp=i;
					break;
				}
				else if(e[i]==1 && A==nEdges ){
					path.push_front(i+1);
					Copy[Temp][i]=0;
					Copy[i][Temp]=0;
					e[Temp]--;
					e[i]--;
					break;
				}
			}
		}
		A++;//i wish 
	 }
	 if (path.size()-1!=nEdges){
		 StartNode++;
		 path.clear();
		 drawPath();
	 }
	 while(!path.empty()){
		cout<<path.back()<<"->";
		path.pop_back();
	 }	
	 return;
}