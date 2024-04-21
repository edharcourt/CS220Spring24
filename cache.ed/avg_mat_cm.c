#include "avg_mat.h"

// column major
double avgM(int r, int c, int *M) {

    int sum = 0;
    for (int i = 0; i < r; i++)
        for(int j = 0; j < c; j++)
            sum = sum + *(M + j*r + i);
            //sum = sum + M[i][j];


    return (double) sum / (r*c);
}
