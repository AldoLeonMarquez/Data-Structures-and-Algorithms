#include "euler.h"
#include <iostream>
#include <vector>
#include <fstream>
#include <string>

using namespace std;


int main() {
	cout<<"Graph 1:"<<endl;
	euler One("graph1.data"); 
	cout<<endl;
	if(One.isEuler()){
		One.drawPath();
	}
	cout<<endl<<endl;
	cout<<"Graph 2:"<<endl;
	euler Two("graph2.data");
	cout<<endl;
	if(Two.isEuler()){
		Two.drawPath();
	}
	cout<<endl<<endl;
	cout<<"Graph 3:"<<endl;
	euler Three("graph3.data");
	cout<<endl;
	if(Three.isEuler()){
		Three.drawPath();
	}
	cout<<endl<<endl;
	cout<<"Graph 4:"<<endl;
	euler Four("graph4.data");
	cout<<endl;
	if(Four.isEuler()){
		Four.drawPath();
	}
	cout<<endl<<endl;
	cout<<"Graph 5:"<<endl;
	euler Five("graph5.data");
	cout<<endl;
	if(Five.isEuler()){
		Five.drawPath();
	}
	cout<<endl<<endl;
	cout<<"Graph 6:"<<endl;
	euler Six("graph6.data");
	cout<<endl;
	if(Six.isEuler()){
		Six.drawPath();
	}
	cout<<endl<<endl;
	cout<<"Graph 1(txt):"<<endl;
	euler Seven("g1.txt");
	cout<<endl;
	if(Seven.isEuler()){
		Seven.drawPath();
	}
	cout<<endl<<endl;
	cout<<"Graph 2(txt):"<<endl;
	euler Eight("g2.txt");
	cout<<endl;
	if(Eight.isEuler()){
		Eight.drawPath();
	}
	cout<<endl<<endl;
	cout<<"Graph 3(txt):"<<endl;
	euler Nine("g3.txt");
	cout<<endl;
	if(Nine.isEuler()){
		Nine.drawPath();
	}
	cout<<endl<<endl;
	cout<<"Graph 4(txt):"<<endl;
	euler Ten("g4.txt");
	cout<<endl;
	if(Ten.isEuler()){
		Ten.drawPath();
	}
	cout<<endl<<endl;
	cout<<"Graph 5(txt):"<<endl;
	euler Eleven("g5.txt");
	cout<<endl;
	if(Eleven.isEuler()){
		Eleven.drawPath();
	}
	cout<<endl<<endl;
	cout<<"Graph 6(txt):"<<endl;
	euler Twelve("g6.txt");
	cout<<endl;
	if(Twelve.isEuler()){
		Twelve.drawPath();
	}
	cout<<endl<<endl;
	cout<<"Graph 7(txt):"<<endl;
	euler Thirteen("g7.txt");
	cout<<endl;
	if(Thirteen.isEuler()){
		Thirteen.drawPath();
	}
	cout<<endl<<endl;
	cout<<"Graph 8(txt):"<<endl;
	euler Fourteen("g8.txt");
	cout<<endl;
	if(Fourteen.isEuler()){
		Fourteen.drawPath();
	}
	cout<<endl<<endl;
	cout<<"Graph 9(txt):"<<endl;
	euler fifteen("g9.txt");
	cout<<endl;
	if(fifteen.isEuler()){
		fifteen.drawPath();
	}
	cout<<endl<<endl;
	cout<<"Graph 10(txt):"<<endl;
	euler Sixteen("g10.txt");
	cout<<endl;
	if(Sixteen.isEuler()){
		Sixteen.drawPath();
	}
	cout<<endl<<endl;

	return 0;
}

/*
vector<vector<int>> vertex;
	for (int i=0;i<5;i++){
		vertex.push_back(vector<int>() );
			vertex[i].push_back(i+1);			
	}
	for (int i=0;i<5;i++){
		for (int j=0;j<5;j++){
			cout<<vec[i][j]<<" ";
			if (vec[i][j]==1){
				vertex[i].push_back(j+1);
			}
		}
		cout<<endl;
	}
	cout<<endl<<endl;
	for (int i=0;i<5;i++){
		for (int j=0;j<vertex[i].size();j++){
			if(j==(vertex[i].size()-1)){
				cout<<vertex[i][j];
			}
			else
				cout<<vertex[i][j]<<"->";
		}
		cout<<endl;
		
	}
	*/
	