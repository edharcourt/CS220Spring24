#include <stdint.h>
#include <stdio.h>
#include "sum.h"
#include "scale.h"

int main() {

   //int64_t grades [] = {86, 79, 99, 100, 68};
   //printf("%lld\n", sum(grades, 5));

   int64_t M[3][2] = { {1, 2}, {3, 4}, {5,6} };

   const int ROWS = 3;
   const int COLS = 2;

   int64_t * M2 = malloc(ROWS * COLS * sizeof(int64_t));

   scale2d(&M[0][0], 3, 2, 10);

}
