#include <iostream>
using namespace std;

int main() {
    int num = 10;
    int flag = num/2 + 1;
    
    for(int eo = 1; eo<=num; eo++){
        if(eo % 2 != 0){
            // left to right
            for(int row = 1; row <= num; row++){
                for(int col = 1; col <=row-1; col++){
                    cout<<"  ";
                }
                for(int col = 1; col<=num; col++){
                    if (col == 1 || col == num || row == 1 || row==num){
                        cout<<"* ";
                    }else{
                        if(row==flag && col==flag && row==col){
                            cout<<eo;
                        }else{
                            cout<<"  ";
                        }
                        
                    }
                    
                }
                cout<<endl;
            }
        }else{
            // right to left
            for(int row = 1; row <= num; row++){
                for(int col = 1; col <=num-row; col++){
                    cout<<"  ";
                }
                for(int col = 1; col<=num; col++){
                    if (col == 1 || col == num || row == 1 || row==num){
                        cout<<"* ";
                    }else{
                        if(row==flag && col==flag && row==col){
                            cout<<eo;
                        }else{
                            cout<<"  ";
                        }
                    }
                }
                cout<<endl;
            }
        }
    }
    return 0;
}