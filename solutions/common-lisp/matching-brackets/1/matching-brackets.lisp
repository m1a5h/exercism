(defpackage :matching-brackets
  (:use :cl)
  (:export :pairedp))

(in-package :matching-brackets)

(defun remove-substring (sub string)
  "Remove all instances of sub from string"
  (loop with result = string
	while (search sub result)
	do (setf result
		 (concatenate 'string
			      (subseq result 0 (search sub result))
			      (subseq result (+ (search sub result) (length sub)))))
	finally (return result)))

(defconstant +matched-brackets+
  '("()" "{}" "[]"))

(defconstant +single-brackets+
  '(#\( #\) #\{ #\} #\[ #\]))

(defun clear-empty-brackets (string)
  "Clear all instancs of (), {} amd [] from string"
  (loop with result = string
	while (not (equal '(nil nil nil)
			  (loop for type in +matched-brackets+
				collect (search type result))))
	do (loop for type in +matched-brackets+
		 do (setq result (remove-substring type result))
		    finally (return result))
	finally (return result)))

(defun clear-non-brackets (value)
  "Remove all strings that are not brackets as they get in the way"
  (remove-if-not
   (lambda (c) (member c +single-brackets+)) value))

(defun pairedp (value)
  "Are all brackets paired"
  (zerop
   (length
    (clear-empty-brackets
     (clear-non-brackets value)))))
