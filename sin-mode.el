
(setq math-highlights
      '(("Sin\\|Cos\\|Sum" . font-lock-function-name-face)
        ("Pi\\|Infinity" . font-lock-constant-face)))

(define-derived-mode math-mode fundamental-mode "math"
  "Major mode for editing mymatch language code"
  (setq font-lock-defaults '(math-highlights)))


