#lang racket

;8. Write a function chse in Racket that takes three lists x, y and z of equal length and
;containing only 0’s and 1’s. It should return a list containing the elements of y in
;the positions y where x is 1 and the elements of z otherwise. For example:
;> (chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
;'(0 1 0 1 0 0 1 1)

; defining a function that takes in 3 lists
(define (chse x y z)
; checking if x is a null 
    (if (null? x)
        '()
        (cond
            ; if the first element of x = 1, then cons  the first element of y to a list and call the chse function to filter through the remainder of the list
            ((= 1 (car x)) (cons (car y) (chse (cdr x) (cdr y) (cdr z))))
            ;otherwise cons a list with the first element of z and then call the chse function for the remainer of the lists
            (else (cons (car z ) (chse (cdr x) (cdr y) (cdr z))))
        
        ); end cond
    );endif


) ;end chse

(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))