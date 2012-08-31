# Euler problem 10

# naive sieve algoritm
def sieve(max_n):
    x = [n for n in range(2,max_n+1)]
    i = 0
    while i < len(x):
        j = i + 1
        while j < len(x):
            if x[j] % x[i] == 0:
                del x[j]
            else:
                j += 1
        i += 1
    return x

# optimized sieve algorithm
def sieve2(max_n):
    x = [n for n in range(2,max_n+1)]
    i = 0
    while i < len(x):
        if x[i] == 0:
            i += 1
            continue
        j = i + x[i]
        while j < len(x):
            x[j] = 0
            j += x[i]
        i += 1
    return x

def euler10():
    return sum(sieve2(2000000))
