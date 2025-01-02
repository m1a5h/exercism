(defpackage :lillys-lasagna-leftovers
  (:use :cl)
  (:export
    :preparation-time
    :remaining-minutes-in-oven
    :split-leftovers))

(in-package :lillys-lasagna-leftovers)

;; Define function preparation-time
(defun preparation-time (&rest layers)
  (* (length layers) 19))

;; Define function remaining-minutes-in-oven
(defun remaining-minutes-in-oven (&optional (cooking-time :normal))
  (if (null cooking-time)
    0
  (case cooking-time
    (:normal 337)
    (:shorter 237)
    (:very-short 137)
    (:longer 437)
    (:very-long 537))))

;; Define function split-leftovers
(defun split-leftovers (&key (human 10) (alien 10) (weight nil weight-supplied-p))
                             (if weight-supplied-p
                               (if (null weight)
                                 :looks-like-someone-was-hungry
                               (- weight human alien))
                               :just-split-it))
