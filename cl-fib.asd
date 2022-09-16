(defsystem "cl-fib"
  :description "A simple and fast fibonacci implementation in Common Lisp"
  :author "cheeze2000"
  :version "0.0.1"

  :components ((:module "src"
                :components ((:file "fib")))
               (:module "app"
                :components ((:file "main"))))

  :build-pathname "build/cl-fib"
  :build-operation "program-op"
  :entry-point "cl-fib::main")

(defsystem "cl-fib/test"
  :description "Tests for cl-fib"
  :author "cheeze2000"
  :depends-on ("cl-fib" "parachute")

  :components ((:module "test"
                :serial t
                :components ((:file "main")
                             (:file "fib")))))
