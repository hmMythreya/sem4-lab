#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "matrix.h"
void fill_matrix(int n, int x[n][n])
{
    srand(time(0));
    for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++) 
            x[i][j] = rand() % 10000;
    }
}

void disp_matrix(int n, int x[n][n]){
    for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++) {
            printf("%d\t", x[i][j]);
        }
        printf("\n");
    }
}

void add_matrix(int n, int x[n][n], int y[n][n]){
    printf("The added matrix is:\n");
    for(int i=0;i<n;i++){
        for(int j=0;j<n;j++){
            printf("%d\t",x[i][j]+y[i][j]);
        }
        printf("\n");
    }
}