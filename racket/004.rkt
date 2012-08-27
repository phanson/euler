#lang racket

; Euler problem 4

(define (euler4)
  (palindrome-search 999 999 900 999))

(define (palindrome-search l r min max)
  (cond [(> l max) (palindrome-search max r min max)]
        [(> r max) (palindrome-search l max min max)]
        [(< l min) (palindrome-search max (- r 1) min max)]
        [(< r min) #f]
        [(is-palindrome? (* l r)) (cons l r)]
        [else (palindrome-search (- l 1) r min max)]))

(define (is-palindrome? n)
  (let [(nlist (num-to-list n))]
    (equal? nlist (reverse nlist))))

(define (num-to-list n)
  (if (= n 0) '()
      (cons (modulo n 10) (num-to-list (floor (/ n 10))))))
