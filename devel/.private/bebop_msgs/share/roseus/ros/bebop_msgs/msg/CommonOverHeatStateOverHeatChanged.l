;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonOverHeatStateOverHeatChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonOverHeatStateOverHeatChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONOVERHEATSTATEOVERHEATCHANGED")
  (make-package "BEBOP_MSGS::COMMONOVERHEATSTATEOVERHEATCHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonOverHeatStateOverHeatChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonOverHeatStateOverHeatChanged
  :super ros::object
  :slots (_header ))

(defmethod bebop_msgs::CommonOverHeatStateOverHeatChanged
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

(setf (get bebop_msgs::CommonOverHeatStateOverHeatChanged :md5sum-) "d7be0bb39af8fb9129d5a76e6b63a290")
(setf (get bebop_msgs::CommonOverHeatStateOverHeatChanged :datatype-) "bebop_msgs/CommonOverHeatStateOverHeatChanged")
(setf (get bebop_msgs::CommonOverHeatStateOverHeatChanged :definition-)
      "# CommonOverHeatStateOverHeatChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Overheat temperature reached.

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



(provide :bebop_msgs/CommonOverHeatStateOverHeatChanged "d7be0bb39af8fb9129d5a76e6b63a290")


