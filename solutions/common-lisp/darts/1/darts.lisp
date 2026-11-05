(defpackage :darts
  (:use :cl)
  (:export :score))

(in-package :darts)


(defun distance-from-center (x y)
  (sqrt (+ (* x x) (* y y))))


(defun score (x y)
  (cond
    ((<= (distance-from-center x y) 1) 10)
    ((<= (distance-from-center x y) 5) 5)
    ((<= (distance-from-center x y) 10) 1)
    (t 0)))
