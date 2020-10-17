#include <vector>
#include <list>
#include <string>	

using namespace std;

class euler{
	public:
	vector<vector<int>> Vec;
	vector<int> edges;
	int nEdges=0;
	int nNode=0;
	int Odd=0;
	int StartNode=0;
	euler(string in);
	bool isEuler();
	
	void drawPath();
};