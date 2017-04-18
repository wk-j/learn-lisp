
(defun other-fun (args)
  (message "%S" args))

(defun my-func (other-func args)
  (funcall other-func args)) 


(defun run-my-func ()
  (interactive)
  (my-func 'other-fun "Hello"))


(defun run-anno-func ()
  (interactive)
  (funcall
   (function (lambda (x) (message "%s" x))) "10"))
   

(defun run-short-anno-func ()
  (interactive)
  (funcall #'(lambda (x) (message "%s" x)) "10"))

(defun run-short-anno-func2 ()
  (interactive)
  (funcall #'(lambda (x) (message "%s" x)) "10"))

(defun run-short-anno-fun3 ()
  (interactive)
  (funcall (lambda (x) (message "%s" x)) "10"))


  
   
