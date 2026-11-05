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

(defun allergic-to-p (score allergen)
  "Returns true if given allergy score includes given allergen."
  (member allergen (list score) :test 'string=))

(defun list (score)
  "Returns a list of allergens for a given allergy score."
  (loop
    for n from 0 below (length +allergens+)
    if (logbitp n score)
      collect (nth n +allergens+)))
