(defpackage :sum-of-multiples
  (:use :cl)
  (:export :sum))

(in-package :sum-of-multiples)


(defun sum (factors limit)
  (loop
    for number from 1 below limit
    when (member T (loop
	       for factor in (remove 0 factors)
	       collect (zerop (mod number factor))))
      sum number))
