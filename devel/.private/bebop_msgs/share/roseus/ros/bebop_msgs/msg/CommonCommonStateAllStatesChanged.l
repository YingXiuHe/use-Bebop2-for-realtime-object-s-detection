;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonCommonStateAllStatesChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonCommonStateAllStatesChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCOMMONSTATEALLSTATESCHANGED")
  (make-package "BEBOP_MSGS::COMMONCOMMONSTATEALLSTATESCHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonCommonStateAllStatesChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonCommonStateAllStatesChanged
  :super ros::object
  :slots (_header ))

(defmethod bebop_msgs::CommonCommonStateAllStatesChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    )
   (send-super :init)
   (setq _header __header)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;;
   self)
  )

(setf (get bebop_msgs::CommonCommonStateAllStatesChanged :md5sum-) "d7be0bb39af8fb9129d5a76e6b63a290")
(setf (get bebop_msgs::CommonCommonStateAllStatesChanged :datatype-) "bebop_msgs/CommonCommonStateAllStatesChanged")
(setf (get bebop_msgs::CommonCommonStateAllStatesChanged :definition-)
      "# CommonCommonStateAllStatesChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: All states have been sent.\\n\\n **Please note that you should not care about this event if you are using the libARController API as this library is handling the connection process for you.**

Header header


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



(provide :bebop_msgs/CommonCommonStateAllStatesChanged "d7be0bb39af8fb9129d5a76e6b63a290")


