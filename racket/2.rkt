#lang racket

; Euler problem 2

(define (euler2)
  (foldl (λ (num result) (if (= (modulo num 2) 0) (+ num result) result)) 0 (fibrange 0 4000000)))

(define (fibrange start max)
  (let ([curr (fib start)])
    (if (< curr max)
        (cons curr (fibrange (+ start 1) max))
        '())
    )
  )

(define (fib n)
  (cond [(< n 2) n]
        [else (+ (fib (- n 1)) (fib (- n 2)))]))
