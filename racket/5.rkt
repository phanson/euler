#lang racket

; Euler problem 5

(define (euler5)
  (smallest-div-by-range 2520 (range 1 20)))

(define (smallest-div-by-range min r)
  (if (is-div-by-range? min r) min
      (smallest-div-by-range (+ min 1) r)))

(define (is-div-by-range? n r)
  (foldl (λ (e r)
           (and (integer? (/ n e)) r))
         #t r))

(define (range a b)
  (if (> a b) '()
      (cons a (range (+ a 1) b))))
