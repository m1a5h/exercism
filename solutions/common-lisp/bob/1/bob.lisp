(defpackage :bob
  (:use :cl)
  (:export :response))
(in-package :bob)


(defun letter-in-string (str)
  (member T (mapcar 'alpha-char-p (coerce str 'list))))


(defun response (hey-bob)
  (let*
      ((hey-bob (string-trim " " (remove #\NewLine (substitute #\Space #\Tab hey-bob))))
       (silencep (zerop (length hey-bob)))
       (questionp (and (not silencep) (string= (subseq (reverse hey-bob) 0 1) "?")))
       (yelledp (and (letter-in-string hey-bob) (string= (string-upcase hey-bob) hey-bob)))
       (yelledquestionp (and questionp yelledp)))
    (cond
      (yelledquestionp "Calm down, I know what I'm doing!")
      (questionp "Sure.")
      (yelledp "Whoa, chill out!")
      (silencep "Fine. Be that way!")
      (t "Whatever."))))
