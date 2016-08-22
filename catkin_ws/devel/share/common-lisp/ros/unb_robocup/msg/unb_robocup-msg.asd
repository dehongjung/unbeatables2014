
(cl:in-package :asdf)

(defsystem "unb_robocup-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MoveAroundPointTopic" :depends-on ("_package_MoveAroundPointTopic"))
    (:file "_package_MoveAroundPointTopic" :depends-on ("_package"))
    (:file "SetSecurityDistance" :depends-on ("_package_SetSecurityDistance"))
    (:file "_package_SetSecurityDistance" :depends-on ("_package"))
    (:file "Odom" :depends-on ("_package_Odom"))
    (:file "_package_Odom" :depends-on ("_package"))
    (:file "MoveToTopic" :depends-on ("_package_MoveToTopic"))
    (:file "_package_MoveToTopic" :depends-on ("_package"))
    (:file "TrackLines" :depends-on ("_package_TrackLines"))
    (:file "_package_TrackLines" :depends-on ("_package"))
    (:file "Goal" :depends-on ("_package_Goal"))
    (:file "_package_Goal" :depends-on ("_package"))
  ))