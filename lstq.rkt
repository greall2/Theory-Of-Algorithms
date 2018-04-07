#lang racket

;creating a function that takes in 2 lists
(define (round l m)
    
        (cond
            ;checking if l is null 
            ((null? l) 
            '()
            ) 
            ;getting the difference between each list and powering the difference and cons it to a new list
            (else (cons (* (- (car l) (car m)) (- (car l) (car m))) (round (cdr l) (cdr m)) ) )
        
        );end cond
)

;creating a function that takes in 1 list
(define (sum l)
;checking if the list is null 
    (if (null? l)
    0
    ;Sum each element of list
        (+ (car l) (sum (cdr l)))
    )
)

;creating a function that takes in 2 lists
(define (lstq l m)

; adding the elements of the list cons'd by round function using the sum function
    (sum (round l m))
)

(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))