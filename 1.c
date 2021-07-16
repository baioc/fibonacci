int fib(int n)
{
	if (n < 2) return n;
	else       return fib(n-1) + fib(n-2);
}


#include <stdio.h>
#include <stdlib.h>
int main(int argc, char const *argv[])
{
	printf("%i\n", fib(atoi(argv[1])));
}
