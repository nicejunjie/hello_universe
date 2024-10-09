#include <stdio.h>

int main() {
    #pragma acc parallel
    {
        printf("Hello, World from GPU!\n");
    }
    
    return 0;
}

