(defpackage :perfect-numbers
  (:use :cl)
  (:export :classify))

(in-package :perfect-numbers)

(defun classify (n)
  (unless (and (numberp n) (> n 0))
    (return-from classify nil))
  (let
      ((aliquot-sum (loop for k from 1 upto (/ n 2) if (zerop (mod n k)) sum k)))
    (cond
      ((> n aliquot-sum) "deficient")
      ((< n aliquot-sum) "abundant")
      (t "perfect"))))
