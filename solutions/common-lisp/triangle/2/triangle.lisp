(defpackage :triangle
  (:use :cl)
  (:export :triangle-type-p))

(in-package :triangle)

(defun triangle-inequality-p (a b c)
  "Check whether three numbers satisfy triangle inequality"
  (>= (+ a b c) (* 2 (max a b c))))

(defun triangle-type-p (type a b c)
  "Deterimines if a triangle (given by side lengths A, B, C) is of given type"
  (and
   (not (equal (list a b c) '(0 0 0)))
   (triangle-inequality-p a b c)
   (or
    (and
     (eql type :equilateral)
     (= a b c))
    (and
     (eql type :isosceles)
     (or (= a b) (= b c) (= c a)))
    (and
     (eql type :scalene)
     (/= a b c)))))
