; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3CameraStatedefaultCameraOrientationV2.msg.html

(cl:defclass <Ardrone3CameraStatedefaultCameraOrientationV2> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tilt
    :reader tilt
    :initarg :tilt
    :type cl:float
    :initform 0.0)
   (pan
    :reader pan
    :initarg :pan
    :type cl:float
    :initform 0.0))
)

(cl:defclass Ardrone3CameraStatedefaultCameraOrientationV2 (<Ardrone3CameraStatedefaultCameraOrientationV2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3CameraStatedefaultCameraOrientationV2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3CameraStatedefaultCameraOrientationV2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3CameraStatedefaultCameraOrientationV2> is deprecated: use bebop_msgs-msg:Ardrone3CameraStatedefaultCameraOrientationV2 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3CameraStatedefaultCameraOrientationV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tilt-val :lambda-list '(m))
(cl:defmethod tilt-val ((m <Ardrone3CameraStatedefaultCameraOrientationV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:tilt-val is deprecated.  Use bebop_msgs-msg:tilt instead.")
  (tilt m))

(cl:ensure-generic-function 'pan-val :lambda-list '(m))
(cl:defmethod pan-val ((m <Ardrone3CameraStatedefaultCameraOrientationV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:pan-val is deprecated.  Use bebop_msgs-msg:pan instead.")
  (pan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3CameraStatedefaultCameraOrientationV2>) ostream)
  "Serializes a message object of type '<Ardrone3CameraStatedefaultCameraOrientationV2>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tilt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3CameraStatedefaultCameraOrientationV2>) istream)
  "Deserializes a message object of type '<Ardrone3CameraStatedefaultCameraOrientationV2>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tilt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pan) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3CameraStatedefaultCameraOrientationV2>)))
  "Returns string type for a message object of type '<Ardrone3CameraStatedefaultCameraOrientationV2>"
  "bebop_msgs/Ardrone3CameraStatedefaultCameraOrientationV2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3CameraStatedefaultCameraOrientationV2)))
  "Returns string type for a message object of type 'Ardrone3CameraStatedefaultCameraOrientationV2"
  "bebop_msgs/Ardrone3CameraStatedefaultCameraOrientationV2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3CameraStatedefaultCameraOrientationV2>)))
  "Returns md5sum for a message object of type '<Ardrone3CameraStatedefaultCameraOrientationV2>"
  "8721413d79d1a8c88529f47de1a5ecb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3CameraStatedefaultCameraOrientationV2)))
  "Returns md5sum for a message object of type 'Ardrone3CameraStatedefaultCameraOrientationV2"
  "8721413d79d1a8c88529f47de1a5ecb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3CameraStatedefaultCameraOrientationV2>)))
  "Returns full string definition for message of type '<Ardrone3CameraStatedefaultCameraOrientationV2>"
  (cl:format cl:nil "# Ardrone3CameraStatedefaultCameraOrientationV2~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Orientation of the center of the camera.\\n This is the value to send when you want to center the camera.~%~%Header header~%~%# Tilt value [deg]~%float32 tilt~%# Pan value [deg]~%float32 pan~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3CameraStatedefaultCameraOrientationV2)))
  "Returns full string definition for message of type 'Ardrone3CameraStatedefaultCameraOrientationV2"
  (cl:format cl:nil "# Ardrone3CameraStatedefaultCameraOrientationV2~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Orientation of the center of the camera.\\n This is the value to send when you want to center the camera.~%~%Header header~%~%# Tilt value [deg]~%float32 tilt~%# Pan value [deg]~%float32 pan~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3CameraStatedefaultCameraOrientationV2>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3CameraStatedefaultCameraOrientationV2>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3CameraStatedefaultCameraOrientationV2
    (cl:cons ':header (header msg))
    (cl:cons ':tilt (tilt msg))
    (cl:cons ':pan (pan msg))
))
