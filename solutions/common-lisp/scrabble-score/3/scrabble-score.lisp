(defpackage :scrabble-score
  (:use :cl)
  (:export :score-word))

(in-package :scrabble-score)

(defun prep-word (word)
  "Remove spaces and newline and coerce into a list of lowercase chars"
  (coerce (string-trim " " (remove #\Newline (string-downcase word))) 'list))

(defun score-letter (letter)
  "Return score of letter"
  (setq letter (char-downcase letter))
  (cond
    ((member letter '(#\d #\g)) 2)
    ((member letter '(#\b #\c #\m #\p))	3)
    ((member letter '(#\f #\h #\v #\w #\y)) 4)
    ((char= letter #\k) 5)
    ((member letter '(#\j #\x)) 8)
    ((member letter '(#\q #\z)) 10)
    (t 1)))

(defun score-word (word)
  "Compute the score for an entire word."
  (loop for letter across word
	when (alpha-char-p letter)
	  sum
	(score-letter letter)))
