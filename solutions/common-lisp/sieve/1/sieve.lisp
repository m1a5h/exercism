(defpackage :sieve
  (:use :cl)
  (:export :primes-to)
  (:documentation "Generates a list of primes up to a given limit."))

(in-package :sieve)

(defun primes-to (n)
  "List primes up to `n' using sieve of Eratosthenes."
  (loop
    for m from 2 to n
    when (not (member T (loop
			  for d from 2 to (isqrt m)
			  collect (zerop (mod m d)))))
      collect m))
