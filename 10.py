from math import sqrt
from sys import argv

PHI = (1 + sqrt(5)) / 2  # golden ratio number
PSI = 1 - PHI            # and its complement

def f(n):
    return round((PHI**n - PSI**n) / sqrt(5))

print(f(int(argv[1])))
