; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3GPSStateHomeTypeAvailabilityChanged.msg.html

(cl:defclass <Ardrone3GPSStateHomeTypeAvailabilityChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Ardrone3GPSStateHomeTypeAvailabilityChanged (<Ardrone3GPSStateHomeTypeAvailabilityChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3GPSStateHomeTypeAvailabilityChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3GPSStateHomeTypeAvailabilityChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3GPSStateHomeTypeAvailabilityChanged> is deprecated: use bebop_msgs-msg:Ardrone3GPSStateHomeTypeAvailabilityChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3GPSStateHomeTypeAvailabilityChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Ardrone3GPSStateHomeTypeAvailabilityChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:type-val is deprecated.  Use bebop_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <Ardrone3GPSStateHomeTypeAvailabilityChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:available-val is deprecated.  Use bebop_msgs-msg:available instead.")
  (available m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Ardrone3GPSStateHomeTypeAvailabilityChanged>)))
    "Constants for message type '<Ardrone3GPSStateHomeTypeAvailabilityChanged>"
  '((:TYPE_TAKEOFF . 0)
    (:TYPE_PILOT . 1)
    (:TYPE_FIRST_FIX . 2)
    (:TYPE_FOLLOWEE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Ardrone3GPSStateHomeTypeAvailabilityChanged)))
    "Constants for message type 'Ardrone3GPSStateHomeTypeAvailabilityChanged"
  '((:TYPE_TAKEOFF . 0)
    (:TYPE_PILOT . 1)
    (:TYPE_FIRST_FIX . 2)
    (:TYPE_FOLLOWEE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3GPSStateHomeTypeAvailabilityChanged>) ostream)
  "Serializes a message object of type '<Ardrone3GPSStateHomeTypeAvailabilityChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3GPSStateHomeTypeAvailabilityChanged>) istream)
  "Deserializes a message object of type '<Ardrone3GPSStateHomeTypeAvailabilityChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3GPSStateHomeTypeAvailabilityChanged>)))
  "Returns string type for a message object of type '<Ardrone3GPSStateHomeTypeAvailabilityChanged>"
  "bebop_msgs/Ardrone3GPSStateHomeTypeAvailabilityChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3GPSStateHomeTypeAvailabilityChanged)))
  "Returns string type for a message object of type 'Ardrone3GPSStateHomeTypeAvailabilityChanged"
  "bebop_msgs/Ardrone3GPSStateHomeTypeAvailabilityChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3GPSStateHomeTypeAvailabilityChanged>)))
  "Returns md5sum for a message object of type '<Ardrone3GPSStateHomeTypeAvailabilityChanged>"
  "d999243a44694f8883e478c6f2492144")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3GPSStateHomeTypeAvailabilityChanged)))
  "Returns md5sum for a message object of type 'Ardrone3GPSStateHomeTypeAvailabilityChanged"
  "d999243a44694f8883e478c6f2492144")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3GPSStateHomeTypeAvailabilityChanged>)))
  "Returns full string definition for message of type '<Ardrone3GPSStateHomeTypeAvailabilityChanged>"
  (cl:format cl:nil "# Ardrone3GPSStateHomeTypeAvailabilityChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Home type availability.~%~%Header header~%~%# The type of the return home~%uint8 type_TAKEOFF=0  # The drone has enough information to return to the take off position~%uint8 type_PILOT=1  # The drone has enough information to return to the pilot position~%uint8 type_FIRST_FIX=2  # The drone has not enough information, it will return to the first GPS fix~%uint8 type_FOLLOWEE=3  # The drone has enough information to return to the target of the current (or last) follow me~%uint8 type~%# 1 if this type is available, 0 otherwise~%uint8 available~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3GPSStateHomeTypeAvailabilityChanged)))
  "Returns full string definition for message of type 'Ardrone3GPSStateHomeTypeAvailabilityChanged"
  (cl:format cl:nil "# Ardrone3GPSStateHomeTypeAvailabilityChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Home type availability.~%~%Header header~%~%# The type of the return home~%uint8 type_TAKEOFF=0  # The drone has enough information to return to the take off position~%uint8 type_PILOT=1  # The drone has enough information to return to the pilot position~%uint8 type_FIRST_FIX=2  # The drone has not enough information, it will return to the first GPS fix~%uint8 type_FOLLOWEE=3  # The drone has enough information to return to the target of the current (or last) follow me~%uint8 type~%# 1 if this type is available, 0 otherwise~%uint8 available~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3GPSStateHomeTypeAvailabilityChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3GPSStateHomeTypeAvailabilityChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3GPSStateHomeTypeAvailabilityChanged
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':available (available msg))
))
