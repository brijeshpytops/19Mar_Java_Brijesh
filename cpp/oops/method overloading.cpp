#include <iostream>
using namespace std;

class Math{
    public:
    int add(int a, int b){
        return a + b;
    }
    
    int add(int a, int b, int c){
        return a + b + c;
    }
};

int main() {
    
    Math m;
    cout<<m.add(10, 20, 30);
    return 0;
}