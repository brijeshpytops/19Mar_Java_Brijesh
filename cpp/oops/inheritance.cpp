// single inh.

#include <iostream>
using namespace std; 

class A{
    public:
    string a(){
        return "From Class A";
    }
};
class B:public A{
    public:
    string b(){
        return "From Class B";
    }
};

int main() {
    B b1;
    cout<<b1.a()<<endl;
    cout<<b1.b()<<endl;
    

    return 0;
}


// multilevel inh.
#include <iostream>
using namespace std; 

class A{
    public:
    string a(){
        return "From Class A";
    }
};
class B:public A{
    public:
    string b(){
        return "From Class B";
    }
};
class C:public B{
    public:
    string c(){
        return "From Class C";
    }
};

int main() {
    C obj;
    cout<<obj.a()<<endl;
    cout<<obj.b()<<endl;
    cout<<obj.c()<<endl;
    

    return 0;
}


// multiple inh.
#include <iostream>
using namespace std; 

class A{
    public:
    string a(){
        return "From Class A";
    }
};
class B{
    public:
    string b(){
        return "From Class B";
    }
};
class C:public A, public B{
    public:
    string c(){
        return "From Class C";
    }
};

int main() {
    C obj;
    cout<<obj.a()<<endl;
    cout<<obj.b()<<endl;
    cout<<obj.c()<<endl;
    

    return 0;
}


// hierarchical inh.

#include <iostream>
using namespace std; 

class Shape{
    public:
    string shape(){
        return "From shape";
    };
};
class Shape2d: public Shape{
    public:
    string shape2d(){
        return "From shape2d";
    };
};
class Circle: public Shape2d{
    public:
    string circle(){
        return "From circle";
    };
};
class Square: public Shape2d{
    public:
    string square(){
        return "From square";
    };
};


class Shape3d: public Shape{
    public:
    string shape3d(){
        return "From shape3d";
    };
};

class Cube: public Shape3d{
    public:
    string cube(){
        return "From cube";
    };
};



int main() {
    Cube obj;
    cout<<obj.cube()<<endl;
    cout<<obj.shape3d()<<endl;
    cout<<obj.shape()<<endl;
    
    
    Circle c;
    cout<<c.circle()<<endl;
    cout<<c.shape2d()<<endl;
    cout<<c.shape()<<endl;
    return 0;
}