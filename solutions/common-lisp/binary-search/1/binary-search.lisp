(defpackage :binary-search
  (:use :cl)
  (:export :binary-find :value-error))

(in-package :binary-search)

(defun binary-find (arr el &optional (start 0) (end (length arr)))
  (when (>= start end)
    (return-from binary-find nil))
  (let* ((middle (+ start (floor (- end start) 2)))
	 (mid-el (aref arr middle)))
      (cond
	((= mid-el el) middle)
	((> mid-el el) (binary-find arr el start middle))
	((< mid-el el) (binary-find arr el (1+ middle) end)))))
