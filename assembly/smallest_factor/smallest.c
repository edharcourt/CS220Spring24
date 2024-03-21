
#include <stdint.h>
#include "smallest.h"

int64_t smallest(int64_t n) {

    int i = 2;

    while (n % i != 0)
        i++;

    return i;

}
