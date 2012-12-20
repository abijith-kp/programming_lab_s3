(define l '(1 24 55 89 100))
(define (grade x)
        (if (and (<= x 100) (>= x 90))
            "S"
            (if (and (<= x 89) (>= x 80))
                 "A"
                 (if (and (<= x 79)(>= x 70))
                      "B"
                      (if (and (<= x 69) (>= x 0))
                           "C")))))
                           
(define lgrade1 '())

(define (asgrd lst)
        ( if (not (null? l)
             ((cons (grade car(l)) lgrade1) (define t car(l)) (define l cdr(l)) (asgrd t )))
             
(define lgrade '())

(define (temp lgrade))
                     
                                          
            
