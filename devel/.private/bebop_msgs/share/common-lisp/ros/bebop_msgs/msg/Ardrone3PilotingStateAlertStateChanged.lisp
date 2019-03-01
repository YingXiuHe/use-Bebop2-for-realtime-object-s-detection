; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3PilotingStateAlertStateChanged.msg.html

(cl:defclass <Ardrone3PilotingStateAlertStateChanged> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Ardrone3PilotingStateAlertStateChanged (<Ardrone3PilotingStateAlertStateChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3PilotingStateAlertStateChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3PilotingStateAlertStateChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3PilotingStateAlertStateChanged> is deprecated: use bebop_msgs-msg:Ardrone3PilotingStateAlertStateChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3PilotingStateAlertStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Ardrone3PilotingStateAlertStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:state-val is deprecated.  Use bebop_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Ardrone3PilotingStateAlertStateChanged>)))
    "Constants for message type '<Ardrone3PilotingStateAlertStateChanged>"
  '((:STATE_NONE . 0)
    (:STATE_USER . 1)
    (:STATE_CUT_OUT . 2)
    (:STATE_CRITICAL_BATTERY . 3)
    (:STATE_LOW_BATTERY . 4)
    (:STATE_TOO_MUCH_ANGLE . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Ardrone3PilotingStateAlertStateChanged)))
    "Constants for message type 'Ardrone3PilotingStateAlertStateChanged"
  '((:STATE_NONE . 0)
    (:STATE_USER . 1)
    (:STATE_CUT_OUT . 2)
    (:STATE_CRITICAL_BATTERY . 3)
    (:STATE_LOW_BATTERY . 4)
    (:STATE_TOO_MUCH_ANGLE . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3PilotingStateAlertStateChanged>) ostream)
  "Serializes a message object of type '<Ardrone3PilotingStateAlertStateChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3PilotingStateAlertStateChanged>) istream)
  "Deserializes a message object of type '<Ardrone3PilotingStateAlertStateChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3PilotingStateAlertStateChanged>)))
  "Returns string type for a message object of type '<Ardrone3PilotingStateAlertStateChanged>"
  "bebop_msgs/Ardrone3PilotingStateAlertStateChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3PilotingStateAlertStateChanged)))
  "Returns string type for a message object of type 'Ardrone3PilotingStateAlertStateChanged"
  "bebop_msgs/Ardrone3PilotingStateAlertStateChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3PilotingStateAlertStateChanged>)))
  "Returns md5sum for a message object of type '<Ardrone3PilotingStateAlertStateChanged>"
  "c40d562736a7573efc225e24b8785de0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3PilotingStateAlertStateChanged)))
  "Returns md5sum for a message object of type 'Ardrone3PilotingStateAlertStateChanged"
  "c40d562736a7573efc225e24b8785de0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3PilotingStateAlertStateChanged>)))
  "Returns full string definition for message of type '<Ardrone3PilotingStateAlertStateChanged>"
  (cl:format cl:nil "# Ardrone3PilotingStateAlertStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Alert state.~%~%Header header~%~%# Drone alert state~%uint8 state_none=0  # No alert~%uint8 state_user=1  # User emergency alert~%uint8 state_cut_out=2  # Cut out alert~%uint8 state_critical_battery=3  # Critical battery alert~%uint8 state_low_battery=4  # Low battery alert~%uint8 state_too_much_angle=5  # The angle of the drone is too high~%uint8 state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3PilotingStateAlertStateChanged)))
  "Returns full string definition for message of type 'Ardrone3PilotingStateAlertStateChanged"
  (cl:format cl:nil "# Ardrone3PilotingStateAlertStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Alert state.~%~%Header header~%~%# Drone alert state~%uint8 state_none=0  # No alert~%uint8 state_user=1  # User emergency alert~%uint8 state_cut_out=2  # Cut out alert~%uint8 state_critical_battery=3  # Critical battery alert~%uint8 state_low_battery=4  # Low battery alert~%uint8 state_too_much_angle=5  # The angle of the drone is too high~%uint8 state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3PilotingStateAlertStateChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3PilotingStateAlertStateChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3PilotingStateAlertStateChanged
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
))
