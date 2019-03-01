; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3PilotingStateGpsLocationChanged.msg.html

(cl:defclass <Ardrone3PilotingStateGpsLocationChanged> (roslisp-msg-protocol:ros-message)
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
   (latitude_accuracy
    :reader latitude_accuracy
    :initarg :latitude_accuracy
    :type cl:fixnum
    :initform 0)
   (longitude_accuracy
    :reader longitude_accuracy
    :initarg :longitude_accuracy
    :type cl:fixnum
    :initform 0)
   (altitude_accuracy
    :reader altitude_accuracy
    :initarg :altitude_accuracy
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Ardrone3PilotingStateGpsLocationChanged (<Ardrone3PilotingStateGpsLocationChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3PilotingStateGpsLocationChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3PilotingStateGpsLocationChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3PilotingStateGpsLocationChanged> is deprecated: use bebop_msgs-msg:Ardrone3PilotingStateGpsLocationChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3PilotingStateGpsLocationChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <Ardrone3PilotingStateGpsLocationChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:latitude-val is deprecated.  Use bebop_msgs-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <Ardrone3PilotingStateGpsLocationChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:longitude-val is deprecated.  Use bebop_msgs-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <Ardrone3PilotingStateGpsLocationChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:altitude-val is deprecated.  Use bebop_msgs-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'latitude_accuracy-val :lambda-list '(m))
(cl:defmethod latitude_accuracy-val ((m <Ardrone3PilotingStateGpsLocationChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:latitude_accuracy-val is deprecated.  Use bebop_msgs-msg:latitude_accuracy instead.")
  (latitude_accuracy m))

(cl:ensure-generic-function 'longitude_accuracy-val :lambda-list '(m))
(cl:defmethod longitude_accuracy-val ((m <Ardrone3PilotingStateGpsLocationChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:longitude_accuracy-val is deprecated.  Use bebop_msgs-msg:longitude_accuracy instead.")
  (longitude_accuracy m))

(cl:ensure-generic-function 'altitude_accuracy-val :lambda-list '(m))
(cl:defmethod altitude_accuracy-val ((m <Ardrone3PilotingStateGpsLocationChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:altitude_accuracy-val is deprecated.  Use bebop_msgs-msg:altitude_accuracy instead.")
  (altitude_accuracy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3PilotingStateGpsLocationChanged>) ostream)
  "Serializes a message object of type '<Ardrone3PilotingStateGpsLocationChanged>"
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
  (cl:let* ((signed (cl:slot-value msg 'latitude_accuracy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'longitude_accuracy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'altitude_accuracy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3PilotingStateGpsLocationChanged>) istream)
  "Deserializes a message object of type '<Ardrone3PilotingStateGpsLocationChanged>"
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'latitude_accuracy) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'longitude_accuracy) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'altitude_accuracy) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3PilotingStateGpsLocationChanged>)))
  "Returns string type for a message object of type '<Ardrone3PilotingStateGpsLocationChanged>"
  "bebop_msgs/Ardrone3PilotingStateGpsLocationChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3PilotingStateGpsLocationChanged)))
  "Returns string type for a message object of type 'Ardrone3PilotingStateGpsLocationChanged"
  "bebop_msgs/Ardrone3PilotingStateGpsLocationChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3PilotingStateGpsLocationChanged>)))
  "Returns md5sum for a message object of type '<Ardrone3PilotingStateGpsLocationChanged>"
  "ac3eedcc2193887dd8d2257bf807fbae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3PilotingStateGpsLocationChanged)))
  "Returns md5sum for a message object of type 'Ardrone3PilotingStateGpsLocationChanged"
  "ac3eedcc2193887dd8d2257bf807fbae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3PilotingStateGpsLocationChanged>)))
  "Returns full string definition for message of type '<Ardrone3PilotingStateGpsLocationChanged>"
  (cl:format cl:nil "# Ardrone3PilotingStateGpsLocationChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Drones location changed.\\n This event is meant to replace [PositionChanged](#1-4-4).~%~%Header header~%~%# Latitude location in decimal degrees (500.0 if not available)~%float64 latitude~%# Longitude location in decimal degrees (500.0 if not available)~%float64 longitude~%# Altitude location in meters.~%float64 altitude~%# Latitude location error in meters (1 sigma/standard deviation) -1 if not available.~%int8 latitude_accuracy~%# Longitude location error in meters (1 sigma/standard deviation) -1 if not available.~%int8 longitude_accuracy~%# Altitude location error in meters (1 sigma/standard deviation) -1 if not available.~%int8 altitude_accuracy~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3PilotingStateGpsLocationChanged)))
  "Returns full string definition for message of type 'Ardrone3PilotingStateGpsLocationChanged"
  (cl:format cl:nil "# Ardrone3PilotingStateGpsLocationChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Drones location changed.\\n This event is meant to replace [PositionChanged](#1-4-4).~%~%Header header~%~%# Latitude location in decimal degrees (500.0 if not available)~%float64 latitude~%# Longitude location in decimal degrees (500.0 if not available)~%float64 longitude~%# Altitude location in meters.~%float64 altitude~%# Latitude location error in meters (1 sigma/standard deviation) -1 if not available.~%int8 latitude_accuracy~%# Longitude location error in meters (1 sigma/standard deviation) -1 if not available.~%int8 longitude_accuracy~%# Altitude location error in meters (1 sigma/standard deviation) -1 if not available.~%int8 altitude_accuracy~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3PilotingStateGpsLocationChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3PilotingStateGpsLocationChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3PilotingStateGpsLocationChanged
    (cl:cons ':header (header msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':latitude_accuracy (latitude_accuracy msg))
    (cl:cons ':longitude_accuracy (longitude_accuracy msg))
    (cl:cons ':altitude_accuracy (altitude_accuracy msg))
))
