#lang racket

;4. Write a function sublsum in Racket that takes a list (of integers) as input and returns
;a list of sublists of it that sum to zero. For this problem, you can use the
;combinations built-in function. Note the order of the sublists and their elements
;doesn’t matter. For example:
;> (sublsum (list 1 2 3 4 -5))
;'((2 3 -5) (-5 1 4))
;> (sublsum (list 1 2 3 4 5))
;'()



;creating a function that takes in a lilst
(define (sublsum a)
    ;check if the list is null
    (if (null? a)
        '()
        ;getting all combinations of the list a
        (combinations a)
    
    )
)
;creating a function that takes in one list 
(define (sum l)
    ;checkingn if the list is null
    (if (null? l)
    0
    ;Sum each element of list
        (+ (car l) (sum (cdr l)))
    )
)


(sublsum (list 1 2 3 4 -5))