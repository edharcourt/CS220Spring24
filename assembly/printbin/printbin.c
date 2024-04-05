#include "printbin.h"
#include <stdint.h>
#include <stdio.h>

void printbin(int64_t n) {
    if (n == 0)
        printf("%d", 0);
    else {
        printbin(n >> 1);
        printf("%d", n & 1);
    }
}
