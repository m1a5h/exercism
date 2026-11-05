(defpackage :eliuds-eggs
  (:use :cl)
  (:export :egg-count))

(in-package :eliuds-eggs)


(defun decimal-to-binary-list (number)
  (loop
    until (zerop number)
    collect (mod number 2)
    do (setf number (floor number 2))))

(defun egg-count (number)
  (count 1 (decimal-to-binary-list number)))
