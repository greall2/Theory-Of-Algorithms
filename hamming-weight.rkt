#lang racket

;5. Write a function hamming-weight in Racket that takes a list l as input and returns
;the number of non-zero elements in it. For example:
;> (hamming-weight (list 1 0 1 0 1 1 1 0))
;5

; initilising variable cnt to increment for every '1' in the list 
(define cnt 0)

(define (hamming-weigth l )
    ;if the list is not null 
    (if (null? l)
        cnt
        ;if the first elemnt of l = 1 than increment cnt by 1 and check the rest of the elements in the list 
        (if (= 1(car l))(+ 1 (hamming-weigth(cdr l)) )
         ;else not    
        (hamming-weigth (cdr l)

        
        
        ))
    )
)

(hamming-weigth (list 1 0 1 0 1 1 1 0))
(hamming-weigth (list 1 0 1 0 1 1 ))
(hamming-weigth (list 1 1 1 1 1 1))
