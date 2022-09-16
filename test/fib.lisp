(in-package #:cl-fib/test)

(define-test "Test if the fib function returns correct fibonacci numbers"
  (is = 0 (fib 0))
  (is = 1 (fib 1))
  (is = 1 (fib 2))
  (is = 2 (fib 3))
  (is = 3 (fib 4))
  (is = 5 (fib 5))
  (is = 8 (fib 6))
  (is = 13 (fib 7))
  (is = 21 (fib 8))
  (is = 34 (fib 9)))
