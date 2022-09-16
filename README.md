# cl-fib
A simple and fast fibonacci implementation in Common Lisp

## Building the project
```lisp
;; ensure Quicklisp is installed and this system can be found by ASDF
(ql:quickload :cl-fib)
(asdf:make :cl-fib)
```

```console
$ ./build/cl-fib 9
fib(9): 34

$ ./build/cl-fib 999
fib(999): 26863810024485359386146727202142923967616609318986952340123175997617981700247881689338369654483356564191827856161443356312976673642210350324634850410377680367334151172899169723197082763985615764450078474174626

$ time ./build/cl-fib 123456

(output omitted)

real    0m0.015s
user    0m0.007s
sys     0m0.008s
```
