#include <iostream>
using namespace std; 

class Private{
    protected:
    int pin1 = 1234; 
    private:
    int pin2 = 5678;
};

class Friend:public Private{
    public:
    void use_pin(){
        cout<<pin1;
        cout<<pin2; // is private within this context
    }
};

int main() {
    
    // Private obj;
   
    // cout<<obj.pin1<<endl;
    // cout<<obj.pin2;
    
    Friend obj;
    obj.use_pin();
    return 0;
}