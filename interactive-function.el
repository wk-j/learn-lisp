(defun cheap-count-words ()
  (interactive)
  (let (words 0)
    (save-excursion
      (goto-char (point-min))
      (while (forward-word)
        (setq words (1+ words))))
    (message (format "World in Buffer: %s" words))
    words))

(require 'ert)

(ert-deftest hello ()
  (should (= 1 1)))

(ert-deftest gogo()
  (should (string= "Hello" "Hello")))


;; test cheap count

(setq buffer "*test*")

(ert-deftest count-words-test ()
  (get-buffer-create buffer)
  (with-current-buffer buffer
    (erase-buffer)
    (insert "Hello world")
    (should (= (cheap-count-words) 2))
    )
  (kill-buffer buffer))
