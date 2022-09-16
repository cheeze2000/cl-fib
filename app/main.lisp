(defpackage #:cl-fib
  (:use #:cl
        #:cl-fib.fib))

(in-package #:cl-fib)

(defun main ()
  (let* ((arg (second cl-user::*posix-argv*))
         (n (parse-integer arg)))
    (format t "fib(~d): ~a~%" n (cl-fib.fib:fib n))))
