(defpackage :acronym
  (:use :cl)
  (:export :acronym))

(in-package :acronym)

(defun get-words (str)
  (loop
    for start = 0 then (1+ end)
    for end = (position #\Space str :start start)
    collect (subseq str start end)
    while end))


(defun acronym (str)
  "Returns the acronym for a noun of tech jargon."
  (when (string= str "")
    (return-from acronym str))
  (let ((normalized-str (substitute #\Space #\- str)))
    (apply 'concatenate 'string
	   (map 'list (lambda (w) (string-upcase (subseq w 0 1)))
		(get-words normalized-str)))))
