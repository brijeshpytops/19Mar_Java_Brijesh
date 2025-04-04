
#include<stdio.h>

int main(){
    FILE *f;

    f = fopen("example.txt", "w");

    if (f == NULL){
        printf("File is not open");
        return 1;
    }

    fprintf(f, "This is a java code.");
    fclose(f);

    printf("Data added successfully");
    return 0;
}
