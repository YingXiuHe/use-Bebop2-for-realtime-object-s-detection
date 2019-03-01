;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonMavlinkStateMissionItemExecuted)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonMavlinkStateMissionItemExecuted (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMISSIONITEMEXECUTED")
  (make-package "BEBOP_MSGS::COMMONMAVLINKSTATEMISSIONITEMEXECUTED"))

(in-package "ROS")
;;//! \htmlinclude CommonMavlinkStateMissionItemExecuted.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonMavlinkStateMissionItemExecuted
  :super ros::object
  :slots (_header _idx ))

(defmethod bebop_msgs::CommonMavlinkStateMissionItemExecuted
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:idx __idx) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _idx (round __idx))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:idx
   (&optional __idx)
   (if __idx (setq _idx __idx)) _idx)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _idx
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _idx
       (write-long _idx s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _idx
     (setq _idx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonMavlinkStateMissionItemExecuted :md5sum-) "43f8b630624670ebf7b3ae671d2b84e3")
(setf (get bebop_msgs::CommonMavlinkStateMissionItemExecuted :datatype-) "bebop_msgs/CommonMavlinkStateMissionItemExecuted")
(setf (get bebop_msgs::CommonMavlinkStateMissionItemExecuted :definition-)
      "# CommonMavlinkStateMissionItemExecuted
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Mission item has been executed.

Header header

# Index of the mission item. This is the place of the mission item in the list of the items of the mission. Begins at 0.
uint32 idx

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



(provide :bebop_msgs/CommonMavlinkStateMissionItemExecuted "43f8b630624670ebf7b3ae671d2b84e3")


