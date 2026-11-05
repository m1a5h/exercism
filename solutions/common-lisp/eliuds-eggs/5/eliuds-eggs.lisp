(defpackage :eliuds-eggs
  (:use :cl)
  (:export :egg-count))

(in-package :eliuds-eggs)

(setf (fdefinition 'egg-count) #'logcount)
(setf (documentation 'egg-count 'function) "Count the number of eggs by counting the ones in number.")
