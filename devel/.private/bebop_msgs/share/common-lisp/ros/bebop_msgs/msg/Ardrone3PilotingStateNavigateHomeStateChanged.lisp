; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3PilotingStateNavigateHomeStateChanged.msg.html

(cl:defclass <Ardrone3PilotingStateNavigateHomeStateChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (reason
    :reader reason
    :initarg :reason
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Ardrone3PilotingStateNavigateHomeStateChanged (<Ardrone3PilotingStateNavigateHomeStateChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3PilotingStateNavigateHomeStateChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3PilotingStateNavigateHomeStateChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3PilotingStateNavigateHomeStateChanged> is deprecated: use bebop_msgs-msg:Ardrone3PilotingStateNavigateHomeStateChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3PilotingStateNavigateHomeStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Ardrone3PilotingStateNavigateHomeStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:state-val is deprecated.  Use bebop_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'reason-val :lambda-list '(m))
(cl:defmethod reason-val ((m <Ardrone3PilotingStateNavigateHomeStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:reason-val is deprecated.  Use bebop_msgs-msg:reason instead.")
  (reason m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Ardrone3PilotingStateNavigateHomeStateChanged>)))
    "Constants for message type '<Ardrone3PilotingStateNavigateHomeStateChanged>"
  '((:STATE_AVAILABLE . 0)
    (:STATE_INPROGRESS . 1)
    (:STATE_UNAVAILABLE . 2)
    (:STATE_PENDING . 3)
    (:REASON_USERREQUEST . 0)
    (:REASON_CONNECTIONLOST . 1)
    (:REASON_LOWBATTERY . 2)
    (:REASON_FINISHED . 3)
    (:REASON_STOPPED . 4)
    (:REASON_DISABLED . 5)
    (:REASON_ENABLED . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Ardrone3PilotingStateNavigateHomeStateChanged)))
    "Constants for message type 'Ardrone3PilotingStateNavigateHomeStateChanged"
  '((:STATE_AVAILABLE . 0)
    (:STATE_INPROGRESS . 1)
    (:STATE_UNAVAILABLE . 2)
    (:STATE_PENDING . 3)
    (:REASON_USERREQUEST . 0)
    (:REASON_CONNECTIONLOST . 1)
    (:REASON_LOWBATTERY . 2)
    (:REASON_FINISHED . 3)
    (:REASON_STOPPED . 4)
    (:REASON_DISABLED . 5)
    (:REASON_ENABLED . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3PilotingStateNavigateHomeStateChanged>) ostream)
  "Serializes a message object of type '<Ardrone3PilotingStateNavigateHomeStateChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reason)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3PilotingStateNavigateHomeStateChanged>) istream)
  "Deserializes a message object of type '<Ardrone3PilotingStateNavigateHomeStateChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reason)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3PilotingStateNavigateHomeStateChanged>)))
  "Returns string type for a message object of type '<Ardrone3PilotingStateNavigateHomeStateChanged>"
  "bebop_msgs/Ardrone3PilotingStateNavigateHomeStateChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3PilotingStateNavigateHomeStateChanged)))
  "Returns string type for a message object of type 'Ardrone3PilotingStateNavigateHomeStateChanged"
  "bebop_msgs/Ardrone3PilotingStateNavigateHomeStateChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3PilotingStateNavigateHomeStateChanged>)))
  "Returns md5sum for a message object of type '<Ardrone3PilotingStateNavigateHomeStateChanged>"
  "a0ed1aa9e290b08479307e09890d8141")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3PilotingStateNavigateHomeStateChanged)))
  "Returns md5sum for a message object of type 'Ardrone3PilotingStateNavigateHomeStateChanged"
  "a0ed1aa9e290b08479307e09890d8141")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3PilotingStateNavigateHomeStateChanged>)))
  "Returns full string definition for message of type '<Ardrone3PilotingStateNavigateHomeStateChanged>"
  (cl:format cl:nil "# Ardrone3PilotingStateNavigateHomeStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Return home state.\\n Availability is related to gps fix, magnetometer calibration.~%~%Header header~%~%# State of navigate home~%uint8 state_available=0  # Navigate home is available~%uint8 state_inProgress=1  # Navigate home is in progress~%uint8 state_unavailable=2  # Navigate home is not available~%uint8 state_pending=3  # Navigate home has been received, but its process is pending~%uint8 state~%# Reason of the state~%uint8 reason_userRequest=0  # User requested a navigate home (available-&gt;inProgress)~%uint8 reason_connectionLost=1  # Connection between controller and product lost (available-&gt;inProgress)~%uint8 reason_lowBattery=2  # Low battery occurred (available-&gt;inProgress)~%uint8 reason_finished=3  # Navigate home is finished (inProgress-&gt;available)~%uint8 reason_stopped=4  # Navigate home has been stopped (inProgress-&gt;available)~%uint8 reason_disabled=5  # Navigate home disabled by product (inProgress-&gt;unavailable or available-&gt;unavailable)~%uint8 reason_enabled=6  # Navigate home enabled by product (unavailable-&gt;available)~%uint8 reason~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3PilotingStateNavigateHomeStateChanged)))
  "Returns full string definition for message of type 'Ardrone3PilotingStateNavigateHomeStateChanged"
  (cl:format cl:nil "# Ardrone3PilotingStateNavigateHomeStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Return home state.\\n Availability is related to gps fix, magnetometer calibration.~%~%Header header~%~%# State of navigate home~%uint8 state_available=0  # Navigate home is available~%uint8 state_inProgress=1  # Navigate home is in progress~%uint8 state_unavailable=2  # Navigate home is not available~%uint8 state_pending=3  # Navigate home has been received, but its process is pending~%uint8 state~%# Reason of the state~%uint8 reason_userRequest=0  # User requested a navigate home (available-&gt;inProgress)~%uint8 reason_connectionLost=1  # Connection between controller and product lost (available-&gt;inProgress)~%uint8 reason_lowBattery=2  # Low battery occurred (available-&gt;inProgress)~%uint8 reason_finished=3  # Navigate home is finished (inProgress-&gt;available)~%uint8 reason_stopped=4  # Navigate home has been stopped (inProgress-&gt;available)~%uint8 reason_disabled=5  # Navigate home disabled by product (inProgress-&gt;unavailable or available-&gt;unavailable)~%uint8 reason_enabled=6  # Navigate home enabled by product (unavailable-&gt;available)~%uint8 reason~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3PilotingStateNavigateHomeStateChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3PilotingStateNavigateHomeStateChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3PilotingStateNavigateHomeStateChanged
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
    (cl:cons ':reason (reason msg))
))
