(defpackage :lillys-lasagna
  (:use :cl)
  (:export :expected-time-in-oven
           :remaining-minutes-in-oven
           :preparation-time-in-minutes
           :elapsed-time-in-minutes))

(in-package :lillys-lasagna)

;; Define function expected-time-in-oven
(defun expected-time-in-oven ()
  "How long lasagna spends in oven"
  337)

;; Define function remaining-minutes-in-oven
(defun remaining-minutes-in-oven (minutes-in-oven)
  "Time remaining in oven"
  (- (expected-time-in-oven) minutes-in-oven))

;; Define function preparation-time-in-minutes
(defun preparation-time-in-minutes (layers)
  "Preparation time for layers taking 19 minutes each"
  (* layers 19))

;; Define function elapsed-time-in-minutes
(defun elapsed-time-in-minutes (layers minutes-in-oven)
  "How long lasagna has been prepared for so far"
  (+ (preparation-time-in-minutes layers) minutes-in-oven))
