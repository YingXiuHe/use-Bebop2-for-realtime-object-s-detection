;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonCommonStateBatteryStateChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonCommonStateBatteryStateChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCOMMONSTATEBATTERYSTATECHANGED")
  (make-package "BEBOP_MSGS::COMMONCOMMONSTATEBATTERYSTATECHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonCommonStateBatteryStateChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonCommonStateBatteryStateChanged
  :super ros::object
  :slots (_header _percent ))

(defmethod bebop_msgs::CommonCommonStateBatteryStateChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:percent __percent) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _percent (round __percent))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:percent
   (&optional __percent)
   (if __percent (setq _percent __percent)) _percent)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _percent
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _percent
       (write-byte _percent s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _percent
     (setq _percent (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonCommonStateBatteryStateChanged :md5sum-) "951b528c732f1981c7e11a1c57775136")
(setf (get bebop_msgs::CommonCommonStateBatteryStateChanged :datatype-) "bebop_msgs/CommonCommonStateBatteryStateChanged")
(setf (get bebop_msgs::CommonCommonStateBatteryStateChanged :definition-)
      "# CommonCommonStateBatteryStateChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Battery state.

Header header

# Battery percentage
uint8 percent

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



(provide :bebop_msgs/CommonCommonStateBatteryStateChanged "951b528c732f1981c7e11a1c57775136")


