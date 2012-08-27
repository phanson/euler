#lang racket

(define (range a b)
  (if (> a b) '()
      (cons a (range (+ a 1) b))))

; Euler problem 6

(define (euler6)
  (e6compare 1 100))

(define (e6compare a b)
  (let [(r (range a b))]
    (- (expt (foldl + 0 r) 2)
       (foldl + 0 (map (λ (e) (expt e 2)) r)))
    )
  )
