#include <iostream>
using namespace std; 

class math{
    public:
    int add(){
        return 5 + 10;
    }
    
};

int main() {
    math m;
    cout<<m.add();


    return 0;
}


//default constructor : A constructor in C++ is a special member function of a class that is automatically called when an object of the class is created. It is used to initialize the object’s data members.

#include <iostream>
using namespace std; 

class math{
    public:
    // default constructor
    math(){
        cout<<(5 + 10);
    }
    
};

int main() {
    math m;



    return 0;
}

//parametarized constructor : A constructor that takes arguments to initialize the object with specific values.

#include <iostream>
using namespace std; 

class math{
    public:
    // parametarized constructor
    math(int a, int b){
        cout<<(a + b)<<endl;
    }
    
};

int main() {
    math m(5, 10), obj(100, 200);



    return 0;
}

// Copy Constructor : A constructor that creates a new object by copying an existing object.

#include <iostream>
using namespace std; 

class MyClass {
    public:
    int x;
    
    MyClass(int val){
        x = val;
        cout<<x;
    };
    
    MyClass(const MyClass &obj){
        x = x + obj.x;
        cout<<x;
    };
};

int main() {
    MyClass m(10);

    return 0;
}