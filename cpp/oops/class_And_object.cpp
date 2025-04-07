// register 
//     - username
//     - email
//     - mobile
//     - password
//     - confirm_password

// loign :
//     - email/username/mobile
//     - password

// syntax of class:

// class ClassName{
//     data member - [Attributes or Properties]

//     member function - [method or behavior]
// };

// syntax of object:

// ClassName obj1, obj2;


#include <iostream>
using namespace std; 

class Person{
    // Access specifier
    public:
    // data member
    string name;
    int age;
    float weight;
    
    // member function
    string run(){
        return "I can run";
    }
    
    string speak(){
        return "I can speak";
    }
};

int main() {
    // Person p1, p2;
    // p1.name = "brijesh";
    // p1.age = 28;
    // p1.weight = 68;
    
    // cout<<p1.name<<endl;
    // cout<<p1.age<<endl;
    // cout<<p1.weight<<endl;
    // cout<<p1.run()<<endl;
    // cout<<p1.speak()<<endl;
    
    // p2.name = "bansi";
    // p2.age = 25;
    // p2.weight = 60;
    
    // cout<<p2.name<<endl;
    // cout<<p2.age<<endl;
    // cout<<p2.weight<<endl;
    // cout<<p2.run()<<endl;
    // cout<<p2.speak()<<endl;
    
    while(1){
        Person obj;
        string name_;
        int age_;
        float weight_;
        
        cout<<"Enter you name: ";
        cin>>name_;
        
        cout<<"Enter you age: ";
        cin>>age_;
        
        cout<<"Enter your weight: ";
        cin>>weight_;
        
        obj.name = name_;
        obj.age = age_;
        obj.weight = weight_;
        
        cout<<obj.name<<endl;
        cout<<obj.age<<endl;
        cout<<obj.weight<<endl;
        cout<<obj.run()<<endl;
        cout<<obj.speak()<<endl;
    }

    return 0;
}