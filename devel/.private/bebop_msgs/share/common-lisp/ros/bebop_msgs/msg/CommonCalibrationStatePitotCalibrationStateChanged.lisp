; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonCalibrationStatePitotCalibrationStateChanged.msg.html

(cl:defclass <CommonCalibrationStatePitotCalibrationStateChanged> (roslisp-msg-protocol:ros-message)
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
   (lastError
    :reader lastError
    :initarg :lastError
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonCalibrationStatePitotCalibrationStateChanged (<CommonCalibrationStatePitotCalibrationStateChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonCalibrationStatePitotCalibrationStateChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonCalibrationStatePitotCalibrationStateChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonCalibrationStatePitotCalibrationStateChanged> is deprecated: use bebop_msgs-msg:CommonCalibrationStatePitotCalibrationStateChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonCalibrationStatePitotCalibrationStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <CommonCalibrationStatePitotCalibrationStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:state-val is deprecated.  Use bebop_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'lastError-val :lambda-list '(m))
(cl:defmethod lastError-val ((m <CommonCalibrationStatePitotCalibrationStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:lastError-val is deprecated.  Use bebop_msgs-msg:lastError instead.")
  (lastError m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CommonCalibrationStatePitotCalibrationStateChanged>)))
    "Constants for message type '<CommonCalibrationStatePitotCalibrationStateChanged>"
  '((:STATE_DONE . 0)
    (:STATE_READY . 1)
    (:STATE_IN_PROGRESS . 2)
    (:STATE_REQUIRED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CommonCalibrationStatePitotCalibrationStateChanged)))
    "Constants for message type 'CommonCalibrationStatePitotCalibrationStateChanged"
  '((:STATE_DONE . 0)
    (:STATE_READY . 1)
    (:STATE_IN_PROGRESS . 2)
    (:STATE_REQUIRED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonCalibrationStatePitotCalibrationStateChanged>) ostream)
  "Serializes a message object of type '<CommonCalibrationStatePitotCalibrationStateChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lastError)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonCalibrationStatePitotCalibrationStateChanged>) istream)
  "Deserializes a message object of type '<CommonCalibrationStatePitotCalibrationStateChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lastError)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonCalibrationStatePitotCalibrationStateChanged>)))
  "Returns string type for a message object of type '<CommonCalibrationStatePitotCalibrationStateChanged>"
  "bebop_msgs/CommonCalibrationStatePitotCalibrationStateChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonCalibrationStatePitotCalibrationStateChanged)))
  "Returns string type for a message object of type 'CommonCalibrationStatePitotCalibrationStateChanged"
  "bebop_msgs/CommonCalibrationStatePitotCalibrationStateChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonCalibrationStatePitotCalibrationStateChanged>)))
  "Returns md5sum for a message object of type '<CommonCalibrationStatePitotCalibrationStateChanged>"
  "1d222c31db9ca732c48a9aa11e2f3afa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonCalibrationStatePitotCalibrationStateChanged)))
  "Returns md5sum for a message object of type 'CommonCalibrationStatePitotCalibrationStateChanged"
  "1d222c31db9ca732c48a9aa11e2f3afa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonCalibrationStatePitotCalibrationStateChanged>)))
  "Returns full string definition for message of type '<CommonCalibrationStatePitotCalibrationStateChanged>"
  (cl:format cl:nil "# CommonCalibrationStatePitotCalibrationStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: ~%~%Header header~%~%# State of pitot calibration~%uint8 state_done=0  # Calibration is ok~%uint8 state_ready=1  # Calibration is started, waiting user action~%uint8 state_in_progress=2  # Calibration is in progress~%uint8 state_required=3  # Calibration is required~%uint8 state~%# lastError : 1 if an error occured and 0 if not~%uint8 lastError~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonCalibrationStatePitotCalibrationStateChanged)))
  "Returns full string definition for message of type 'CommonCalibrationStatePitotCalibrationStateChanged"
  (cl:format cl:nil "# CommonCalibrationStatePitotCalibrationStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: ~%~%Header header~%~%# State of pitot calibration~%uint8 state_done=0  # Calibration is ok~%uint8 state_ready=1  # Calibration is started, waiting user action~%uint8 state_in_progress=2  # Calibration is in progress~%uint8 state_required=3  # Calibration is required~%uint8 state~%# lastError : 1 if an error occured and 0 if not~%uint8 lastError~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonCalibrationStatePitotCalibrationStateChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonCalibrationStatePitotCalibrationStateChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonCalibrationStatePitotCalibrationStateChanged
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
    (cl:cons ':lastError (lastError msg))
))
