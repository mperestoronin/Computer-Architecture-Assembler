#include <stdio.h>
void scan_array(int size, int* A) {
    for (int i = 0; i < size; ++i) {
        scanf("%d", &A[i]);
    }
}
