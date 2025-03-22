#include <stdio.h>

int main() {
    int score = 148;
    
    if (score >= 0 && score <= 100){
         if (score >= 80){
        printf("Class A");
    }else if (score >= 60){
        printf("Class B");
    }else if (score >= 40){
        printf("Class c");
    }else {
        printf("Sorry, you are failed");
    }
    }else{
        printf("Invalid score");
    }

    
   
    return 0;
}