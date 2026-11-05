(defpackage :isogram
  (:use :cl)
  (:export :isogram-p))

(in-package :isogram)

(defun isogram-p (string)
  "Is string an Isogram?"
  (let
      ((normalized (string-downcase (remove #\Space (remove #\- string)))))
  (or
   (zerop (length string))
   (= 1 (apply 'max
	       (loop for c across string
		     collect
		     (count c normalized)))))))
