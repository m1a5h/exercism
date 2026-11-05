(defpackage :nucleotide-count
  (:use :cl)
  (:export :dna-count :nucleotide-counts :invalid-nucleotide))

(in-package :nucleotide-count)

(defconstant +valid-nucleotides+ '(#\A #\C #\G #\T))

(define-condition invalid-nucleotide (error)
  nil)

(make-condition 'invalid-nucleotide)

(defun dna-count (nucleotide strand)
  "Returns a count of the given nucleotide appearing in a DNA strand."
  (if (find nucleotide +valid-nucleotides+)
      (count nucleotide strand)
      (error 'invalid-nucleotide)))

(defun nucleotide-counts (strand)
  "Returns a hash of nucleotides and their counts in a given DNA strand."
  (let ((count-hash (make-hash-table)))
    (mapc (lambda (nucleotide)
	    (setf (gethash nucleotide count-hash)
		  (dna-count nucleotide strand)))
	  +valid-nucleotides+)
    count-hash))
