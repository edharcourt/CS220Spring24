#include <stdint.h>
#include "sum.h"

int64_t sum(int64_t vec[], int64_t n) {

    int64_t sum = 0;
    int i = 0;

    while (i < n)
        sum = sum + vec[i++];

    return sum;
}
