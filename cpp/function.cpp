#include <iostream>
using namespace std;

int sq(int num){
    return num*num;
}

int main() {
    int nums[] = {1,2,3,4,5,6,7,8,9,10};
    
    int len = sizeof(nums)/sizeof(nums[0]);
    
    for(int start = 1; start<=len; start++){
        cout<<sq(start)<<endl;
    }
    return 0;
}