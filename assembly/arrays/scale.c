#include <stdint.h>
#include "scale.h"

// a function scale that multiplies each element 
// by an integer, modifying the original array
void scale(int64_t vec[], int64_t n) {  // size_t is an unsigned int
    int64_t i = 0;

    while (i < n) {
        vec[i] = vec[i] * n;
        i++;
    }
}


void scale2d(int64_t *M, int64_t rows, int64_t cols, int64_t factor) {

    for (int y = 0; y < rows;  y++)
        for (int x = 0; x < cols; x++) {
            // M[y][x] = M[y][x] * factor;
            int64_t *p = M + y*cols + x;  // calculate the address of the 
            *p = *p*factor;               // matric value being scaled
        }
}
