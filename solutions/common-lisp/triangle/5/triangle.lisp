(defpackage :triangle
  (:use :cl)
  (:export :triangle-type-p))

(in-package :triangle)

(defun triangle-inequality-p (a b c)
  "Check whether three numbers satisfy triangle inequality"
  (>= (+ a b c) (* 2 (max a b c))))

(defun triangle-type-p (type a b c)
  "Deterimines if a triangle (given by side lengths A, B, C) is of given type"
  (when (and
	 (not (= a b c 0))
	 (Triangle-inequality-p a b c))
    (case type
      (:equilateral (= a b c))
      (:isosceles (or (= a b) (= b c) (= c a)))
      (:scalene (/= a b c)))))
