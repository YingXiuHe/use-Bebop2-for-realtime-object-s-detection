;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonCommonStateCurrentTimeChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonCommonStateCurrentTimeChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCOMMONSTATECURRENTTIMECHANGED")
  (make-package "BEBOP_MSGS::COMMONCOMMONSTATECURRENTTIMECHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonCommonStateCurrentTimeChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonCommonStateCurrentTimeChanged
  :super ros::object
  :slots (_header _time ))

(defmethod bebop_msgs::CommonCommonStateCurrentTimeChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time __time) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _time (string __time))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _time
    4 (length _time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _time
       (write-long (length _time) s) (princ _time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get bebop_msgs::CommonCommonStateCurrentTimeChanged :md5sum-) "5efc9584d0b45a4422ec41d222235ff2")
(setf (get bebop_msgs::CommonCommonStateCurrentTimeChanged :datatype-) "bebop_msgs/CommonCommonStateCurrentTimeChanged")
(setf (get bebop_msgs::CommonCommonStateCurrentTimeChanged :definition-)
      "# CommonCommonStateCurrentTimeChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Time changed.\\n Corresponds to the latest time set on the drone.\\n\\n **Please note that you should not care about this event if you are using the libARController API as this library is handling the connection process for you.**

Header header

# Time with ISO-8601 format
string time

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



(provide :bebop_msgs/CommonCommonStateCurrentTimeChanged "5efc9584d0b45a4422ec41d222235ff2")


