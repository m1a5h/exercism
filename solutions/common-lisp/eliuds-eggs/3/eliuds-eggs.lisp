(defpackage :eliuds-eggs
  (:use :cl)
  (:export :egg-count))

(in-package :eliuds-eggs)

(defun egg-count (number)
  "Count number of eggs by counting ones in binary form of number"
  (count 1
	 (loop
	   until (zerop number)
	   collect (mod number 2)
	   do (setf number (floor number 2)))))
