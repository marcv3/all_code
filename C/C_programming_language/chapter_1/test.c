#include <stdio.h>

int power(int m, int n, char from[]);

// test power function
main()
{
	int i;
	char from[100];

	for (i = 0; i < 10; ++i)
		printf("%d %d %d\n", i, power(2,i,from), power(-3,i,from));
	return 0;
}

// power: raise base to n-th power; n >= 0
int power(int base, int n, char from[])
{
	int i, p;

	p = 1;
	for (i = 1; i <= n; ++i)
		p = p * base;
	return p;
}
