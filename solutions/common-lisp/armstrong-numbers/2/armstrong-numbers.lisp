(defpackage :armstrong-numbers
  (:use :cl)
  (:export :armstrong-number-p))
(in-package :armstrong-numbers)

(defun armstrong-number-p (number)
  (let*
    ((digits (mapcar (lambda (digit) (parse-integer (string digit)))
                     (coerce (write-to-string number) 'list)))
     (no-digits (length digits))
     (digit-power-sum (loop for digit in digits
                            sum (expt digit no-digits))))
    (equal number digit-power-sum)))
