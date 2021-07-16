from sys import argv

def fibs(n):
    previous = 1
    current = 0
    for _ in range(n):
        previous, current = current, previous + current
    return current

print('fibs:', fibs(int(argv[1])))


def fibo(n, prev = 1, curr = 0):
    if n <= 0:
        return curr
    else:
        return fibo(n-1, curr, curr + prev)

print('fibo:', fibo(int(argv[1])))
