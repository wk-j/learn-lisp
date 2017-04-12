(defun python-underscore (arg)
  (interactive "P")
  (if arg (insert ";")
    (insert "_")))


(define-key elpy-mode-map (kbd ";") 'python-underscore)

