#include "max.h"

int64_t max4(int64_t w, int64_t x, int64_t y, int64_t z) {
    return max(max(w,x),max(y,z));
} 
