
(defconst boolcase-mode-words '("true" "false")
  "Words to capitalize such as true and false.")

(defun boolcase-mode-check ()
  "Check if we capitalize or not"
  ;; If it's "e"
  (if (= last-command-event 101)
      (boolcase-mode-fix)))

(defun boolcase-mode-fix()
  (when (member (that-at-point 'sexp) boolcase-mode-words)
    (capitalize-word -1)))

(define-minor-mode boolcase-mode
  "Automatically capititalize booleans"
  :lighter " BC"
  (if boolcase-mode
      (add-hook 'post-self-insert-hook
                'boolcase-mode-check nil t)
    (remove-hook 'post-self-insert-hook
                 'boolcase-mode-check t)))

(provide 'boolcase)



