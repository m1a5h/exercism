;;; leap.el --- Leap exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun leap-year-p (year)
;;; Code:
  (and
   (= (% year 4) 0)
   (or (/= (% year 100) 0)
	(= (% year 400) 0))))

(provide 'leap-year-p)
;;; leap.el ends here
