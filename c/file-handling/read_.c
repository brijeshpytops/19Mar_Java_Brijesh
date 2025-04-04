

#include<stdio.h>

int main(){
    FILE *f;

    f = fopen("example.txt", "r");

    if (f == NULL){
        printf("File is not open");
        return 1;
    }

    char ch;
    while ((ch = fgetc(f)) != EOF) { // Read character by character
        putchar(ch);
    }

    fclose(f);

    printf("\nData read successfully");
    return 0;
}
