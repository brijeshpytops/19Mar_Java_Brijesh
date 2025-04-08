#include <iostream>
using namespace std; 

class MyClass {
    private:
    int PIN;
    
    public:
    void setData(int p){
        PIN = p;
    }
    
    void getData(){
        cout<<PIN;
    }
};

int main() {
    MyClass m;
    m.setData(10);
    m.getData();

    return 0;
}