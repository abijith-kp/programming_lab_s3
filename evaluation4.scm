(define (makelist a)
        '())


(define (insert l n)
        (if (null? l) (cons n l)
            (cons (insert1 (car l) n) '())))

(define (insert1 l n)
        (if (not (pair? l)) (if (> l n) (cons n l)
                                        (cons l n))
                (if (> (cdr l) n) (begin (set-car! (cons 0 (insert1 (car l) n)) (cdr l)) l)
                    (begin (set-car! (cons 0 l) n) l)))))

(define (search l n)
        (if (null? l) #f
            (search1 (car l) n))))

(define (search1 l n)
        (if (not (pair? l)) (if (= l n) #t
                                        (search1 (car l) n))
                (if (= (cdr l) n) #t
                    (search1 (car l) n))))


(define (delete l n)
        (if (null? l) #f
            (cons (delete1 (car l) n) '())))

(define (delete1 l n)
        (if (not (pair? l)) (if (= l n) '()
                                        (set-cdr! l '())
                (if (> (cdr l) n) (set-cdr! (insert1 (car l) n) (cdr l))
                    (set-cdr! l n)))))



