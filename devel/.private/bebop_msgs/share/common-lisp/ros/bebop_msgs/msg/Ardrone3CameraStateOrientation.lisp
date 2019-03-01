; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3CameraStateOrientation.msg.html

(cl:defclass <Ardrone3CameraStateOrientation> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Ardrone3CameraStateOrientation (<Ardrone3CameraStateOrientation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3CameraStateOrientation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3CameraStateOrientation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3CameraStateOrientation> is deprecated: use bebop_msgs-msg:Ardrone3CameraStateOrientation instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3CameraStateOrientation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tilt-val :lambda-list '(m))
(cl:defmethod tilt-val ((m <Ardrone3CameraStateOrientation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:tilt-val is deprecated.  Use bebop_msgs-msg:tilt instead.")
  (tilt m))

(cl:ensure-generic-function 'pan-val :lambda-list '(m))
(cl:defmethod pan-val ((m <Ardrone3CameraStateOrientation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:pan-val is deprecated.  Use bebop_msgs-msg:pan instead.")
  (pan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3CameraStateOrientation>) ostream)
  "Serializes a message object of type '<Ardrone3CameraStateOrientation>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'tilt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pan)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3CameraStateOrientation>) istream)
  "Deserializes a message object of type '<Ardrone3CameraStateOrientation>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tilt) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pan) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3CameraStateOrientation>)))
  "Returns string type for a message object of type '<Ardrone3CameraStateOrientation>"
  "bebop_msgs/Ardrone3CameraStateOrientation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3CameraStateOrientation)))
  "Returns string type for a message object of type 'Ardrone3CameraStateOrientation"
  "bebop_msgs/Ardrone3CameraStateOrientation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3CameraStateOrientation>)))
  "Returns md5sum for a message object of type '<Ardrone3CameraStateOrientation>"
  "56079118c93b004f0ffa8a6f3b67bbf9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3CameraStateOrientation)))
  "Returns md5sum for a message object of type 'Ardrone3CameraStateOrientation"
  "56079118c93b004f0ffa8a6f3b67bbf9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3CameraStateOrientation>)))
  "Returns full string definition for message of type '<Ardrone3CameraStateOrientation>"
  (cl:format cl:nil "# Ardrone3CameraStateOrientation~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Camera orientation.~%~%Header header~%~%# Tilt camera consign for the drone [-100;100]~%int8 tilt~%# Pan camera consign for the drone [-100;100]~%int8 pan~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3CameraStateOrientation)))
  "Returns full string definition for message of type 'Ardrone3CameraStateOrientation"
  (cl:format cl:nil "# Ardrone3CameraStateOrientation~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Camera orientation.~%~%Header header~%~%# Tilt camera consign for the drone [-100;100]~%int8 tilt~%# Pan camera consign for the drone [-100;100]~%int8 pan~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3CameraStateOrientation>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3CameraStateOrientation>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3CameraStateOrientation
    (cl:cons ':header (header msg))
    (cl:cons ':tilt (tilt msg))
    (cl:cons ':pan (pan msg))
))
