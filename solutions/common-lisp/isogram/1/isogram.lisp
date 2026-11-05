(defpackage :isogram
  (:use :cl)
  (:export :isogram-p))

(in-package :isogram)

(defun clean-string (string)
  "Remove spaces/hypens from string and make lowercase"
  (string-downcase (remove #\Space (remove #\- string))))

(defun isogram-p (string)
  "Is string an Isogram?"
  (or
   (zerop (length string))
   (= 1 (apply 'max
	       (loop for c across string
		     collect
		     (count c (clean-string string)))))))
