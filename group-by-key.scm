(load "assoc-all.scm")
(load "remove-assoc-all.scm")

(define group-by-key
  (lambda (alist)
    (if (null? alist)
        '()
        (cons (cons (caar alist) (assoc-all (caar alist) alist)) (group-by-key (remove-assoc-all (caar alist) alist))))))