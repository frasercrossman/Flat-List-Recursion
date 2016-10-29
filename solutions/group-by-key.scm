;;; Coursework 01
;;; Question 03
;;; Fraser Crossman (fc4g15@soton.ac.uk)
;;;

;;; Solution:

(load "assoc-all.scm")
(load "remove-alist-all.scm")

(define group-by-key
  (lambda (alist)
    (if (null? alist)
        '()
        (cons (cons (caar alist) (assoc-all (caar alist) alist)) (group-by-key (remove-alist-all (caar alist) alist))))))

;;; Solution Comments:
;;; To construct the association list of grouped values using the specified 
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
;;; association list returned when the currently inspected key and passed 
;;; association list are passed to remove-alist-all. This means that as each 
;;; key is added to the resultant association list all other occurances of 
;;; itself are removed from the working association list.
;;;
;;; The inner pairs car points to the value of the key of the first association 
;;; in the list, and the cdr points to the association list returned when the 
;;; currently inspected key and passed association list are passed to assoc-all.
;;; This means that the inner pair consists of a unique key to value list where 
;;; the value list is a list of all values associationed with the key in the 
;;; originally passed association list.
;;;            
