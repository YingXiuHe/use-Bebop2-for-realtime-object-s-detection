;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3AntiflickeringStatemodeChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3AntiflickeringStatemodeChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3ANTIFLICKERINGSTATEMODECHANGED")
  (make-package "BEBOP_MSGS::ARDRONE3ANTIFLICKERINGSTATEMODECHANGED"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3AntiflickeringStatemodeChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MODE_AUTO*" (find-package "BEBOP_MSGS::ARDRONE3ANTIFLICKERINGSTATEMODECHANGED"))
(shadow '*MODE_AUTO* (find-package "BEBOP_MSGS::ARDRONE3ANTIFLICKERINGSTATEMODECHANGED"))
(defconstant bebop_msgs::Ardrone3AntiflickeringStatemodeChanged::*MODE_AUTO* 0)
(intern "*MODE_FIXEDFIFTYHERTZ*" (find-package "BEBOP_MSGS::ARDRONE3ANTIFLICKERINGSTATEMODECHANGED"))
(shadow '*MODE_FIXEDFIFTYHERTZ* (find-package "BEBOP_MSGS::ARDRONE3ANTIFLICKERINGSTATEMODECHANGED"))
(defconstant bebop_msgs::Ardrone3AntiflickeringStatemodeChanged::*MODE_FIXEDFIFTYHERTZ* 1)
(intern "*MODE_FIXEDSIXTYHERTZ*" (find-package "BEBOP_MSGS::ARDRONE3ANTIFLICKERINGSTATEMODECHANGED"))
(shadow '*MODE_FIXEDSIXTYHERTZ* (find-package "BEBOP_MSGS::ARDRONE3ANTIFLICKERINGSTATEMODECHANGED"))
(defconstant bebop_msgs::Ardrone3AntiflickeringStatemodeChanged::*MODE_FIXEDSIXTYHERTZ* 2)
(defclass bebop_msgs::Ardrone3AntiflickeringStatemodeChanged
  :super ros::object
  :slots (_header _mode ))

(defmethod bebop_msgs::Ardrone3AntiflickeringStatemodeChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode (round __mode))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3AntiflickeringStatemodeChanged :md5sum-) "949916415ccdcdf00022c85192c0ac67")
(setf (get bebop_msgs::Ardrone3AntiflickeringStatemodeChanged :datatype-) "bebop_msgs/Ardrone3AntiflickeringStatemodeChanged")
(setf (get bebop_msgs::Ardrone3AntiflickeringStatemodeChanged :definition-)
      "# Ardrone3AntiflickeringStatemodeChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Antiflickering mode.

Header header

# Mode of the anti flickering functionnality
uint8 mode_auto=0  # Anti flickering based on the electric frequency previously sent
uint8 mode_FixedFiftyHertz=1  # Anti flickering based on a fixed frequency of 50Hz
uint8 mode_FixedSixtyHertz=2  # Anti flickering based on a fixed frequency of 60Hz
uint8 mode

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :bebop_msgs/Ardrone3AntiflickeringStatemodeChanged "949916415ccdcdf00022c85192c0ac67")


