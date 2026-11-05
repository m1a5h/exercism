(defpackage :rotational-cipher
  (:use :cl)
  (:export :rotate))

(in-package :rotational-cipher)

(defconstant +upper-a-code+ 65)
(defconstant +lower-a-code+ 97)

(defun rotate (text key)
  (map 'string (lambda (c) (shift-char c key)) text))

(defun shift-char (char key)
	(cond
	  ((upper-case-p char)
	   (code-char (+ (mod (+ (- (char-code char) +upper-a-code+) key) 26) +upper-a-code+)))
	  ((lower-case-p char)
	   (code-char (+ (mod (+ (- (char-code char) +lower-a-code+) key) 26) +lower-a-code+)))
	  (t char)))
