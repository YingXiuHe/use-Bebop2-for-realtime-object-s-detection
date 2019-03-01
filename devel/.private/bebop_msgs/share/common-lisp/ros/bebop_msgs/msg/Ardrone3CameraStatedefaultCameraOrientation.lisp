; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3CameraStatedefaultCameraOrientation.msg.html

(cl:defclass <Ardrone3CameraStatedefaultCameraOrientation> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tilt
    :reader tilt
    :initarg :tilt
    :type cl:fixnum
    :initform 0)
   (pan
    :reader pan
    :initarg :pan
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Ardrone3CameraStatedefaultCameraOrientation (<Ardrone3CameraStatedefaultCameraOrientation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3CameraStatedefaultCameraOrientation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3CameraStatedefaultCameraOrientation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3CameraStatedefaultCameraOrientation> is deprecated: use bebop_msgs-msg:Ardrone3CameraStatedefaultCameraOrientation instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3CameraStatedefaultCameraOrientation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tilt-val :lambda-list '(m))
(cl:defmethod tilt-val ((m <Ardrone3CameraStatedefaultCameraOrientation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:tilt-val is deprecated.  Use bebop_msgs-msg:tilt instead.")
  (tilt m))

(cl:ensure-generic-function 'pan-val :lambda-list '(m))
(cl:defmethod pan-val ((m <Ardrone3CameraStatedefaultCameraOrientation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:pan-val is deprecated.  Use bebop_msgs-msg:pan instead.")
  (pan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3CameraStatedefaultCameraOrientation>) ostream)
  "Serializes a message object of type '<Ardrone3CameraStatedefaultCameraOrientation>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'tilt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pan)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3CameraStatedefaultCameraOrientation>) istream)
  "Deserializes a message object of type '<Ardrone3CameraStatedefaultCameraOrientation>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tilt) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pan) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3CameraStatedefaultCameraOrientation>)))
  "Returns string type for a message object of type '<Ardrone3CameraStatedefaultCameraOrientation>"
  "bebop_msgs/Ardrone3CameraStatedefaultCameraOrientation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3CameraStatedefaultCameraOrientation)))
  "Returns string type for a message object of type 'Ardrone3CameraStatedefaultCameraOrientation"
  "bebop_msgs/Ardrone3CameraStatedefaultCameraOrientation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3CameraStatedefaultCameraOrientation>)))
  "Returns md5sum for a message object of type '<Ardrone3CameraStatedefaultCameraOrientation>"
  "56079118c93b004f0ffa8a6f3b67bbf9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3CameraStatedefaultCameraOrientation)))
  "Returns md5sum for a message object of type 'Ardrone3CameraStatedefaultCameraOrientation"
  "56079118c93b004f0ffa8a6f3b67bbf9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3CameraStatedefaultCameraOrientation>)))
  "Returns full string definition for message of type '<Ardrone3CameraStatedefaultCameraOrientation>"
  (cl:format cl:nil "# Ardrone3CameraStatedefaultCameraOrientation~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Orientation of the center of the camera.\\n This is the value to send when you want to center the camera.~%~%Header header~%~%# Tilt value (in degree)~%int8 tilt~%# Pan value (in degree)~%int8 pan~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3CameraStatedefaultCameraOrientation)))
  "Returns full string definition for message of type 'Ardrone3CameraStatedefaultCameraOrientation"
  (cl:format cl:nil "# Ardrone3CameraStatedefaultCameraOrientation~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Orientation of the center of the camera.\\n This is the value to send when you want to center the camera.~%~%Header header~%~%# Tilt value (in degree)~%int8 tilt~%# Pan value (in degree)~%int8 pan~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3CameraStatedefaultCameraOrientation>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3CameraStatedefaultCameraOrientation>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3CameraStatedefaultCameraOrientation
    (cl:cons ':header (header msg))
    (cl:cons ':tilt (tilt msg))
    (cl:cons ':pan (pan msg))
))
