; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3PilotingStatemoveToChanged.msg.html

(cl:defclass <Ardrone3PilotingStatemoveToChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (orientation_mode
    :reader orientation_mode
    :initarg :orientation_mode
    :type cl:fixnum
    :initform 0)
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Ardrone3PilotingStatemoveToChanged (<Ardrone3PilotingStatemoveToChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3PilotingStatemoveToChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3PilotingStatemoveToChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3PilotingStatemoveToChanged> is deprecated: use bebop_msgs-msg:Ardrone3PilotingStatemoveToChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3PilotingStatemoveToChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <Ardrone3PilotingStatemoveToChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:latitude-val is deprecated.  Use bebop_msgs-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <Ardrone3PilotingStatemoveToChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:longitude-val is deprecated.  Use bebop_msgs-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <Ardrone3PilotingStatemoveToChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:altitude-val is deprecated.  Use bebop_msgs-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'orientation_mode-val :lambda-list '(m))
(cl:defmethod orientation_mode-val ((m <Ardrone3PilotingStatemoveToChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:orientation_mode-val is deprecated.  Use bebop_msgs-msg:orientation_mode instead.")
  (orientation_mode m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <Ardrone3PilotingStatemoveToChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:heading-val is deprecated.  Use bebop_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Ardrone3PilotingStatemoveToChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:status-val is deprecated.  Use bebop_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Ardrone3PilotingStatemoveToChanged>)))
    "Constants for message type '<Ardrone3PilotingStatemoveToChanged>"
  '((:ORIENTATION_MODE_NONE . 0)
    (:ORIENTATION_MODE_TO_TARGET . 1)
    (:ORIENTATION_MODE_HEADING_START . 2)
    (:ORIENTATION_MODE_HEADING_DURING . 3)
    (:STATUS_RUNNING . 0)
    (:STATUS_DONE . 1)
    (:STATUS_CANCELED . 2)
    (:STATUS_ERROR . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Ardrone3PilotingStatemoveToChanged)))
    "Constants for message type 'Ardrone3PilotingStatemoveToChanged"
  '((:ORIENTATION_MODE_NONE . 0)
    (:ORIENTATION_MODE_TO_TARGET . 1)
    (:ORIENTATION_MODE_HEADING_START . 2)
    (:ORIENTATION_MODE_HEADING_DURING . 3)
    (:STATUS_RUNNING . 0)
    (:STATUS_DONE . 1)
    (:STATUS_CANCELED . 2)
    (:STATUS_ERROR . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3PilotingStatemoveToChanged>) ostream)
  "Serializes a message object of type '<Ardrone3PilotingStatemoveToChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'orientation_mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3PilotingStatemoveToChanged>) istream)
  "Deserializes a message object of type '<Ardrone3PilotingStatemoveToChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'orientation_mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3PilotingStatemoveToChanged>)))
  "Returns string type for a message object of type '<Ardrone3PilotingStatemoveToChanged>"
  "bebop_msgs/Ardrone3PilotingStatemoveToChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3PilotingStatemoveToChanged)))
  "Returns string type for a message object of type 'Ardrone3PilotingStatemoveToChanged"
  "bebop_msgs/Ardrone3PilotingStatemoveToChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3PilotingStatemoveToChanged>)))
  "Returns md5sum for a message object of type '<Ardrone3PilotingStatemoveToChanged>"
  "f356580a128658358cde541e12e3218b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3PilotingStatemoveToChanged)))
  "Returns md5sum for a message object of type 'Ardrone3PilotingStatemoveToChanged"
  "f356580a128658358cde541e12e3218b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3PilotingStatemoveToChanged>)))
  "Returns full string definition for message of type '<Ardrone3PilotingStatemoveToChanged>"
  (cl:format cl:nil "# Ardrone3PilotingStatemoveToChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: The drone moves or moved to a given location.~%~%Header header~%~%# Latitude of the location (in degrees) to reach~%float64 latitude~%# Longitude of the location (in degrees) to reach~%float64 longitude~%# Altitude above sea level (in m) to reach~%float64 altitude~%# Orientation mode of the move to~%uint8 orientation_mode_NONE=0  # The drone wont change its orientation~%uint8 orientation_mode_TO_TARGET=1  # The drone will make a rotation to look in direction of the given location~%uint8 orientation_mode_HEADING_START=2  # The drone will orientate itself to the given heading before moving to the location~%uint8 orientation_mode_HEADING_DURING=3  # The drone will orientate itself to the given heading while moving to the location~%uint8 orientation_mode~%# Heading (relative to the North in degrees). This value is only used if the orientation mode is HEADING_START or HEADING_DURING~%float32 heading~%# Status of the move to~%uint8 status_RUNNING=0  # The drone is actually flying to the given position~%uint8 status_DONE=1  # The drone has reached the target~%uint8 status_CANCELED=2  # The move to has been canceled, either by a new moveTo command or by a CancelMoveTo command.~%uint8 status_ERROR=3  # The move to has not been finished or started because of an error.~%uint8 status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3PilotingStatemoveToChanged)))
  "Returns full string definition for message of type 'Ardrone3PilotingStatemoveToChanged"
  (cl:format cl:nil "# Ardrone3PilotingStatemoveToChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: The drone moves or moved to a given location.~%~%Header header~%~%# Latitude of the location (in degrees) to reach~%float64 latitude~%# Longitude of the location (in degrees) to reach~%float64 longitude~%# Altitude above sea level (in m) to reach~%float64 altitude~%# Orientation mode of the move to~%uint8 orientation_mode_NONE=0  # The drone wont change its orientation~%uint8 orientation_mode_TO_TARGET=1  # The drone will make a rotation to look in direction of the given location~%uint8 orientation_mode_HEADING_START=2  # The drone will orientate itself to the given heading before moving to the location~%uint8 orientation_mode_HEADING_DURING=3  # The drone will orientate itself to the given heading while moving to the location~%uint8 orientation_mode~%# Heading (relative to the North in degrees). This value is only used if the orientation mode is HEADING_START or HEADING_DURING~%float32 heading~%# Status of the move to~%uint8 status_RUNNING=0  # The drone is actually flying to the given position~%uint8 status_DONE=1  # The drone has reached the target~%uint8 status_CANCELED=2  # The move to has been canceled, either by a new moveTo command or by a CancelMoveTo command.~%uint8 status_ERROR=3  # The move to has not been finished or started because of an error.~%uint8 status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3PilotingStatemoveToChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     1
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3PilotingStatemoveToChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3PilotingStatemoveToChanged
    (cl:cons ':header (header msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':orientation_mode (orientation_mode msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':status (status msg))
))
