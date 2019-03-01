;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonMavlinkStateMavlinkPlayErrorStateChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonMavlinkStateMavlinkPlayErrorStateChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKPLAYERRORSTATECHANGED")
  (make-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKPLAYERRORSTATECHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonMavlinkStateMavlinkPlayErrorStateChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ERROR_NONE*" (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKPLAYERRORSTATECHANGED"))
(shadow '*ERROR_NONE* (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKPLAYERRORSTATECHANGED"))
(defconstant bebop_msgs::CommonMavlinkStateMavlinkPlayErrorStateChanged::*ERROR_NONE* 0)
(intern "*ERROR_NOTINOUTDOORMODE*" (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKPLAYERRORSTATECHANGED"))
(shadow '*ERROR_NOTINOUTDOORMODE* (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKPLAYERRORSTATECHANGED"))
(defconstant bebop_msgs::CommonMavlinkStateMavlinkPlayErrorStateChanged::*ERROR_NOTINOUTDOORMODE* 1)
(intern "*ERROR_GPSNOTFIXED*" (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKPLAYERRORSTATECHANGED"))
(shadow '*ERROR_GPSNOTFIXED* (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKPLAYERRORSTATECHANGED"))
(defconstant bebop_msgs::CommonMavlinkStateMavlinkPlayErrorStateChanged::*ERROR_GPSNOTFIXED* 2)
(intern "*ERROR_NOTCALIBRATED*" (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKPLAYERRORSTATECHANGED"))
(shadow '*ERROR_NOTCALIBRATED* (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKPLAYERRORSTATECHANGED"))
(defconstant bebop_msgs::CommonMavlinkStateMavlinkPlayErrorStateChanged::*ERROR_NOTCALIBRATED* 3)
(defclass bebop_msgs::CommonMavlinkStateMavlinkPlayErrorStateChanged
  :super ros::object
  :slots (_header _error ))

(defmethod bebop_msgs::CommonMavlinkStateMavlinkPlayErrorStateChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:error __error) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _error (round __error))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _error
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _error
       (write-byte _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _error
     (setq _error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonMavlinkStateMavlinkPlayErrorStateChanged :md5sum-) "5b9181d0c169113a4ceac9ebedd1a8b4")
(setf (get bebop_msgs::CommonMavlinkStateMavlinkPlayErrorStateChanged :datatype-) "bebop_msgs/CommonMavlinkStateMavlinkPlayErrorStateChanged")
(setf (get bebop_msgs::CommonMavlinkStateMavlinkPlayErrorStateChanged :definition-)
      "# CommonMavlinkStateMavlinkPlayErrorStateChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: FlightPlan error.

Header header

# State of play error
uint8 error_none=0  # There is no error
uint8 error_notInOutDoorMode=1  # The drone is not in outdoor mode
uint8 error_gpsNotFixed=2  # The gps is not fixed
uint8 error_notCalibrated=3  # The magnetometer of the drone is not calibrated
uint8 error

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



(provide :bebop_msgs/CommonMavlinkStateMavlinkPlayErrorStateChanged "5b9181d0c169113a4ceac9ebedd1a8b4")


