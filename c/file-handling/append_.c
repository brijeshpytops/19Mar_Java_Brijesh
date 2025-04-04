#include<stdio.h>

int main(){
    FILE *f;

    f = fopen("example.txt", "a");

    if (f == NULL){
        printf("File is not open");
        return 1;
    }

    fputs("\n Appending new line - 1!\n Appending new line - 2!", f);

    fclose(f);

    printf("\nData append successfully");
    return 0;
}
