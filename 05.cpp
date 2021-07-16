constexpr int fibo(int n, int prev = 1, int curr = 0)
{
	if (n <= 0) return curr;
	else return fibo(n - 1, curr, prev + curr);
}

int main()
{
	return fibo(40);
}
