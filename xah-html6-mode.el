(defvar xah-html6-font-lock-defaults nil "Value for font-lock-defaults.")

(setq xah-html6-font-lock-defaults
      '(("〔\\([^ ]+?\\) " . (1 font-lock-function-name-face))
        ("“\\([^ ]+?\\)”" . (1 font-lock-string-face))
        ("「\\([^」]+\\)」" . (1 font-lock-variable-name-face))
        ))

(define-derived-mode xah-html6-mode fundamental-mode "HTML6"
  "Sapmle simple mode for html6"
  (setq font-lock-defaults '(xah-html6-font-lock-defaults)))

(provide 'xah-html6)

