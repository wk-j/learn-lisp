;; Read string
(defun ff (arg)
  "Prompt user to enter a string, with input history support."
  (interactive
   (list
   (read-string "Enter your name:")))

  (message "String is %s." arg))

(defun kk ()
  (interactive
    (message "Hello, world")))

(defun gg ()
  (interactive
   (message "Hello, world")))



