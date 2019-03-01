; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3PilotingStateAutoTakeOffModeChanged.msg.html

(cl:defclass <Ardrone3PilotingStateAutoTakeOffModeChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Ardrone3PilotingStateAutoTakeOffModeChanged (<Ardrone3PilotingStateAutoTakeOffModeChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3PilotingStateAutoTakeOffModeChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3PilotingStateAutoTakeOffModeChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3PilotingStateAutoTakeOffModeChanged> is deprecated: use bebop_msgs-msg:Ardrone3PilotingStateAutoTakeOffModeChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3PilotingStateAutoTakeOffModeChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Ardrone3PilotingStateAutoTakeOffModeChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:state-val is deprecated.  Use bebop_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3PilotingStateAutoTakeOffModeChanged>) ostream)
  "Serializes a message object of type '<Ardrone3PilotingStateAutoTakeOffModeChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3PilotingStateAutoTakeOffModeChanged>) istream)
  "Deserializes a message object of type '<Ardrone3PilotingStateAutoTakeOffModeChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3PilotingStateAutoTakeOffModeChanged>)))
  "Returns string type for a message object of type '<Ardrone3PilotingStateAutoTakeOffModeChanged>"
  "bebop_msgs/Ardrone3PilotingStateAutoTakeOffModeChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3PilotingStateAutoTakeOffModeChanged)))
  "Returns string type for a message object of type 'Ardrone3PilotingStateAutoTakeOffModeChanged"
  "bebop_msgs/Ardrone3PilotingStateAutoTakeOffModeChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3PilotingStateAutoTakeOffModeChanged>)))
  "Returns md5sum for a message object of type '<Ardrone3PilotingStateAutoTakeOffModeChanged>"
  "da95463f5af1db345e11ec4ce9b23d3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3PilotingStateAutoTakeOffModeChanged)))
  "Returns md5sum for a message object of type 'Ardrone3PilotingStateAutoTakeOffModeChanged"
  "da95463f5af1db345e11ec4ce9b23d3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3PilotingStateAutoTakeOffModeChanged>)))
  "Returns full string definition for message of type '<Ardrone3PilotingStateAutoTakeOffModeChanged>"
  (cl:format cl:nil "# Ardrone3PilotingStateAutoTakeOffModeChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Auto takeoff mode~%~%Header header~%~%# State of automatic take off mode (1 if enabled)~%uint8 state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3PilotingStateAutoTakeOffModeChanged)))
  "Returns full string definition for message of type 'Ardrone3PilotingStateAutoTakeOffModeChanged"
  (cl:format cl:nil "# Ardrone3PilotingStateAutoTakeOffModeChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Auto takeoff mode~%~%Header header~%~%# State of automatic take off mode (1 if enabled)~%uint8 state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3PilotingStateAutoTakeOffModeChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3PilotingStateAutoTakeOffModeChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3PilotingStateAutoTakeOffModeChanged
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
))
