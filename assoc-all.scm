(define assoc-all
  (lambda (sym alist)
    (if (null? alist)
        '()
        (if (equal? sym (caar alist))
            (cons (cdar alist) (assoc-all sym (cdr alist)))
            (assoc-all sym (cdr alist))))))