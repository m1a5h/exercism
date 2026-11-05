;;; two-fer.el --- Two-fer Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun two-fer (&optional name)
;;; Code:
  (concat "One for " (or name "you") ", one for me."))

(provide 'two-fer)
;;; two-fer.el ends here
