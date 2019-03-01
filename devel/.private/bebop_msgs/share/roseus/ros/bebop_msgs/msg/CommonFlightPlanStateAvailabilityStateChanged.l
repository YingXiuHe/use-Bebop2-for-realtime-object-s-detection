;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonFlightPlanStateAvailabilityStateChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonFlightPlanStateAvailabilityStateChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONFLIGHTPLANSTATEAVAILABILITYSTATECHANGED")
  (make-package "BEBOP_MSGS::COMMONFLIGHTPLANSTATEAVAILABILITYSTATECHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonFlightPlanStateAvailabilityStateChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonFlightPlanStateAvailabilityStateChanged
  :super ros::object
  :slots (_header _AvailabilityState ))

(defmethod bebop_msgs::CommonFlightPlanStateAvailabilityStateChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:AvailabilityState __AvailabilityState) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _AvailabilityState (round __AvailabilityState))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:AvailabilityState
   (&optional __AvailabilityState)
   (if __AvailabilityState (setq _AvailabilityState __AvailabilityState)) _AvailabilityState)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _AvailabilityState
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _AvailabilityState
       (write-byte _AvailabilityState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _AvailabilityState
     (setq _AvailabilityState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonFlightPlanStateAvailabilityStateChanged :md5sum-) "b47d280696828874e694f8c4035109de")
(setf (get bebop_msgs::CommonFlightPlanStateAvailabilityStateChanged :datatype-) "bebop_msgs/CommonFlightPlanStateAvailabilityStateChanged")
(setf (get bebop_msgs::CommonFlightPlanStateAvailabilityStateChanged :definition-)
      "# CommonFlightPlanStateAvailabilityStateChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: FlightPlan availability.\\n Availability is linked to GPS fix, magnetometer calibration, sensor states...

Header header

# Running a flightPlan file is available (1 running a flightPlan file is available, otherwise 0)
uint8 AvailabilityState

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



(provide :bebop_msgs/CommonFlightPlanStateAvailabilityStateChanged "b47d280696828874e694f8c4035109de")


