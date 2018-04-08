# Theory-Of-Algorithms

This repo is part of a C.A. for Theory of Algorithms Module in 4th year Software Development, GMIT.

The C.A. consists of multiple problems to be completed in the racket programming language.

### Racket
Racket formally known at PLT Scheme is a multi-paradigm promgramming language.
Rackets main goal is to serve as a platform for language creation, design and implementation.
Racket is the worlds first ecosystem for developing and deploying new languages
To download Racket click on the following link and follow instructions.
> https://download.racket-lang.org/

#### Running a racket file without using the DR Racket IDE:
* Create a file in an IDE of your chioce
* Ensure you have '#lang racket' at top top of the file
* Save the file with the extension rkt meaning racket
* In the cmd then direct to the folder in which your file is saved
* Run the file by using the command :
> racket filename.rkt

#### Some Keywords in Racket I used in my solutions
> #### cons
> Used for building lists.

> #### list
> Shorthand for creating a list

> #### define
> Giving a function a name and defining what the function takes in 

> #### car
> Used in non-empty lists only and outputs the first element of the list

> #### cdr
> Returns the list without the first element

> #### cond
> Chains a series of tests to select a result expression.

> #### combinations
> Function in racket that gives lists of all possible combinations of the in put list

#### prime.rkt
1. Write, from scratch, a function in Racket that uses a brute-force algorithm that takes

a single positive integer and return true if the number is a prime and false otherwise.

Call the function decide-prime

#### collatz.rkt
Write, from scratch, a function in Racket that takes a positive integer n0 
as input and returns a list by recursively applying the following operation, 
starting with the input number.

End the recursion when (or if) the number becomes 1. Call the function collatz-list.
So, collatz-list should return a list whose first element is n0, 
the second element is n1, and so on. For example:

 (collatz-list 5)
 
'(5 16 8 4 2 1)

 (collatz-list 9)
 
'(9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1

 (collatz-list 2)
 
'(2 1)


#### cycles.rkt
3. Write, from scratch, two functions in Racket. The first is called lcycle. 
It takes a list as input and returns the list cyclically shifted one place to the left. 
The second is called rcycle, and it shifts the list cyclically shifted one place to the right.
For example:

 (lcycle (list 1 2 3 4 5))
 
'(2 3 4 5 1)

(rcycle (list 1 2 3 4 5))

'(5 1 2 3 4)

#### sublsum.rkt
4. Write a function sublsum in Racket that takes a list (of integers) as input and returns
a list of sublists of it that sum to zero. For this problem, 
you can use the combinations built-in function. Note the order of 
the sublists and their elements doesn’t matter. For example:

 (sublsum (list 1 2 3 4 -5))
 
'((2 3 -5) (-5 1 4))

 (sublsum (list 1 2 3 4 5))
 
'()

#### hamming-weigth.rkt
5. Write a function hamming-weight in Racket that takes a list l as input and returns
the number of non-zero elements in it. For example:

(hamming-weight (list 1 0 1 0 1 1 1 0))

5

#### hamming-distance.rkt
6. Write a function hamming-distance in Racket that takes two lists and returns the
number of positions in which they differ.

For example:

(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))

5

#### maj.rkt
7. Write a function maj in Racket that takes three lists x, y and z of equal 
length and containing only 0’s and 1’s. It should return a list 
containing a 1 where two or more of x, y and z contain 1’s, and 0 otherwise. 

For example:

(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))

'(0 0 0 1 0 1 1 1)

#### chse.rkt
8. Write a function chse in Racket that takes three lists x, y and z of equal 
length and containing only 0’s and 1’s. It should return a list containing 
the elements of y in the positions where x is 1 and the elements of z otherwise. 

For example:

(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))

'(0 1 0 1 0 0 1 1)


#### sod2.rkt
9. Write a function sod2 in Racket that takes three lists x, y and z of equal length 
and containing only 0’s and 1’s. It should return a list containing a 1 where 
the number of 1’s in a given position in x, y and z contains an 
odd nubmer of 1’s, and 0 otherwise.

For example:

(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))

'(0 1 1 0 1 0 0 1)

#### lstq.rkt
10. Write a function lstq in Racket that takes as arguments two lists l and m 
of equal length and containing numbers. It should return d, the 
distance given by the sum of the square residuals between 
the numbers in the lists:

This means take the i element of m from the i element of l and square the result
for all i. Then add all of those to get d.

For example:

 (lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))

54.61





### References:
* [Racket Docs](https://docs.racket-lang.org/)
* [Racket Download](https://download.racket-lang.org/)
* [Racket example Repo](https://github.com/theory-of-algorithms/example-scheme)




