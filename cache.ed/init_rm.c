#include <stdlib.h>
#include "init.h"

void init(int r, int c, int *M) {
        
    for (int i = 0; i < r; i++)
        for(int j = 0; j < c; j++) {
            int *p = M + i*c + j;
            *p = rand() % 1000;
        }
}
