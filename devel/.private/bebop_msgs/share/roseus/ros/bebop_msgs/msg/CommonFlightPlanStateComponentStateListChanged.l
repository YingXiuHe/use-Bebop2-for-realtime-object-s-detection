;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonFlightPlanStateComponentStateListChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonFlightPlanStateComponentStateListChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONFLIGHTPLANSTATECOMPONENTSTATELISTCHANGED")
  (make-package "BEBOP_MSGS::COMMONFLIGHTPLANSTATECOMPONENTSTATELISTCHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonFlightPlanStateComponentStateListChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*COMPONENT_GPS*" (find-package "BEBOP_MSGS::COMMONFLIGHTPLANSTATECOMPONENTSTATELISTCHANGED"))
(shadow '*COMPONENT_GPS* (find-package "BEBOP_MSGS::COMMONFLIGHTPLANSTATECOMPONENTSTATELISTCHANGED"))
(defconstant bebop_msgs::CommonFlightPlanStateComponentStateListChanged::*COMPONENT_GPS* 0)
(intern "*COMPONENT_CALIBRATION*" (find-package "BEBOP_MSGS::COMMONFLIGHTPLANSTATECOMPONENTSTATELISTCHANGED"))
(shadow '*COMPONENT_CALIBRATION* (find-package "BEBOP_MSGS::COMMONFLIGHTPLANSTATECOMPONENTSTATELISTCHANGED"))
(defconstant bebop_msgs::CommonFlightPlanStateComponentStateListChanged::*COMPONENT_CALIBRATION* 1)
(intern "*COMPONENT_MAVLINK_FILE*" (find-package "BEBOP_MSGS::COMMONFLIGHTPLANSTATECOMPONENTSTATELISTCHANGED"))
(shadow '*COMPONENT_MAVLINK_FILE* (find-package "BEBOP_MSGS::COMMONFLIGHTPLANSTATECOMPONENTSTATELISTCHANGED"))
(defconstant bebop_msgs::CommonFlightPlanStateComponentStateListChanged::*COMPONENT_MAVLINK_FILE* 2)
(intern "*COMPONENT_TAKEOFF*" (find-package "BEBOP_MSGS::COMMONFLIGHTPLANSTATECOMPONENTSTATELISTCHANGED"))
(shadow '*COMPONENT_TAKEOFF* (find-package "BEBOP_MSGS::COMMONFLIGHTPLANSTATECOMPONENTSTATELISTCHANGED"))
(defconstant bebop_msgs::CommonFlightPlanStateComponentStateListChanged::*COMPONENT_TAKEOFF* 3)
(intern "*COMPONENT_WAYPOINTSBEYONDGEOFENCE*" (find-package "BEBOP_MSGS::COMMONFLIGHTPLANSTATECOMPONENTSTATELISTCHANGED"))
(shadow '*COMPONENT_WAYPOINTSBEYONDGEOFENCE* (find-package "BEBOP_MSGS::COMMONFLIGHTPLANSTATECOMPONENTSTATELISTCHANGED"))
(defconstant bebop_msgs::CommonFlightPlanStateComponentStateListChanged::*COMPONENT_WAYPOINTSBEYONDGEOFENCE* 4)
(defclass bebop_msgs::CommonFlightPlanStateComponentStateListChanged
  :super ros::object
  :slots (_header _component _State ))

(defmethod bebop_msgs::CommonFlightPlanStateComponentStateListChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:component __component) 0)
    ((:State __State) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _component (round __component))
   (setq _State (round __State))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:component
   (&optional __component)
   (if __component (setq _component __component)) _component)
  (:State
   (&optional __State)
   (if __State (setq _State __State)) _State)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _component
    1
    ;; uint8 _State
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _component
       (write-byte _component s)
     ;; uint8 _State
       (write-byte _State s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _component
     (setq _component (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _State
     (setq _State (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonFlightPlanStateComponentStateListChanged :md5sum-) "61463ac9d27f6b9f7cbcf76649da9cd3")
(setf (get bebop_msgs::CommonFlightPlanStateComponentStateListChanged :datatype-) "bebop_msgs/CommonFlightPlanStateComponentStateListChanged")
(setf (get bebop_msgs::CommonFlightPlanStateComponentStateListChanged :definition-)
      "# CommonFlightPlanStateComponentStateListChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: FlightPlan components state list.

Header header

# Drone FlightPlan component id (unique)
uint8 component_GPS=0  # Drone GPS component. State is 0 when the drone needs a GPS fix.
uint8 component_Calibration=1  # Drone Calibration component. State is 0 when the sensors of the drone needs to be calibrated.
uint8 component_Mavlink_File=2  # Mavlink file component. State is 0 when the mavlink file is missing or contains error.
uint8 component_TakeOff=3  # Drone Take off component. State is 0 when the drone cannot take-off.
uint8 component_WaypointsBeyondGeofence=4  # Component for waypoints beyond the geofence. State is 0 when one or more waypoints are beyond the geofence.
uint8 component
# State of the FlightPlan component (1 FlightPlan component OK, otherwise 0)
uint8 State

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



(provide :bebop_msgs/CommonFlightPlanStateComponentStateListChanged "61463ac9d27f6b9f7cbcf76649da9cd3")


