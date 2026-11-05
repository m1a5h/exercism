;;; difference-of-squares.el --- Difference of Squares (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:
(defun sum-of-squares (n)
  "Sum of squares of first N integers."
  (/ (*
      n
      (1+ n)
      (1+ (* n 2)))
     6))

(defun square-of-sum (n)
  "Square of sum of first N integers."
  (expt (/
	 (* n (1+ n))
	 2)
	2))

(defun difference (n)
  "Difference between square of sum and sum of squares of first N integers."
  (- (square-of-sum n) (sum-of-squares n)))

(provide 'difference-of-squares)
;;; difference-of-squares.el ends here
