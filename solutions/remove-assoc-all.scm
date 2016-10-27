(define remove-assoc-all
  (lambda (sym alist)
    (if (null? alist)
        '()
        (if (equal? sym (caar alist))
            (remove-assoc-all sym (cdr alist))
            (cons (car alist) (remove-assoc-all sym (cdr alist)))))))
            