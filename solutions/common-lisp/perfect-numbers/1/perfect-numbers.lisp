(defpackage :perfect-numbers
  (:use :cl)
  (:export :classify))

(in-package :perfect-numbers)

(defun classify (n)
  (if (or (not (numberp n)) (<= n 0))
             nil
  (let
    ((aliquot-sum (loop for k from 1 below n if (zerop (mod n k)) sum k)))
    (cond
      ((> n aliquot-sum) "deficient")
      ((< n aliquot-sum) "abundant")
      (t "perfect")))))
