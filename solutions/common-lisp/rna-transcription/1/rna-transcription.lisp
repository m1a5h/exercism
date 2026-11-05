(defpackage :rna-transcription
  (:use :cl)
  (:export :to-rna))
(in-package :rna-transcription)


(defun complement-base (base)
  (cond
    ((char= base #\A) #\U)
    ((char= base #\T) #\A)
    ((char= base #\C) #\G)
    ((char= base #\G) #\C)))
    

(defun to-rna (str)
  "Transcribe a string representing DNA nucleotides to RNA."
  (concatenate 'string
	       (mapcar 'complement-base
		       (coerce str 'list))))
