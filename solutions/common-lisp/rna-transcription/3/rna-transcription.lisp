(defpackage :rna-transcription
  (:use :cl)
  (:export :to-rna))
(in-package :rna-transcription)


(defun complement-base (base)
  (case base
    (#\A #\U)
    (#\T #\A)
    (#\C #\G)
    (#\G #\C)))
    

(defun to-rna (str)
  "Transcribe a string representing DNA nucleotides to RNA."
  (map 'string 'complement-base str))
