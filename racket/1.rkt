#lang racket

; Euler problem 1

(define (euler1)
  (foldl + 0 (mult 3 5 0 999)))

(define (mult a b min max)
  (cond [(> min max) '()]
        [(or (= (modulo min a) 0)
             (= (modulo min b) 0))
         (cons min (mult a b (+ min 1) max))]
        [else (mult a b (+ min 1) max)]))
