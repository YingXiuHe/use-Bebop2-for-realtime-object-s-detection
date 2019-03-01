;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonOverHeatStateOverHeatRegulationChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonOverHeatStateOverHeatRegulationChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONOVERHEATSTATEOVERHEATREGULATIONCHANGED")
  (make-package "BEBOP_MSGS::COMMONOVERHEATSTATEOVERHEATREGULATIONCHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonOverHeatStateOverHeatRegulationChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonOverHeatStateOverHeatRegulationChanged
  :super ros::object
  :slots (_header _regulationType ))

(defmethod bebop_msgs::CommonOverHeatStateOverHeatRegulationChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:regulationType __regulationType) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _regulationType (round __regulationType))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:regulationType
   (&optional __regulationType)
   (if __regulationType (setq _regulationType __regulationType)) _regulationType)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _regulationType
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _regulationType
       (write-byte _regulationType s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _regulationType
     (setq _regulationType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonOverHeatStateOverHeatRegulationChanged :md5sum-) "bf8d95b38ecdac1938cfe7740e96d4c2")
(setf (get bebop_msgs::CommonOverHeatStateOverHeatRegulationChanged :datatype-) "bebop_msgs/CommonOverHeatStateOverHeatRegulationChanged")
(setf (get bebop_msgs::CommonOverHeatStateOverHeatRegulationChanged :definition-)
      "# CommonOverHeatStateOverHeatRegulationChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Overheat regulation type.

Header header

# Type of overheat regulation : 0 for ventilation, 1 for switch off
uint8 regulationType

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



(provide :bebop_msgs/CommonOverHeatStateOverHeatRegulationChanged "bf8d95b38ecdac1938cfe7740e96d4c2")


