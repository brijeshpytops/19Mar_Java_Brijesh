#include <stdio.h>

int main() {
    if (remove("sample.txt") == 0) {
        printf("File deleted successfully.\n");
    } else {
        printf("Error: Unable to delete the file.\n");
    }
    return 0;
}

