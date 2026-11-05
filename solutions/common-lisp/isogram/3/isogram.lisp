(defpackage :isogram
  (:use :cl)
  (:export :isogram-p))

(in-package :isogram)

(defun isogram-p (string)
  "Is string an Isogram?"
  (let
      ((normalized (string-downcase (remove #\Space (remove #\- string)))))
  (string= normalized (remove-duplicates normalized))))
