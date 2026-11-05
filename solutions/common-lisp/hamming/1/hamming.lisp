(defpackage :hamming
  (:use :cl)
  (:export :distance))

(in-package :hamming)

(defun distance (dna1 dna2)
  "Number of positional differences in two equal length dna strands."
  (unless (equal (length dna1) (length dna2))
    (return-from distance nil))
  (let ((dna1 (coerce dna1 'list))
	(dna2 (coerce dna2 'list)))
    (loop for n from 0 below (length dna1)
	  count (char-not-equal (nth n dna1) (nth n dna2)))))
