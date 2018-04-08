#lang racket

;3. Write, from scratch, two functions in Racket. The first is called lcycle. It takes a
;list as input and returns the list cyclically shifted one place to the left. The second
;is called rcycle, and it shifts the list cyclically shifted one place to the right.
;For example:
;> (lcycle (list 1 2 3 4 5))
;'(2 3 4 5 1)
;> (rcycle (list 1 2 3 4 5))
;'(5 1 2 3 4)



;creating a function that takes in 1 list
(define (lcycle a)
    ;function that takes in 2 lists
    (define (left a b)
        ;checking if a is null 
        (if(null? a)
            ;cons b to an empty list
            (cons b '())
            (cons (car a ) (left ( cdr a) b ) )  
        )
    ) ;end left
    
    (if(null? a)
        '()
        (left (cdr a) (car a))
    ) 

);end lcycle


(define (rcycle x)

    ; building a list without the value
    (define (right x)
        (if (null? (cdr x))
            '()
            (cons (car x ) (right (cdr x)) )
        
        )
    
    );end right

    (define (last x)
        (if (null? (cdr x))
        (car x)
        (last (cdr x)) 
        )
    );end last
    
    (if(null? x)
    '()
     (cons (last x) (right x))
    ) 

);end rcycle

(lcycle ( list 1 2 3 4))
(rcycle ( list 1 2 3 4))

