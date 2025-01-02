(defpackage :beer-song
  (:use :cl)
  (:export :verse :sing))

(in-package :beer-song)
(defun verse (n)
  "Returns a string verse for a given number."
  (case n
    (0 (format nil "No more bottles of beer on the wall, no more bottles of beer.~%Go to the store and buy some more, 99 bottles of beer on the wall.~%"))
    (1 (format nil "~d bottle of beer on the wall, ~d bottle of beer.~%Take it down and pass it around, no more bottles of beer on the wall.~%" n n))
  (otherwise (format nil "~d bottles of beer on the wall, ~d bottles of beer.~%Take one down and pass it around, ~d bottle~:p of beer on the wall.~%" n n (1- n)))))

(defun sing (start &optional (end 0))
  "Returns a string of verses for a given range of numbers."
  (format nil "~{~a~%~}" (loop for n from start downto end collect (verse n))))
