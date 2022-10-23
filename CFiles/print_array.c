#include <stdio.h>
void print_array(const int *B, int size) {
    printf("\n Array B is: ");
    for (int i = 0; i < size - 1; ++i) {
        printf("%d ", B[i]);
    }
    printf("\n");
}
