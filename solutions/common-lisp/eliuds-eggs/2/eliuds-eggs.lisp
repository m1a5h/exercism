(defpackage :eliuds-eggs
  (:use :cl)
  (:export :egg-count))

(in-package :eliuds-eggs)


(defun decimal-to-binary-list (number)
  "Get list of 1s and 0s in binary repr of number"
  (loop
    until (zerop number)
    collect (mod number 2)
    do (setf number (floor number 2))))

(defun egg-count (number)
  "Count number of eggs by counting 1s in number"
  (count 1 (decimal-to-binary-list number)))
