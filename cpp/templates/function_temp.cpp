#include <iostream>
using namespace std;

int add(int a , int b){
    return a+b;
}

int main() {
    cout<<add(10, 20);
    return 0;
}

// 

#include <iostream>
using namespace std;

template <typename F>
F add(F a , F b){
    return a+b;
}

int main() {
    cout<<add(10, 20)<<endl;
    cout<<add(10.5, 20.5)<<endl;
    return 0;
}
