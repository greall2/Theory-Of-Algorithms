#lang racket

;9. Write a function sod2 in Racket that takes three lists x, y and z of equal length and
;containing only 0’s and 1’s. It should return a list containing a 1 where the number of
;1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise.
;For example:
;> (sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
;'(0 1 1 0 1 0 0 1)

; defining a function that takes in 3 lists
(define (sod2 x y z)
    ;checking if x is null
    (if (null? x)
    '()
        
        (cond
        ;adding all first elements of eaach list and dividing by 2, and if there is no modulus then cons 0 to a list and recall the function for the remainders
            ((= 0  (modulo (+ (car x) (car y) (car z)) 2)) (cons 0 (sod2 (cdr x) (cdr y) (cdr z))))
            ;otherwise where there is a modulus then con 1 to a list and recall the function
            (else (cons 1 (sod2 (cdr x) (cdr y) (cdr z))))
       
        )))  
    

(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))