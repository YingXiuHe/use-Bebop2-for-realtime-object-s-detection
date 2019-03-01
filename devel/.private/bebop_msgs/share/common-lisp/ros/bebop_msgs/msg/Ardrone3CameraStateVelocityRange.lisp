; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3CameraStateVelocityRange.msg.html

(cl:defclass <Ardrone3CameraStateVelocityRange> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (max_tilt
    :reader max_tilt
    :initarg :max_tilt
    :type cl:float
    :initform 0.0)
   (max_pan
    :reader max_pan
    :initarg :max_pan
    :type cl:float
    :initform 0.0))
)

(cl:defclass Ardrone3CameraStateVelocityRange (<Ardrone3CameraStateVelocityRange>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3CameraStateVelocityRange>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3CameraStateVelocityRange)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3CameraStateVelocityRange> is deprecated: use bebop_msgs-msg:Ardrone3CameraStateVelocityRange instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3CameraStateVelocityRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'max_tilt-val :lambda-list '(m))
(cl:defmethod max_tilt-val ((m <Ardrone3CameraStateVelocityRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:max_tilt-val is deprecated.  Use bebop_msgs-msg:max_tilt instead.")
  (max_tilt m))

(cl:ensure-generic-function 'max_pan-val :lambda-list '(m))
(cl:defmethod max_pan-val ((m <Ardrone3CameraStateVelocityRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:max_pan-val is deprecated.  Use bebop_msgs-msg:max_pan instead.")
  (max_pan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3CameraStateVelocityRange>) ostream)
  "Serializes a message object of type '<Ardrone3CameraStateVelocityRange>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_tilt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_pan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3CameraStateVelocityRange>) istream)
  "Deserializes a message object of type '<Ardrone3CameraStateVelocityRange>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_tilt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_pan) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3CameraStateVelocityRange>)))
  "Returns string type for a message object of type '<Ardrone3CameraStateVelocityRange>"
  "bebop_msgs/Ardrone3CameraStateVelocityRange")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3CameraStateVelocityRange)))
  "Returns string type for a message object of type 'Ardrone3CameraStateVelocityRange"
  "bebop_msgs/Ardrone3CameraStateVelocityRange")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3CameraStateVelocityRange>)))
  "Returns md5sum for a message object of type '<Ardrone3CameraStateVelocityRange>"
  "cda98074fc63d3bb789505d7a068cced")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3CameraStateVelocityRange)))
  "Returns md5sum for a message object of type 'Ardrone3CameraStateVelocityRange"
  "cda98074fc63d3bb789505d7a068cced")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3CameraStateVelocityRange>)))
  "Returns full string definition for message of type '<Ardrone3CameraStateVelocityRange>"
  (cl:format cl:nil "# Ardrone3CameraStateVelocityRange~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Camera Orientation velocity limits.~%~%Header header~%~%# Absolute max tilt velocity [deg/s]~%float32 max_tilt~%# Absolute max pan velocity [deg/s]~%float32 max_pan~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3CameraStateVelocityRange)))
  "Returns full string definition for message of type 'Ardrone3CameraStateVelocityRange"
  (cl:format cl:nil "# Ardrone3CameraStateVelocityRange~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Camera Orientation velocity limits.~%~%Header header~%~%# Absolute max tilt velocity [deg/s]~%float32 max_tilt~%# Absolute max pan velocity [deg/s]~%float32 max_pan~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3CameraStateVelocityRange>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3CameraStateVelocityRange>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3CameraStateVelocityRange
    (cl:cons ':header (header msg))
    (cl:cons ':max_tilt (max_tilt msg))
    (cl:cons ':max_pan (max_pan msg))
))
