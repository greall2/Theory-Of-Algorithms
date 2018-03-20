#lang racket

(define (collatz-list a)
    (cond
        ;End when a is 1 
        ((= a 1) '(1))
        ;checking if a is odd
        ((= (modulo a 2)1) 
            ;if odd then multiply by 3 and add 1 and add it to list
           (cons a (collatz-list (+ (* a 3) 1))))
        (else
        ;if even divide by 2 and add to list
            (cons a (collatz-list(/ a 2)))

        )

    )
)

(collatz-list 5)
(collatz-list 9)
(collatz-list 2)