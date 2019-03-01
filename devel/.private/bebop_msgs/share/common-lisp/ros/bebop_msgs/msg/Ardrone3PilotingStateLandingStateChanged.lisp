; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3PilotingStateLandingStateChanged.msg.html

(cl:defclass <Ardrone3PilotingStateLandingStateChanged> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Ardrone3PilotingStateLandingStateChanged (<Ardrone3PilotingStateLandingStateChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3PilotingStateLandingStateChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3PilotingStateLandingStateChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3PilotingStateLandingStateChanged> is deprecated: use bebop_msgs-msg:Ardrone3PilotingStateLandingStateChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3PilotingStateLandingStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Ardrone3PilotingStateLandingStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:state-val is deprecated.  Use bebop_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Ardrone3PilotingStateLandingStateChanged>)))
    "Constants for message type '<Ardrone3PilotingStateLandingStateChanged>"
  '((:STATE_LINEAR . 0)
    (:STATE_SPIRAL . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Ardrone3PilotingStateLandingStateChanged)))
    "Constants for message type 'Ardrone3PilotingStateLandingStateChanged"
  '((:STATE_LINEAR . 0)
    (:STATE_SPIRAL . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3PilotingStateLandingStateChanged>) ostream)
  "Serializes a message object of type '<Ardrone3PilotingStateLandingStateChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3PilotingStateLandingStateChanged>) istream)
  "Deserializes a message object of type '<Ardrone3PilotingStateLandingStateChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3PilotingStateLandingStateChanged>)))
  "Returns string type for a message object of type '<Ardrone3PilotingStateLandingStateChanged>"
  "bebop_msgs/Ardrone3PilotingStateLandingStateChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3PilotingStateLandingStateChanged)))
  "Returns string type for a message object of type 'Ardrone3PilotingStateLandingStateChanged"
  "bebop_msgs/Ardrone3PilotingStateLandingStateChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3PilotingStateLandingStateChanged>)))
  "Returns md5sum for a message object of type '<Ardrone3PilotingStateLandingStateChanged>"
  "9cfc779639f11cdcc053988fd10033e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3PilotingStateLandingStateChanged)))
  "Returns md5sum for a message object of type 'Ardrone3PilotingStateLandingStateChanged"
  "9cfc779639f11cdcc053988fd10033e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3PilotingStateLandingStateChanged>)))
  "Returns full string definition for message of type '<Ardrone3PilotingStateLandingStateChanged>"
  (cl:format cl:nil "# Ardrone3PilotingStateLandingStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Landing state.\\n Only available for fixed wings (which have two landing modes).~%~%Header header~%~%# Drone landing state~%uint8 state_linear=0  # Linear landing~%uint8 state_spiral=1  # Spiral landing~%uint8 state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3PilotingStateLandingStateChanged)))
  "Returns full string definition for message of type 'Ardrone3PilotingStateLandingStateChanged"
  (cl:format cl:nil "# Ardrone3PilotingStateLandingStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Landing state.\\n Only available for fixed wings (which have two landing modes).~%~%Header header~%~%# Drone landing state~%uint8 state_linear=0  # Linear landing~%uint8 state_spiral=1  # Spiral landing~%uint8 state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3PilotingStateLandingStateChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3PilotingStateLandingStateChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3PilotingStateLandingStateChanged
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
))
