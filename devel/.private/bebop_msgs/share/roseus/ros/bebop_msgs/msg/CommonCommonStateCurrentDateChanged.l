;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonCommonStateCurrentDateChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonCommonStateCurrentDateChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCOMMONSTATECURRENTDATECHANGED")
  (make-package "BEBOP_MSGS::COMMONCOMMONSTATECURRENTDATECHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonCommonStateCurrentDateChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonCommonStateCurrentDateChanged
  :super ros::object
  :slots (_header _date ))

(defmethod bebop_msgs::CommonCommonStateCurrentDateChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:date __date) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _date (string __date))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:date
   (&optional __date)
   (if __date (setq _date __date)) _date)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _date
    4 (length _date)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _date
       (write-long (length _date) s) (princ _date s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _date
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _date (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get bebop_msgs::CommonCommonStateCurrentDateChanged :md5sum-) "7b1c2ad09d95986b33cc46dd275d6aad")
(setf (get bebop_msgs::CommonCommonStateCurrentDateChanged :datatype-) "bebop_msgs/CommonCommonStateCurrentDateChanged")
(setf (get bebop_msgs::CommonCommonStateCurrentDateChanged :definition-)
      "# CommonCommonStateCurrentDateChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Date changed.\\n Corresponds to the latest date set on the drone.\\n\\n **Please note that you should not care about this event if you are using the libARController API as this library is handling the connection process for you.**

Header header

# Date with ISO-8601 format
string date

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



(provide :bebop_msgs/CommonCommonStateCurrentDateChanged "7b1c2ad09d95986b33cc46dd275d6aad")


