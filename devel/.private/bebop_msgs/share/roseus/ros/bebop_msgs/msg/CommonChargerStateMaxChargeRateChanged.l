;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonChargerStateMaxChargeRateChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonChargerStateMaxChargeRateChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCHARGERSTATEMAXCHARGERATECHANGED")
  (make-package "BEBOP_MSGS::COMMONCHARGERSTATEMAXCHARGERATECHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonChargerStateMaxChargeRateChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*RATE_SLOW*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATEMAXCHARGERATECHANGED"))
(shadow '*RATE_SLOW* (find-package "BEBOP_MSGS::COMMONCHARGERSTATEMAXCHARGERATECHANGED"))
(defconstant bebop_msgs::CommonChargerStateMaxChargeRateChanged::*RATE_SLOW* 0)
(intern "*RATE_MODERATE*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATEMAXCHARGERATECHANGED"))
(shadow '*RATE_MODERATE* (find-package "BEBOP_MSGS::COMMONCHARGERSTATEMAXCHARGERATECHANGED"))
(defconstant bebop_msgs::CommonChargerStateMaxChargeRateChanged::*RATE_MODERATE* 1)
(intern "*RATE_FAST*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATEMAXCHARGERATECHANGED"))
(shadow '*RATE_FAST* (find-package "BEBOP_MSGS::COMMONCHARGERSTATEMAXCHARGERATECHANGED"))
(defconstant bebop_msgs::CommonChargerStateMaxChargeRateChanged::*RATE_FAST* 2)
(defclass bebop_msgs::CommonChargerStateMaxChargeRateChanged
  :super ros::object
  :slots (_header _rate ))

(defmethod bebop_msgs::CommonChargerStateMaxChargeRateChanged
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

(setf (get bebop_msgs::CommonChargerStateMaxChargeRateChanged :md5sum-) "941b1a17fd6fd05c4901386c552253e8")
(setf (get bebop_msgs::CommonChargerStateMaxChargeRateChanged :datatype-) "bebop_msgs/CommonChargerStateMaxChargeRateChanged")
(setf (get bebop_msgs::CommonChargerStateMaxChargeRateChanged :definition-)
      "# CommonChargerStateMaxChargeRateChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Max charge rate.

Header header

# The current maximum charge rate.
uint8 rate_SLOW=0  # Fully charge the battery at a slow rate. Typically limit max charge current to 512 mA.
uint8 rate_MODERATE=1  # Almost fully-charge the battery at moderate rate (&gt; 512 mA) but slower than the fastest rate.
uint8 rate_FAST=2  # Almost fully-charge the battery at the highest possible rate supported by the charger.
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



(provide :bebop_msgs/CommonChargerStateMaxChargeRateChanged "941b1a17fd6fd05c4901386c552253e8")


