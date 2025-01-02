(defpackage :gigasecond-anniversary
  (:use :cl)
  (:export :from))
(in-package :gigasecond-anniversary)

(defun from (year month day hour min sec)
  (cdddr
   (reverse
    (multiple-value-list
     (decode-universal-time
      (+
       (encode-universal-time sec min hour day month year 0)
       (expt 10 9))
      0)))))
