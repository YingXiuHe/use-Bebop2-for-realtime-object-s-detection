; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonCommonStateSensorsStatesListChanged.msg.html

(cl:defclass <CommonCommonStateSensorsStatesListChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sensorName
    :reader sensorName
    :initarg :sensorName
    :type cl:fixnum
    :initform 0)
   (sensorState
    :reader sensorState
    :initarg :sensorState
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonCommonStateSensorsStatesListChanged (<CommonCommonStateSensorsStatesListChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonCommonStateSensorsStatesListChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonCommonStateSensorsStatesListChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonCommonStateSensorsStatesListChanged> is deprecated: use bebop_msgs-msg:CommonCommonStateSensorsStatesListChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonCommonStateSensorsStatesListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sensorName-val :lambda-list '(m))
(cl:defmethod sensorName-val ((m <CommonCommonStateSensorsStatesListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:sensorName-val is deprecated.  Use bebop_msgs-msg:sensorName instead.")
  (sensorName m))

(cl:ensure-generic-function 'sensorState-val :lambda-list '(m))
(cl:defmethod sensorState-val ((m <CommonCommonStateSensorsStatesListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:sensorState-val is deprecated.  Use bebop_msgs-msg:sensorState instead.")
  (sensorState m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CommonCommonStateSensorsStatesListChanged>)))
    "Constants for message type '<CommonCommonStateSensorsStatesListChanged>"
  '((:SENSORNAME_IMU . 0)
    (:SENSORNAME_BAROMETER . 1)
    (:SENSORNAME_ULTRASOUND . 2)
    (:SENSORNAME_GPS . 3)
    (:SENSORNAME_MAGNETOMETER . 4)
    (:SENSORNAME_VERTICAL_CAMERA . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CommonCommonStateSensorsStatesListChanged)))
    "Constants for message type 'CommonCommonStateSensorsStatesListChanged"
  '((:SENSORNAME_IMU . 0)
    (:SENSORNAME_BAROMETER . 1)
    (:SENSORNAME_ULTRASOUND . 2)
    (:SENSORNAME_GPS . 3)
    (:SENSORNAME_MAGNETOMETER . 4)
    (:SENSORNAME_VERTICAL_CAMERA . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonCommonStateSensorsStatesListChanged>) ostream)
  "Serializes a message object of type '<CommonCommonStateSensorsStatesListChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensorName)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensorState)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonCommonStateSensorsStatesListChanged>) istream)
  "Deserializes a message object of type '<CommonCommonStateSensorsStatesListChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensorName)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensorState)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonCommonStateSensorsStatesListChanged>)))
  "Returns string type for a message object of type '<CommonCommonStateSensorsStatesListChanged>"
  "bebop_msgs/CommonCommonStateSensorsStatesListChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonCommonStateSensorsStatesListChanged)))
  "Returns string type for a message object of type 'CommonCommonStateSensorsStatesListChanged"
  "bebop_msgs/CommonCommonStateSensorsStatesListChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonCommonStateSensorsStatesListChanged>)))
  "Returns md5sum for a message object of type '<CommonCommonStateSensorsStatesListChanged>"
  "21324261f7a8c1805999cb90c3c5949b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonCommonStateSensorsStatesListChanged)))
  "Returns md5sum for a message object of type 'CommonCommonStateSensorsStatesListChanged"
  "21324261f7a8c1805999cb90c3c5949b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonCommonStateSensorsStatesListChanged>)))
  "Returns full string definition for message of type '<CommonCommonStateSensorsStatesListChanged>"
  (cl:format cl:nil "# CommonCommonStateSensorsStatesListChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Sensors state list.~%~%Header header~%~%# Sensor name~%uint8 sensorName_IMU=0  # Inertial Measurement Unit sensor~%uint8 sensorName_barometer=1  # Barometer sensor~%uint8 sensorName_ultrasound=2  # Ultrasonic sensor~%uint8 sensorName_GPS=3  # GPS sensor~%uint8 sensorName_magnetometer=4  # Magnetometer sensor~%uint8 sensorName_vertical_camera=5  # Vertical Camera sensor~%uint8 sensorName~%# Sensor state (1 if the sensor is OK, 0 if the sensor is NOT OK)~%uint8 sensorState~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonCommonStateSensorsStatesListChanged)))
  "Returns full string definition for message of type 'CommonCommonStateSensorsStatesListChanged"
  (cl:format cl:nil "# CommonCommonStateSensorsStatesListChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Sensors state list.~%~%Header header~%~%# Sensor name~%uint8 sensorName_IMU=0  # Inertial Measurement Unit sensor~%uint8 sensorName_barometer=1  # Barometer sensor~%uint8 sensorName_ultrasound=2  # Ultrasonic sensor~%uint8 sensorName_GPS=3  # GPS sensor~%uint8 sensorName_magnetometer=4  # Magnetometer sensor~%uint8 sensorName_vertical_camera=5  # Vertical Camera sensor~%uint8 sensorName~%# Sensor state (1 if the sensor is OK, 0 if the sensor is NOT OK)~%uint8 sensorState~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonCommonStateSensorsStatesListChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonCommonStateSensorsStatesListChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonCommonStateSensorsStatesListChanged
    (cl:cons ':header (header msg))
    (cl:cons ':sensorName (sensorName msg))
    (cl:cons ':sensorState (sensorState msg))
))
