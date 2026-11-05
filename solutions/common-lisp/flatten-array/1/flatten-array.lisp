(defpackage :flatten-array
  (:use :cl)
  (:export :flatten))

(in-package :flatten-array)

(defun flatten (nested)
  "Flatten an array and remove NIL"
  (remove-if 'null
             (cond
               ((null nested) nil)
               ((atom (car nested)) (cons (car nested) (flatten (cdr nested))))
               (t (append (flatten (car nested))
                          (flatten (cdr nested)))))))
