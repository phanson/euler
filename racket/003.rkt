#lang racket

; Euler problem 3

(define (euler3)
  (car (reverse (factors 2 600851475143))))

(define (factors start n)
  (cond [(> start n) '()]
        [(integer? (/ n start))
         (cons start (factors start (/ n start)))]
        [else (factors (+ start 1) n)]))
