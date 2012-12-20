(define (append1 l m)
        (if (null? l) m
            (cons (car l) (append (cdr l) m))))
                                
                              
(define (sum y z)
        (if (= z 1) 1
            (if (= y 0) 0
                (+ z (sum (- y 1) z)))))
                        
(define (power x y)
        (if (= x y) #t 
            (if (> x y) (if (= y 1) #f (power x (sum y y)))
                #f)))


(define (check l x)
        (if (null? l) '()
        (if (power (car l) x) (cons (car l) (check (cdr l) x))
            (check (cdr l) x))))


(define (create_list l m)
        (if (or (null? l) (null? m)) '()
            (append1 (check l (car m)) (create_list l (cdr m)))))
            
            
(create_list '(12 36 25 77) '(5 22 3 36 6 1))            
            
            
            
            
            
            
            
            
            
            
            
            
              
