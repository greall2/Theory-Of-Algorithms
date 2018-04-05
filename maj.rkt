#lang racket

;7. Write a function maj in Racket that takes three lists x, y and z of equal length and
;containing only 0’s and 1’s. It should return a list containing a 1 where two or more
;of x, y and z contain 1’s, and 0 otherwise. For example:
;> (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
;'(0 0 0 1 0 1 1 1)


; defining a function that takes in 3 lists 
(define (maj x y z)
    ;checking if x is null
    (if (null? x)
        '()
        (cond 
        ;if the first element of x = first element of y then cons it to a list and then call the maj function to do the same for the remaining elements
           ( (= (car x) (car y)) (cons (car x)(maj (cdr x)(cdr y)(cdr z))))
           ;repeating above but with list x and z
            ((= (car x) (car z))  (cons (car x)(maj (cdr x)(cdr y)(cdr z))))
            ;otherwise cons a list with the first element of y and then go through the remainder of lists
            (else  (cons (car y) (maj (cdr x)(cdr y)(cdr z))  ) )    
        );end cond
        
    );end if 
    
)

(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))