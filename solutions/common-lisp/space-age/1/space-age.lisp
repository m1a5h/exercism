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

(defun on-mercury (age)
  (/ age 0.2408467 31557600))

(defun on-venus (age)
  (/ age 0.61519726 31557600))

(defun on-earth (age)
  (/ age 1.0 31557600))

(defun on-mars (age)
  (/ age 1.8808158 31557600))

(defun on-jupiter (age)
  (/ age 11.862615 31557600))

(defun on-saturn (age)
  (/ age 29.447498 31557600))

(defun on-uranus (age)
  (/ age 84.016846 31557600))

(defun on-neptune (age)
  (/ age 164.79132 31557600))
