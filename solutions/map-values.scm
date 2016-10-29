;;; Coursework 01
;;; Question 04
;;; Fraser Crossman (fc4g15@soton.ac.uk)
;;;

;;; Solution:

(define map-values
  (lambda (alist f)
    (if (null? alist)
        '()
        (cons (cons (caar alist) (f (cdar alist))) (map-values (cdr alist) f)))))

;;; Solution Comments:
;;; To construct the association list of mapped values from the specified 
;;; association list the following method was used.
;;; 
;;; Basis case:
;;; The list is null as either the list passed was empty or the end has 
;;; been reached. The empty list is returned.
;;;
;;; Inductive case:
;;; Recursively traverse the association list, and using the value of 
;;; the key of the first association in the list on each call construct
;;; a nested pair. The outer pairs car points to the inner pair, and the cdr 
;;; points to the recursively determined list of other nested pairs using the 
;;; rest of the passed association list and the function passed.
;;;
;;; The inner pairs car points to the value of the key of the first association 
;;; in the list, and the cdr points to the value the key is associated with in 
;;; passed association list with the passed function applied to it.
;;;            
