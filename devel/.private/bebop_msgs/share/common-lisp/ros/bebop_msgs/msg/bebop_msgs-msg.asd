
(cl:in-package :asdf)

(defsystem "bebop_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
  ))