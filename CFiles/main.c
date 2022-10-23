#include <stdio.h>

extern void make_array(const int *A, int length, int *B);
extern void print_array(const int *B, int size);
extern void scan_array(int size, int* A);

int main(int argc, char *argv[]) {
    int size;
    int bool = 0;
    printf("input the size of the array. The size must be 2 or larger. If size is entered wrong, please enter it again \n");
    while (1) {
        scanf("%d", &size);
        if (size >= 2) {
            break;
        }
        printf("Incorrect Input! Try again! \n");
    }
    printf("Now enter array elements one by one \n");
    int A[size];
    int B[size - 1];
    scan_array(size, A);
    make_array(A, size, B);
    print_array(B, size);
}



