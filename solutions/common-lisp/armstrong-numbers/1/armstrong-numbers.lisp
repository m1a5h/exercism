(defpackage :armstrong-numbers
  (:use :cl)
  (:export :armstrong-number-p))
(in-package :armstrong-numbers)

(defun armstrong-number-p (number)
  (let*
    ((digits (mapcar (lambda (d) (parse-integer (string d)))
                     (coerce (write-to-string number) 'list)))
     (no-digits (length digits))
     (digit-power-sum (loop for d in digits
                            sum (expt d no-digits))))
    (equal number digit-power-sum)))
