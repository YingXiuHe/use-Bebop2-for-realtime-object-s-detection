; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3MediaStreamingStateVideoEnableChanged.msg.html

(cl:defclass <Ardrone3MediaStreamingStateVideoEnableChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (enabled
    :reader enabled
    :initarg :enabled
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Ardrone3MediaStreamingStateVideoEnableChanged (<Ardrone3MediaStreamingStateVideoEnableChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3MediaStreamingStateVideoEnableChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3MediaStreamingStateVideoEnableChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3MediaStreamingStateVideoEnableChanged> is deprecated: use bebop_msgs-msg:Ardrone3MediaStreamingStateVideoEnableChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3MediaStreamingStateVideoEnableChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <Ardrone3MediaStreamingStateVideoEnableChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:enabled-val is deprecated.  Use bebop_msgs-msg:enabled instead.")
  (enabled m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Ardrone3MediaStreamingStateVideoEnableChanged>)))
    "Constants for message type '<Ardrone3MediaStreamingStateVideoEnableChanged>"
  '((:ENABLED_ENABLED . 0)
    (:ENABLED_DISABLED . 1)
    (:ENABLED_ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Ardrone3MediaStreamingStateVideoEnableChanged)))
    "Constants for message type 'Ardrone3MediaStreamingStateVideoEnableChanged"
  '((:ENABLED_ENABLED . 0)
    (:ENABLED_DISABLED . 1)
    (:ENABLED_ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3MediaStreamingStateVideoEnableChanged>) ostream)
  "Serializes a message object of type '<Ardrone3MediaStreamingStateVideoEnableChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enabled)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3MediaStreamingStateVideoEnableChanged>) istream)
  "Deserializes a message object of type '<Ardrone3MediaStreamingStateVideoEnableChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enabled)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3MediaStreamingStateVideoEnableChanged>)))
  "Returns string type for a message object of type '<Ardrone3MediaStreamingStateVideoEnableChanged>"
  "bebop_msgs/Ardrone3MediaStreamingStateVideoEnableChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3MediaStreamingStateVideoEnableChanged)))
  "Returns string type for a message object of type 'Ardrone3MediaStreamingStateVideoEnableChanged"
  "bebop_msgs/Ardrone3MediaStreamingStateVideoEnableChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3MediaStreamingStateVideoEnableChanged>)))
  "Returns md5sum for a message object of type '<Ardrone3MediaStreamingStateVideoEnableChanged>"
  "4647d465f8e97fd2dcb5f7341b70a007")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3MediaStreamingStateVideoEnableChanged)))
  "Returns md5sum for a message object of type 'Ardrone3MediaStreamingStateVideoEnableChanged"
  "4647d465f8e97fd2dcb5f7341b70a007")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3MediaStreamingStateVideoEnableChanged>)))
  "Returns full string definition for message of type '<Ardrone3MediaStreamingStateVideoEnableChanged>"
  (cl:format cl:nil "# Ardrone3MediaStreamingStateVideoEnableChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Video stream state.~%~%Header header~%~%# Current video streaming status.~%uint8 enabled_enabled=0  # Video streaming is enabled.~%uint8 enabled_disabled=1  # Video streaming is disabled.~%uint8 enabled_error=2  # Video streaming failed to start.~%uint8 enabled~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3MediaStreamingStateVideoEnableChanged)))
  "Returns full string definition for message of type 'Ardrone3MediaStreamingStateVideoEnableChanged"
  (cl:format cl:nil "# Ardrone3MediaStreamingStateVideoEnableChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Video stream state.~%~%Header header~%~%# Current video streaming status.~%uint8 enabled_enabled=0  # Video streaming is enabled.~%uint8 enabled_disabled=1  # Video streaming is disabled.~%uint8 enabled_error=2  # Video streaming failed to start.~%uint8 enabled~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3MediaStreamingStateVideoEnableChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3MediaStreamingStateVideoEnableChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3MediaStreamingStateVideoEnableChanged
    (cl:cons ':header (header msg))
    (cl:cons ':enabled (enabled msg))
))
