(defpackage :high-scores
  (:use :cl)
  (:export :make-high-scores-table :add-player
           :set-score :get-score :remove-player))

(in-package :high-scores)

;; Define make-high-scores-table function
(defun make-high-scores-table ()
  "Create empty hash table to store scores"
  (make-hash-table))

;; Define add-player function
(defun add-player (score-table player)
  "Add player to score-table"
  (setf (gethash player score-table) 0))

;; Define set-score function
(defun set-score (score-table player score)
  "Set score for player in score-table"
  (setf (gethash player score-table) score))

;; Define get-score function
(defun get-score (score-table player)
  "Get score for player from score-table"
  (gethash player score-table 0))

;; Define remove-player function
(defun remove-player (score-table player)
  "Remove player from score-table if they exist"
  (remhash player score-table))
