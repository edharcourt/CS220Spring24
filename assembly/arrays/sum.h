#include <stdint.h>

// n  should really be an unsigned int 
// we're using an int64_t to be consistent
// with the X registers and signed instructions
int64_t sum(int64_t vec[], int64_t n);

