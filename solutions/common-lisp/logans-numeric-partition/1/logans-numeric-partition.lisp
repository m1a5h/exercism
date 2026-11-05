(defpackage :logans-numeric-partition
  (:use :cl)
  (:export :categorize-number :partition-numbers))

(in-package :logans-numeric-partition)

;; Define categorize-number function
(defun categorize-number (list-of-nums num)
  (let
    ((odds (car list-of-nums))
     (evens (cdr list-of-nums)))
     (if (oddp num)
      (cons (cons num odds) evens)
      (cons odds (cons num evens)))))

;; Define partition-numbers function
(defun partition-numbers (list-of-numbers)
  (reduce 'categorize-number list-of-numbers :initial-value (cons '() '())))
