(defpackage :acronym
  (:use :cl)
  (:export :acronym))

(in-package :acronym)

(defun get-words (str)
  (if (not (search " " str))
      (list str)
      (let*
	  ((space-loc (search " " str))
	   (word (subseq str 0 space-loc))
	   (rest-of-str (subseq str (1+ space-loc))))
	(cons word (get-words rest-of-str)))))


(defun acronym (str)
  "Returns the acronym for a noun of tech jargon."
  (when (string= str "")
    (return-from acronym str))
  (let ((normalized-str (substitute #\Space #\- str)))
    (apply 'concatenate 'string
	   (map 'list (lambda (w) (string-upcase (subseq w 0 1)))
		(get-words normalized-str)))))
