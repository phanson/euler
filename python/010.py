# Euler problem 10

# the following is reused from problem 7

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

# new functions are below:
	
def primeBelow(n):
    knownPrimes = [2,3,5]
    if n <= knownPrimes[-1]:
        x = 1
        for p in knownPrimes:
            if p <= n:
                x = p
        return x
    while knownPrimes[-1] <= n:
        knownPrimes.append(nextPrime(knownPrimes))
    return knownPrimes[-2]

def sumPrimesBelow(n):
    knownPrimes = [2,3,5]
    while knownPrimes[-1] <= n:
        knownPrimes.append(nextPrime(knownPrimes))
    t = 0
    for p in knownPrimes:
        if p > n:
            break
        t += p
    return t

# note: slooooooooooooooooooooooooooooooooooooooooow.
# future: use a sieve algorithm

def euler10():
	return sumPrimesBelow(2000000)
