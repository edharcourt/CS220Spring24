#include <stdint.h>
#include <stdio.h>
#include "sum.h"

int main() {

   int64_t grades [] = {86, 79, 99, 100, 68};
   printf("%lld\n", sum(grades, 5));

}
