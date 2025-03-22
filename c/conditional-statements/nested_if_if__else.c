#include <stdio.h>

int main() {
    int age= 18, weight=45;
    if(age >= 18){
        if(weight >= 50){
            printf("You can donate");
        }else{
            printf("You can not donate");
        }
    }else{
        printf("You can not donate");
    }
    return 0;
}