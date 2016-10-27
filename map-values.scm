(define map-values
  (lambda (alist f)
    (if (null? alist)
        '()
        (cons (cons (caar alist) (f (cdar alist))) (map-values (cdr alist) f)))))