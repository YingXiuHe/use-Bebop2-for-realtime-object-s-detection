; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonFlightPlanStateComponentStateListChanged.msg.html

(cl:defclass <CommonFlightPlanStateComponentStateListChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (component
    :reader component
    :initarg :component
    :type cl:fixnum
    :initform 0)
   (State
    :reader State
    :initarg :State
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonFlightPlanStateComponentStateListChanged (<CommonFlightPlanStateComponentStateListChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonFlightPlanStateComponentStateListChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonFlightPlanStateComponentStateListChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonFlightPlanStateComponentStateListChanged> is deprecated: use bebop_msgs-msg:CommonFlightPlanStateComponentStateListChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonFlightPlanStateComponentStateListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'component-val :lambda-list '(m))
(cl:defmethod component-val ((m <CommonFlightPlanStateComponentStateListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:component-val is deprecated.  Use bebop_msgs-msg:component instead.")
  (component m))

(cl:ensure-generic-function 'State-val :lambda-list '(m))
(cl:defmethod State-val ((m <CommonFlightPlanStateComponentStateListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:State-val is deprecated.  Use bebop_msgs-msg:State instead.")
  (State m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CommonFlightPlanStateComponentStateListChanged>)))
    "Constants for message type '<CommonFlightPlanStateComponentStateListChanged>"
  '((:COMPONENT_GPS . 0)
    (:COMPONENT_CALIBRATION . 1)
    (:COMPONENT_MAVLINK_FILE . 2)
    (:COMPONENT_TAKEOFF . 3)
    (:COMPONENT_WAYPOINTSBEYONDGEOFENCE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CommonFlightPlanStateComponentStateListChanged)))
    "Constants for message type 'CommonFlightPlanStateComponentStateListChanged"
  '((:COMPONENT_GPS . 0)
    (:COMPONENT_CALIBRATION . 1)
    (:COMPONENT_MAVLINK_FILE . 2)
    (:COMPONENT_TAKEOFF . 3)
    (:COMPONENT_WAYPOINTSBEYONDGEOFENCE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonFlightPlanStateComponentStateListChanged>) ostream)
  "Serializes a message object of type '<CommonFlightPlanStateComponentStateListChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'component)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'State)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonFlightPlanStateComponentStateListChanged>) istream)
  "Deserializes a message object of type '<CommonFlightPlanStateComponentStateListChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'component)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'State)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonFlightPlanStateComponentStateListChanged>)))
  "Returns string type for a message object of type '<CommonFlightPlanStateComponentStateListChanged>"
  "bebop_msgs/CommonFlightPlanStateComponentStateListChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonFlightPlanStateComponentStateListChanged)))
  "Returns string type for a message object of type 'CommonFlightPlanStateComponentStateListChanged"
  "bebop_msgs/CommonFlightPlanStateComponentStateListChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonFlightPlanStateComponentStateListChanged>)))
  "Returns md5sum for a message object of type '<CommonFlightPlanStateComponentStateListChanged>"
  "61463ac9d27f6b9f7cbcf76649da9cd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonFlightPlanStateComponentStateListChanged)))
  "Returns md5sum for a message object of type 'CommonFlightPlanStateComponentStateListChanged"
  "61463ac9d27f6b9f7cbcf76649da9cd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonFlightPlanStateComponentStateListChanged>)))
  "Returns full string definition for message of type '<CommonFlightPlanStateComponentStateListChanged>"
  (cl:format cl:nil "# CommonFlightPlanStateComponentStateListChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: FlightPlan components state list.~%~%Header header~%~%# Drone FlightPlan component id (unique)~%uint8 component_GPS=0  # Drone GPS component. State is 0 when the drone needs a GPS fix.~%uint8 component_Calibration=1  # Drone Calibration component. State is 0 when the sensors of the drone needs to be calibrated.~%uint8 component_Mavlink_File=2  # Mavlink file component. State is 0 when the mavlink file is missing or contains error.~%uint8 component_TakeOff=3  # Drone Take off component. State is 0 when the drone cannot take-off.~%uint8 component_WaypointsBeyondGeofence=4  # Component for waypoints beyond the geofence. State is 0 when one or more waypoints are beyond the geofence.~%uint8 component~%# State of the FlightPlan component (1 FlightPlan component OK, otherwise 0)~%uint8 State~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonFlightPlanStateComponentStateListChanged)))
  "Returns full string definition for message of type 'CommonFlightPlanStateComponentStateListChanged"
  (cl:format cl:nil "# CommonFlightPlanStateComponentStateListChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: FlightPlan components state list.~%~%Header header~%~%# Drone FlightPlan component id (unique)~%uint8 component_GPS=0  # Drone GPS component. State is 0 when the drone needs a GPS fix.~%uint8 component_Calibration=1  # Drone Calibration component. State is 0 when the sensors of the drone needs to be calibrated.~%uint8 component_Mavlink_File=2  # Mavlink file component. State is 0 when the mavlink file is missing or contains error.~%uint8 component_TakeOff=3  # Drone Take off component. State is 0 when the drone cannot take-off.~%uint8 component_WaypointsBeyondGeofence=4  # Component for waypoints beyond the geofence. State is 0 when one or more waypoints are beyond the geofence.~%uint8 component~%# State of the FlightPlan component (1 FlightPlan component OK, otherwise 0)~%uint8 State~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonFlightPlanStateComponentStateListChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonFlightPlanStateComponentStateListChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonFlightPlanStateComponentStateListChanged
    (cl:cons ':header (header msg))
    (cl:cons ':component (component msg))
    (cl:cons ':State (State msg))
))
