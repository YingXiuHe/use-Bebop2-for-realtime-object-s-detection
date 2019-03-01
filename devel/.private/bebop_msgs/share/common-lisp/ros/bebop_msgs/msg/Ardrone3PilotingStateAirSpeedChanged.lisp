; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3PilotingStateAirSpeedChanged.msg.html

(cl:defclass <Ardrone3PilotingStateAirSpeedChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (airSpeed
    :reader airSpeed
    :initarg :airSpeed
    :type cl:float
    :initform 0.0))
)

(cl:defclass Ardrone3PilotingStateAirSpeedChanged (<Ardrone3PilotingStateAirSpeedChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3PilotingStateAirSpeedChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3PilotingStateAirSpeedChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3PilotingStateAirSpeedChanged> is deprecated: use bebop_msgs-msg:Ardrone3PilotingStateAirSpeedChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3PilotingStateAirSpeedChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'airSpeed-val :lambda-list '(m))
(cl:defmethod airSpeed-val ((m <Ardrone3PilotingStateAirSpeedChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:airSpeed-val is deprecated.  Use bebop_msgs-msg:airSpeed instead.")
  (airSpeed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3PilotingStateAirSpeedChanged>) ostream)
  "Serializes a message object of type '<Ardrone3PilotingStateAirSpeedChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'airSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3PilotingStateAirSpeedChanged>) istream)
  "Deserializes a message object of type '<Ardrone3PilotingStateAirSpeedChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'airSpeed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3PilotingStateAirSpeedChanged>)))
  "Returns string type for a message object of type '<Ardrone3PilotingStateAirSpeedChanged>"
  "bebop_msgs/Ardrone3PilotingStateAirSpeedChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3PilotingStateAirSpeedChanged)))
  "Returns string type for a message object of type 'Ardrone3PilotingStateAirSpeedChanged"
  "bebop_msgs/Ardrone3PilotingStateAirSpeedChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3PilotingStateAirSpeedChanged>)))
  "Returns md5sum for a message object of type '<Ardrone3PilotingStateAirSpeedChanged>"
  "35ac9dc6b6c80598705871c83379a4f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3PilotingStateAirSpeedChanged)))
  "Returns md5sum for a message object of type 'Ardrone3PilotingStateAirSpeedChanged"
  "35ac9dc6b6c80598705871c83379a4f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3PilotingStateAirSpeedChanged>)))
  "Returns full string definition for message of type '<Ardrone3PilotingStateAirSpeedChanged>"
  (cl:format cl:nil "# Ardrone3PilotingStateAirSpeedChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Drones air speed changed\\n Expressed in the drones referential.~%~%Header header~%~%# Speed relative to air on x axis (speed is always &gt; 0) (in m/s)~%float32 airSpeed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3PilotingStateAirSpeedChanged)))
  "Returns full string definition for message of type 'Ardrone3PilotingStateAirSpeedChanged"
  (cl:format cl:nil "# Ardrone3PilotingStateAirSpeedChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Drones air speed changed\\n Expressed in the drones referential.~%~%Header header~%~%# Speed relative to air on x axis (speed is always &gt; 0) (in m/s)~%float32 airSpeed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3PilotingStateAirSpeedChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3PilotingStateAirSpeedChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3PilotingStateAirSpeedChanged
    (cl:cons ':header (header msg))
    (cl:cons ':airSpeed (airSpeed msg))
))
