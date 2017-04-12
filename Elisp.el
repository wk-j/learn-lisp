(setq my-list '(1 2 3 4))

(dolist (pizza my-list)
  (when (= (mod pizza 2) 0)
    (print pizza)))

(let (some-var)
  (when (null some-var)
    (message "var is null")))

(let ((some-var 0)
      (other-var 90)
      (if (null some-var)
          (message "NOT SUPPOSE TO HAPPEN")
        (message "Yey"))))

(defun some-events (some-list)
  (let ((some 0))
    (dolist (element some-list)
      (when (= (mod element 2) 0)
        (setq sum (+ sum element))))
    sum))

(require 'ert)

(ert-deftest sum-events-test ()
  (should (= (sum-events '(1 3 5)) 0)))




