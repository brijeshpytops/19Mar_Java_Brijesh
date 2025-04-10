#include <iostream>
using namespace std;

class ATM{
    private:
    int PIN =1234;
    
    friend void Bansi(const ATM &obj);
};

void Bansi(const ATM &obj){
    cout<<obj.PIN;
}

int main() {
    ATM p;
    Bansi(p);
   
   return 0;
}