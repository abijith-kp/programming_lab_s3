(define (large l node)
        (if (null? l) '()
            (if (> (car l) node) (cons (car l) (large (cdr l) node))
                (large (cdr l) node))))
                
(define (small l node)
        (if (null? l) '()
            (if (< (car l) node) (cons (car l) (small (cdr l) node))
                (small (cdr l) node))))
                
(define (construct_bst l)
        (if (null? l) '()
            (list (car l) (construct_bst (small l (car l))) (construct_bst (large l (car l))))))

(define (search l n)
        (if (null? l) #f
            (if (eqv? (car l) n) #t
                (if (> (car l) n) (search (cadr l) n)
                    (search (caddr l) n)))))
                                                                
(define bt (construct_bst '(66 33 55 70 36 80)))        
(search bt 55)                                    
