
(cl:in-package :asdf)

(defsystem "turtlesim_test-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Speed" :depends-on ("_package_Speed"))
    (:file "_package_Speed" :depends-on ("_package"))
  ))