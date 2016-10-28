;;; Coursework 01
;;; Question 02
;;; Fraser Crossman (fc4g15@soton.ac.uk)
;;;

;;; Solution:

(define remove-alist-all
  (lambda (sym alist)
    (if (null? alist)
        '()
        (if (equal? sym (caar alist))
            (remove-alist-all sym (cdr alist))
            (cons (car alist) (remove-alist-all sym (cdr alist)))))))

;;; Solution Comments:
;;; To construct the association list of associations excluding those with 
;;; keys equivalent to the specified symbolic expression in the specified 
;;; association list the following method was used.
;;; 
;;; Recursively traverse the association list, inspecting the value of 
;;; the key of the first association in the list on each call.
;;;            
