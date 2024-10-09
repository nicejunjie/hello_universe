#include <stdio.h>
#include <stdlib.h>

// Declaration of the Fortran function
extern void calculate_square_(int* input, int* output);

int main() {
    int input = 7;
    int result;

    printf("Calculating the square of %d using Fortran function.\n", input);
    
    // Call the Fortran function
    calculate_square_(&input, &result);

    printf("The square of %d is %d.\n", input, result);

    return 0;
}
