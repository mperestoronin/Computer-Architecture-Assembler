#include <stdio.h>
void make_array(const int *A, int length, int *B) {
    for (int i = 0; i < length - 1; ++i) {
        B[i] = A[i] - A[i + 1];
    }
}
