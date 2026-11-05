(defpackage :proverb
  (:use :cl)
  (:export :recite))

(in-package :proverb)

(defun recite (strings)
  (if (zerop (length strings))
      ""
      (concatenate 'string
		   (when (> (length strings) 1)
		     (format nil "~{~a~%~}" (loop for n from 0 upto (- (length strings) 2) collect (format nil "For want of a ~a the ~a was lost." (nth n strings) (nth (1+ n) strings)))))
		   (format nil "And all for the want of a ~a." (first strings)))))
