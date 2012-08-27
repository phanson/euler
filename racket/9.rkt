#lang racket

; Euler problem 9

(define (euler9)
  (map
   triplet-product
   (filter
    is-pythagorean-triplet?
    (generate-triplets 1 1 1 1000)
    )
   )
  )

(define solution '((200 375 425)))

(define (generate-triplets a b c max)
  (cond [(<= max c) (generate-triplets a (+ b 1) 1 max)]
        [(<= max b) (generate-triplets (+ a 1) 1 c max)]
        [(<= max a) (list)]
        [(= (+ a b c) max) (cons (list a b c) (generate-triplets a b (+ c 1) max))]
        [else (generate-triplets a b (+ c 1) max)]))

(define (is-pythagorean-triplet? triplet)
  (let (
        [a (list-ref triplet 0)]
        [b (list-ref triplet 1)]
        [c (list-ref triplet 2)]
        )
    (and (< a b)
         (< b c)
         (= (+ (* a a) (* b b)) (* c c))
         )
    )
  )

(define (triplet-product triplet)
  (let (
        [a (list-ref triplet 0)]
        [b (list-ref triplet 1)]
        [c (list-ref triplet 2)]
        )
    (* a b c)))
