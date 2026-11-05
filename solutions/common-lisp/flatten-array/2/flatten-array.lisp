(defpackage :flatten-array
  (:use :cl)
  (:export :flatten))

(in-package :flatten-array)

(defun flatten (nested)
  "Flatten an array and remove NIL"
  (cond
    ((null nested) nil)
    ((atom nested) (list nested))
    (t (mapcan 'flatten nested))))
