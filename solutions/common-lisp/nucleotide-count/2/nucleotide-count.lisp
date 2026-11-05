(defpackage :nucleotide-count
  (:use :cl)
  (:export :dna-count :nucleotide-counts :invalid-nucleotide))

(in-package :nucleotide-count)

(define-condition invalid-nucleotide (error)
  nil)

(make-condition 'invalid-nucleotide)

(defun dna-count (nucleotide strand)
  "Returns a count of the given nucleotide appearing in a DNA strand."
  (unless (member nucleotide '(#\A #\C #\G #\T))
      (error 'invalid-nucleotide))
  (count nucleotide strand :test 'string=))

(defun nucleotide-counts (strand)
  "Returns a hash of nucleotides and their counts in a given DNA strand."
  (loop
    with count-hash = (make-hash-table)
    for nucleotide across "ACGT"
    do
       (setf (gethash nucleotide count-hash)
	     (dna-count nucleotide strand))
       finally (return count-hash)))
