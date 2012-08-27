# Euler problem 7

def isPrime(n, knownPrimes):
    for p in reversed(knownPrimes):
        if n % p == 0:
            return False
    return True

def nextPrime(knownPrimes):
    x = knownPrimes[-1] + 1
    while not isPrime(x, knownPrimes):
        x += 1
    return x

def nthPrime(n):
    knownPrimes = [2,3,5]
    if n <= len(knownPrimes):
        return knownPrimes[n-1]
    for _ in range(n - len(knownPrimes)):
        knownPrimes.append(nextPrime(knownPrimes))
    return knownPrimes[-1]

def euler7():
	return nthPrime(10000)
