def isPrime(n, knownPrimes):
    for p in reversed(knownPrimes):
        if n % p == 0:
            return False
#        if p > (n / 2):
#            return True
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
