#include <stdio.h>

int main() {
    int ptr = 10;
    int *x;
    int **y;
    x = &ptr;
    y = &x;
    printf("%d\n", ptr);
    printf("%d\n", x);
    printf("%d\n", *x);
    printf("%d\n", **y);

    return 0;
}


#include <stdio.h>
#include <stdlib.h> 
int main() {
    int* ptr; 
    int size; 
    
    printf("Enter size of elements:"); 
    scanf("%d", &size); 
    
    ptr = (int*)malloc(size * sizeof(int));
    
    
    if (ptr == NULL) { 
        printf("Memory not allocated.\n"); 
    } else {
        for (int row = 0; row < size; ++row) { 
            ptr[row] = row + 11; 
        }
        
        for (int k = 0; k < size; ++k) { 
            printf("%d, ", ptr[k]); 
        } 
    }
  

    return 0;
}



#include <stdio.h>
#include <stdlib.h> 
int main() {
    int* ptr; 
    int size; 
    
    printf("Enter size of elements:"); 
    scanf("%d", &size); 
    
    ptr = (int*)calloc(size, sizeof(int));
    
    
    if (ptr == NULL) { 
        printf("Memory not allocated.\n"); 
    } else {
        for (int row = 0; row < size; ++row) { 
            ptr[row] = row + 11; 
        }
        
        for (int k = 0; k < size; ++k) { 
            printf("%d, ", ptr[k]); 
        } 
    }
  

    return 0;
}


// --------reallocate
// C program to resize dynamic array using realloc() 
// function 

#include <stdio.h> 
#include <stdlib.h> 

int main() 
{ 

	// address of the block created hold by this pointer 
	int* ptr; 
	int size = 5; 


	// Memory allocates dynamically using calloc() 
	ptr = (int*)calloc(size, sizeof(int)); 

	if (ptr == NULL) { 
		printf("Memory not allocated.\n"); 
		exit(0); 
	} 
	else { 
		printf("Memory successfully allocated using "
			"calloc.\n"); 
	} 

	// inserting elements 
	for (int j = 0; j < size; ++j) { 
		ptr[j] = j + 1; 
	} 

	printf("The elements of the array are: "); 
	for (int k = 0; k < size; ++k) { 
		printf("%d, ", ptr[k]); 
	} 

	printf("\n"); 

	size = 10; 

	int *temp = ptr; 

	// using realloc 
	ptr = realloc(ptr, size * sizeof(int)); 
	if (!ptr) { 
		printf("Memory Re-allocation failed."); 
		ptr = temp; 
	} 
	else { 
		printf("Memory successfully re-allocated using "
			"realloc.\n"); 
	} 

	// inserting new elements 
	for (int j = 5; j < size; ++j) { 
		ptr[j] = j + 10; 
	} 

	printf("The new elements of the array are: "); 
	for (int k = 0; k < size; ++k) { 
		printf("%d, ", ptr[k]); 
	} 

    free(ptr);
	return 0; 
}
