#lang racket


;6. Write a function hamming-distance in Racket that takes two lists and returns the
;number of positions in which they differ. For example:
;> (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
;5

;initilising the variable cnt to calculate the hamming distance
(define cnt 0)
; defining hamming-distance function that takes in two lists
(define (hamming-distance a b)
    ;if list a is not null
    (if (null? a)
        cnt
        ;if list b is not null 
       (if(null? b)
            cnt 
            ; if the first element of a = b then cdr the rest of a & b
            
            (if (= (car a)(car b)) (hamming-distance (cdr a)(cdr b))
            (+ 1 (hamming-distance (cdr a)(cdr b))    )        

            )
        
        )
    ) 
    
)


(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
(hamming-distance(list 1 1 1 1)(list 1 0 1 1))
(hamming-distance (list 0 1 0 1 0 )(list 0 1 1 0 1))