#lang racket

;1. Write, from scratch, a function in Racket that uses a brute-force algorithm that takes
;a single positive integer and return true if the number is a prime and false otherwise.
;Call the function decide-prime.
;===========================================================================================

;Prime number is a number that is divisible only by itself and 1 (e.g. 2, 3, 5, 7, 11).

;if a < 2 than it is not a prime number
(define (decide-prime a)
  (if(< a 2)
    #f
    ;else entering and passing a and 2 into the if--prime function
    (if-prime a 2)
))

(define (if-prime a b)
;if a is equal to 2 it is a prime
  (if (= a b)
    #t
    ;if a divided by 2 has no modulus it is not a prime
      (if (= (modulo a b) 0)
      #f
      (if-prime a (+ b 1)) ; brute force being applied 
      )
    )


)



(decide-prime 5)
(decide-prime 2)
(decide-prime 7)
(decide-prime 1)
(decide-prime 170)
(decide-prime 150)
(decide-prime 11)
(decide-prime 30)

