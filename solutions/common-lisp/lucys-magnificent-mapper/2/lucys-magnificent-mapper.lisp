(defpackage :lucys-magnificent-mapper
  (:use :cl)
  (:export :make-magnificent-maybe :only-the-best))

(in-package :lucys-magnificent-mapper)

;; Define make-magnificent-maybe function
(defun make-magnificent-maybe (fun lst)
  (mapcar fun lst))

;; Define only-the-best function
(defun only-the-best (fun lst)
  (remove 1 (remove-if fun lst)))
