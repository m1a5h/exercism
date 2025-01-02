(defpackage :pizza-pi
  (:use :cl)
  (:export :dough-calculator :pizzas-per-cube
           :size-from-sauce :fair-share-p))

(in-package :pizza-pi)

(defun dough-calculator (pizzas diameter)
  (floor (+ (* (+ (/ (* 45 pi diameter) 20) 200) pizzas) 0.5)))

(defun size-from-sauce (sauce)
  (float (/ (floor (* (sqrt (/ (* 40 sauce) (* 3 pi))) 100)) 100)))

(defun pizzas-per-cube (cube-size diameter)
  (floor (/ (* 2 (expt cube-size 3)) (* 3 pi (expt diameter 2)))))

(defun fair-share-p (pizzas friends)
  (zerop (mod (* pizzas 8) friends)))
