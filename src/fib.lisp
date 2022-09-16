(defpackage #:cl-fib.fib
  (:use #:cl)
  (:export #:fib))

(in-package #:cl-fib.fib)

(defun fib (n)
  (first (fib-pair n)))

(defun fib-pair (n)
  (if (= n 0)
      (cons 0 1)
      (let* ((m (ash n -1))
             (res (fib-pair m))
             (i (first res))
             (j (rest res))
             (a (* i (- (* j 2) i)))
             (b (+ (* i i) (* j j))))
        (if (oddp n)
            (cons b (+ a b))
            (cons a b)))))
