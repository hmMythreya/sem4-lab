#ifndef MATRIX_H
#define MATRIX_H
// what type is x?
void fill_matrix(int n, int x[n][n]);
void disp_matrix(int n, int x[n][n]);
void add_matrix(int n, int a[n][n], int b[n][n]);
#endif

/*
single D array : parameter : pointer
2 D array : parameter : pointer to a row
void foo(int x[5])
{
}
// void bar(int** b) // NO
// void bar(int b[][]) // NO
// void bar(int b[][4]); // ok
// void bar(int (*b)[4]); // ok


int main()
{
	int a[5];
	foo(a);
	int b[6][4];
	bar(b);
}
*/
