#include <iostream>
using namespace std;

class Info1{
    public:
    string display(){
        return "i am from parent class";
    };
};
class Info2:public Info1{
    public:
    string display(){
        return "i am from child class";
    };
};



int main() {
    
   Info2 obj;
   cout<<obj.display();
   
   return 0;
}


// method overriding
#include <iostream>
using namespace std;

class Info1{
    public:
    virtual string display(){
        return "i am from parent class";
    };
};
class Info2:public Info1{
    public:
    string display(){
        return "i am from child class";
    };
};



int main() {
    
  Info1* obj1;
  Info2 obj2;
  
  obj1= &obj2;
  cout<<obj1->display();
   
   return 0;
}