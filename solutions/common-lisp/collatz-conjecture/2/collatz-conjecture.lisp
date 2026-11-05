(defpackage :collatz-conjecture
  (:use :cl)
  (:export :collatz))

(in-package :collatz-conjecture)

(defun collatz (n)
  "See how long it takes to get n to 1 using Collatz function"
  (if (and (numberp n) (> n 0))
      (labels
	  ((helper (n k)
             (if (= n 1)
                 k
                 (helper (if (evenp n)
                             (/ n 2)
                             (+ (* n 3) 1))
                         (1+ k)))))
	(helper n 0))
      nil))
