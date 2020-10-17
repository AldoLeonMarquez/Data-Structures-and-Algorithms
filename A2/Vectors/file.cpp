#include<fstream>
#include<iostream>

using namespace std;

int main(){
  ofstream ofs{"decreasing_10_2.txt"};

  int num = 100;
  while(num > 0){
    ofs << num << endl;
    num--;
  }

  return 0;
}
