;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonChargerStateLastChargeRateChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonChargerStateLastChargeRateChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCHARGERSTATELASTCHARGERATECHANGED")
  (make-package "BEBOP_MSGS::COMMONCHARGERSTATELASTCHARGERATECHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonChargerStateLastChargeRateChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*RATE_UNKNOWN*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATELASTCHARGERATECHANGED"))
(shadow '*RATE_UNKNOWN* (find-package "BEBOP_MSGS::COMMONCHARGERSTATELASTCHARGERATECHANGED"))
(defconstant bebop_msgs::CommonChargerStateLastChargeRateChanged::*RATE_UNKNOWN* 0)
(intern "*RATE_SLOW*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATELASTCHARGERATECHANGED"))
(shadow '*RATE_SLOW* (find-package "BEBOP_MSGS::COMMONCHARGERSTATELASTCHARGERATECHANGED"))
(defconstant bebop_msgs::CommonChargerStateLastChargeRateChanged::*RATE_SLOW* 1)
(intern "*RATE_MODERATE*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATELASTCHARGERATECHANGED"))
(shadow '*RATE_MODERATE* (find-package "BEBOP_MSGS::COMMONCHARGERSTATELASTCHARGERATECHANGED"))
(defconstant bebop_msgs::CommonChargerStateLastChargeRateChanged::*RATE_MODERATE* 2)
(intern "*RATE_FAST*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATELASTCHARGERATECHANGED"))
(shadow '*RATE_FAST* (find-package "BEBOP_MSGS::COMMONCHARGERSTATELASTCHARGERATECHANGED"))
(defconstant bebop_msgs::CommonChargerStateLastChargeRateChanged::*RATE_FAST* 3)
(defclass bebop_msgs::CommonChargerStateLastChargeRateChanged
  :super ros::object
  :slots (_header _rate ))

(defmethod bebop_msgs::CommonChargerStateLastChargeRateChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rate __rate) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _rate (round __rate))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rate
   (&optional __rate)
   (if __rate (setq _rate __rate)) _rate)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _rate
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _rate
       (write-byte _rate s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _rate
     (setq _rate (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonChargerStateLastChargeRateChanged :md5sum-) "e9b711bb39581d8a588c2bb4a104345b")
(setf (get bebop_msgs::CommonChargerStateLastChargeRateChanged :datatype-) "bebop_msgs/CommonChargerStateLastChargeRateChanged")
(setf (get bebop_msgs::CommonChargerStateLastChargeRateChanged :definition-)
      "# CommonChargerStateLastChargeRateChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Last charge rate.

Header header

# The charge rate recorded by the firmware for the last charge.
uint8 rate_UNKNOWN=0  # The last charge rate is not known.
uint8 rate_SLOW=1  # Slow charge rate.
uint8 rate_MODERATE=2  # Moderate charge rate.
uint8 rate_FAST=3  # Fast charge rate.
uint8 rate

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



(provide :bebop_msgs/CommonChargerStateLastChargeRateChanged "e9b711bb39581d8a588c2bb4a104345b")


