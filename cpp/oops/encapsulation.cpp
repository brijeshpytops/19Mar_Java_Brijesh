
#include <iostream>
using namespace std; 

class ATM{
    // public:
    int PIN = 1234;  // by default private
    
    int use_pin(){
        cout<<PIN;
    }
    
};

int main() {
    
    ATM bansi;
    cout<<bansi.use_pin();
    cout<<bansi.PIN;


    return 0;
}

// 

#include <iostream>
using namespace std; 

class ATM{
    public:
    int PIN = 1234;  
    
    void use_pin(){
        cout<<PIN<<endl;
    }
    
};

int main() {
    
    ATM bansi;
    bansi.use_pin();
    cout<<bansi.PIN;


    return 0;
}