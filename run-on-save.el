(defun shell-region (start end)
  "Execute region in an inferior shell"
  (interactive
   (shell-command
    (buffer-substring-no-properties start end))))

(defun say-hello()
     (interactive
      (shell-command "echo Hello")))

(defun ls-now()
  (interactive)
  (comint-send-string "*ansi-term*" "ls\n"))

;; switch
(defun my-echo ()
  (interactive)
  (switch-to-buffer "*ansi-term*")
  (end-of-buffer)
  (insert "echo hello")
  (term-send-input))

;; region
(defun send-paragraph-to-ansi ()
  (interactive)
  (mark-paragraph)
  (send-region "*ansi-term*" (region-beginning) (region-end))
  (deactivate-mark))




