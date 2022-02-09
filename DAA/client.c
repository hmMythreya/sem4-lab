// create a small matrix
// display it
#include <stdio.h>
#include <time.h>
#include <math.h>
#include "matrix.h"

double time_elapsed(struct timespec start, struct timespec end)
{
	double t;
	t = (end.tv_sec - start.tv_sec);				   
	t += (end.tv_nsec - start.tv_nsec) * 0.000000001;  
	return t;
}
#if 0
	struct timespec start;
	struct timespec end;
	clock_gettime(CLOCK_REALTIME, &start);	
	clock_gettime(CLOCK_REALTIME, &end);	
	printf("time %lf \n",
			   time_elapsed(start, end));
#endif


int main()
{
	int n;
	scanf("%d", &n);
	int a[n][n]; // VLA : variable length array
	int b[n][n];
	fill_matrix(n, a);
	fill_matrix(n, b);
	disp_matrix(n, a);
	printf("\n\n");
	disp_matrix(n, b);
	printf("\n\n");
	struct timespec start;
	struct timespec end;
	clock_gettime(CLOCK_REALTIME, &start);
	add_matrix(n, a, b);
	clock_gettime(CLOCK_REALTIME, &end);	
	printf("time %lf \n",
			   time_elapsed(start, end));
}
