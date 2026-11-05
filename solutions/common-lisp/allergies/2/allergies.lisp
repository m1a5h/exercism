(defpackage :allergies
  (:use :cl)
  (:shadow :list)
  (:export :allergic-to-p :list))

(in-package :allergies)

(defconstant +allergens+
  '("eggs"
   "peanuts"
   "shellfish"
   "strawberries"
   "tomatoes"
   "chocolate"
   "pollen"
   "cats"))

(defun decimal-to-binary-list (number)
  "Decimal to list of binary digits"
   (loop
    until (zerop number)
    collect (mod number 2)
    do (setf number (floor number 2))))



(defun allergic-to-p (score allergen)
  "Returns true if given allergy score includes given allergen."
  (member allergen (list score) :test 'string=))

(defun list (score)
  "Returns a list of allergens for a given allergy score."
  (loop
    for allergen in +allergens+
    for number in (decimal-to-binary-list score)
    when (= number 1)
      collect allergen))
