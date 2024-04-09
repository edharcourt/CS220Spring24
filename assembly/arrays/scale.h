#include <stdint.h>

void scale(int64_t vec[], int64_t n);
void scalea(int64_t *vec, int64_t n);

// If using the  [][] notation you must specify 
// the number of columns. Nuisance.
void scale2da(int64_t M[][10], int64_t rows, int64_t factor);

// Array memory is allocated non-contiguously
// rows could be scattered across memory, not necessarily right next to 
// each other.  ArrayList<ArrayList<Long>>
void scale2db(int64_t **M, int64_t rows, int64_t cols, int64_t factor);
void scale2dc(int64_t *M[], int64_t rows, int64_t cols, int64_t factor);

// view a 2D array as a contiguous sequence of elements in a single 
// Dimensional array
void scale2d(int64_t *M, int64_t rows, int64_t cols, int64_t factor);
