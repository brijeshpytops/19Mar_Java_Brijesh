#include <stdio.h>

int main() {
    int res = rename("example.txt", "sample.txt");
    printf("%d", res);
    return 0;
}

