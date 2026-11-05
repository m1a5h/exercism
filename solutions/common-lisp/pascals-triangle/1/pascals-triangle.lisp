(defpackage :pascals-triangle
  (:use :cl)
  (:export :rows))
(in-package :pascals-triangle)

(defun nth-row (n)
  (if (= n 1)
    (return-from nth-row '(1)))
    (let ((nth-row-minus-ends
            (loop
              for a in (cdr (nth-row (1- n)))
              for b in (reverse (nth-row (1- n)))
              collect (+ a b))))
            (cons 1 (reverse (cons 1 nth-row-minus-ends)))))

(defun rows (n)
  (loop
    for k from 1 to n
    collect (nth-row k)))
