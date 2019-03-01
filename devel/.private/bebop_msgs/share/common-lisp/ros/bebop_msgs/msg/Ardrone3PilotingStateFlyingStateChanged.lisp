; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3PilotingStateFlyingStateChanged.msg.html

(cl:defclass <Ardrone3PilotingStateFlyingStateChanged> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Ardrone3PilotingStateFlyingStateChanged (<Ardrone3PilotingStateFlyingStateChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3PilotingStateFlyingStateChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3PilotingStateFlyingStateChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3PilotingStateFlyingStateChanged> is deprecated: use bebop_msgs-msg:Ardrone3PilotingStateFlyingStateChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3PilotingStateFlyingStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Ardrone3PilotingStateFlyingStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:state-val is deprecated.  Use bebop_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Ardrone3PilotingStateFlyingStateChanged>)))
    "Constants for message type '<Ardrone3PilotingStateFlyingStateChanged>"
  '((:STATE_LANDED . 0)
    (:STATE_TAKINGOFF . 1)
    (:STATE_HOVERING . 2)
    (:STATE_FLYING . 3)
    (:STATE_LANDING . 4)
    (:STATE_EMERGENCY . 5)
    (:STATE_USERTAKEOFF . 6)
    (:STATE_MOTOR_RAMPING . 7)
    (:STATE_EMERGENCY_LANDING . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Ardrone3PilotingStateFlyingStateChanged)))
    "Constants for message type 'Ardrone3PilotingStateFlyingStateChanged"
  '((:STATE_LANDED . 0)
    (:STATE_TAKINGOFF . 1)
    (:STATE_HOVERING . 2)
    (:STATE_FLYING . 3)
    (:STATE_LANDING . 4)
    (:STATE_EMERGENCY . 5)
    (:STATE_USERTAKEOFF . 6)
    (:STATE_MOTOR_RAMPING . 7)
    (:STATE_EMERGENCY_LANDING . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3PilotingStateFlyingStateChanged>) ostream)
  "Serializes a message object of type '<Ardrone3PilotingStateFlyingStateChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3PilotingStateFlyingStateChanged>) istream)
  "Deserializes a message object of type '<Ardrone3PilotingStateFlyingStateChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3PilotingStateFlyingStateChanged>)))
  "Returns string type for a message object of type '<Ardrone3PilotingStateFlyingStateChanged>"
  "bebop_msgs/Ardrone3PilotingStateFlyingStateChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3PilotingStateFlyingStateChanged)))
  "Returns string type for a message object of type 'Ardrone3PilotingStateFlyingStateChanged"
  "bebop_msgs/Ardrone3PilotingStateFlyingStateChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3PilotingStateFlyingStateChanged>)))
  "Returns md5sum for a message object of type '<Ardrone3PilotingStateFlyingStateChanged>"
  "f628b761a9125ace909b8b2c789eb09e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3PilotingStateFlyingStateChanged)))
  "Returns md5sum for a message object of type 'Ardrone3PilotingStateFlyingStateChanged"
  "f628b761a9125ace909b8b2c789eb09e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3PilotingStateFlyingStateChanged>)))
  "Returns full string definition for message of type '<Ardrone3PilotingStateFlyingStateChanged>"
  (cl:format cl:nil "# Ardrone3PilotingStateFlyingStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Flying state.~%~%Header header~%~%# Drone flying state~%uint8 state_landed=0  # Landed state~%uint8 state_takingoff=1  # Taking off state~%uint8 state_hovering=2  # Hovering / Circling (for fixed wings) state~%uint8 state_flying=3  # Flying state~%uint8 state_landing=4  # Landing state~%uint8 state_emergency=5  # Emergency state~%uint8 state_usertakeoff=6  # User take off state. Waiting for user action to take off.~%uint8 state_motor_ramping=7  # Motor ramping state (for fixed wings).~%uint8 state_emergency_landing=8  # Emergency landing state. Drone autopilot has detected defective sensor(s). Only Yaw argument in PCMD is taken into account. All others flying commands are ignored.~%uint8 state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3PilotingStateFlyingStateChanged)))
  "Returns full string definition for message of type 'Ardrone3PilotingStateFlyingStateChanged"
  (cl:format cl:nil "# Ardrone3PilotingStateFlyingStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Flying state.~%~%Header header~%~%# Drone flying state~%uint8 state_landed=0  # Landed state~%uint8 state_takingoff=1  # Taking off state~%uint8 state_hovering=2  # Hovering / Circling (for fixed wings) state~%uint8 state_flying=3  # Flying state~%uint8 state_landing=4  # Landing state~%uint8 state_emergency=5  # Emergency state~%uint8 state_usertakeoff=6  # User take off state. Waiting for user action to take off.~%uint8 state_motor_ramping=7  # Motor ramping state (for fixed wings).~%uint8 state_emergency_landing=8  # Emergency landing state. Drone autopilot has detected defective sensor(s). Only Yaw argument in PCMD is taken into account. All others flying commands are ignored.~%uint8 state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3PilotingStateFlyingStateChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3PilotingStateFlyingStateChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3PilotingStateFlyingStateChanged
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
))
