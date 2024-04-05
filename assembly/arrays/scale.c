#include <stdint.h>

// a function scale that multiplies each element 
// by an integer, modifying the original array
void scale(int64_t vec[], int64_t n) {  // size_t is an unsigned int
    int64_t i = 0;

    while (i < n) {
        vec[i] = vec[i] * n;
        i++;
    }
}

// STUDY QUESTION 
