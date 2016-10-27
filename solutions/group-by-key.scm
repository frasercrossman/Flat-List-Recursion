(load "assoc-all.scm")
(load "remove-alist-all.scm")

(define group-by-key
  (lambda (alist)
    (if (null? alist)
        '()
        (cons (cons (caar alist) (assoc-all (caar alist) alist)) (group-by-key (remove-alist-all (caar alist) alist))))))
