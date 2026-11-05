(defpackage :raindrops
  (:use :cl)
  (:export :convert))

(in-package :raindrops)

(defun convert (n)
  "Converts a number to a string of raindrop sounds."
  (let ((drops-string
	  (concatenate 'string
		       (when (zerop (mod n 3)) "Pling")
		       (when (zerop (mod n 5)) "Plang")
		       (when (zerop (mod n 7)) "Plong"))))
    (if (string= drops-string "")
	(write-to-string n)
	drops-string)))
