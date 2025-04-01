#include <stdio.h>
#include <string.h>

union book{
  char name[100];
  int pages;
  float price;
};

int main() {
    union book b1,b2;
    strcpy(b1.name, "java");
    b1.pages = 200;
    b1.price = 200.00;
    
    printf("Book B1 name: %s\n", b1.name);
    printf("Book B1 pages: %d\n", b1.pages);
    printf("Book B1 price: %.2f\n", b1.price);
    
    strcpy(b2.name, "python");
    b2.pages = 300;
    b2.price = 350.00;
    
    printf("Book B2 name: %s\n", b2.name);
    printf("Book B2 pages: %d\n", b2.pages);
    printf("Book B2 price: %.2f\n", b2.price);
    return 0;
}