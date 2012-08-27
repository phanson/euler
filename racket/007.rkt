#lang racket

; Euler problem 7

(define (euler7)
  (car (primes 10002)))

(define (nph h prime-list)
  (if (= (foldl (λ (p r) (+ r (if (= (remainder h p) 0) 1 0))) 0 prime-list) 1)
      (cons h prime-list)
      (nph (+ h 1) prime-list)
      )
  )

(define (next-prime prime-list)
  (nph (+ 1 (car prime-list)) prime-list)
  )

(define (primes n)
  (if (< n 4)
      (list-tail (list 3 2 1) (- 3 n))
      (next-prime (primes (- n 1)))
      )
  )