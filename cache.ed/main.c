#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "avg_mat.h"
#include "init.h"

int main(int argc, char *argv[]) {

    int r = atoi(argv[1]);
    int c = atoi(argv[1]);

    int *M = malloc(r * c * sizeof(int)); 

    init(r, c, M);
    printf("%1.f\n", avgM(r, c, M));
}
