function F_n = Fibonacci(n)

	A = [1, 1;
	     1, 0];

	x = [0;
	     1];

	y = A^n * x;

	F_n = y(1);

endfunction


printf("%d\n", Fibonacci(16))
