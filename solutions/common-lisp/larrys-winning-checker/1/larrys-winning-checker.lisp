(defpackage :larrys-winning-checker
  (:use :cl)
  (:export
   :make-empty-board
   :make-board-from-list
   :all-the-same-p
   :row
   :column))

(in-package :larrys-winning-checker)

(defun make-empty-board ()
  (make-array '(3 3) :initial-element NIL))

(defun make-board-from-list (list)
  (make-array (list (length list) (length list) :initial-contents list))

(defun all-the-same-p (row-or-col)
  (loop
	for n from 0 below (length row-or-col)
	with all-equal = T
	do (setq all-equal (eq (aref row-or-col 1) (aref row-or-col n)))
	until (or (null all-equal) (= n (length row-or-col)))
	finally (return all-equal)))

(defun row (board row-num)
  (apply 'vector (loop
		       for n from 0 below (array-dimension board 1)
		       collect (aref board row-num n))))

(defun column (board col-num)
  (apply 'vector (loop
		       for n from 0 below (array-dimension board 0)
		       collect (aref board n col-num))))
