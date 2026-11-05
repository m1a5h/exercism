(defpackage :space-age
  (:use :cl)
  (:export :on-mercury
           :on-venus
           :on-earth
           :on-mars
           :on-jupiter
           :on-saturn
           :on-uranus
           :on-neptune))

(in-package :space-age)

(defconstant +earth-year-in-seconds+ 31557600)

(defun on-mercury (age)
  (/ age 0.2408467 +earth-year-in-seconds+))

(defun on-venus (age)
  (/ age 0.61519726 +earth-year-in-seconds+))

(defun on-earth (age)
  (/ age 1.0 +earth-year-in-seconds+))

(defun on-mars (age)
  (/ age 1.8808158 +earth-year-in-seconds+))

(defun on-jupiter (age)
  (/ age 11.862615 +earth-year-in-seconds+))

(defun on-saturn (age)
  (/ age 29.447498 +earth-year-in-seconds+))

(defun on-uranus (age)
  (/ age 84.016846 +earth-year-in-seconds+))

(defun on-neptune (age)
  (/ age 164.79132 +earth-year-in-seconds+))
