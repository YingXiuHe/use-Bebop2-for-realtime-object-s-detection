; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonCalibrationStateMagnetoCalibrationStartedChanged.msg.html

(cl:defclass <CommonCalibrationStateMagnetoCalibrationStartedChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (started
    :reader started
    :initarg :started
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonCalibrationStateMagnetoCalibrationStartedChanged (<CommonCalibrationStateMagnetoCalibrationStartedChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonCalibrationStateMagnetoCalibrationStartedChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonCalibrationStateMagnetoCalibrationStartedChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonCalibrationStateMagnetoCalibrationStartedChanged> is deprecated: use bebop_msgs-msg:CommonCalibrationStateMagnetoCalibrationStartedChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonCalibrationStateMagnetoCalibrationStartedChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'started-val :lambda-list '(m))
(cl:defmethod started-val ((m <CommonCalibrationStateMagnetoCalibrationStartedChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:started-val is deprecated.  Use bebop_msgs-msg:started instead.")
  (started m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonCalibrationStateMagnetoCalibrationStartedChanged>) ostream)
  "Serializes a message object of type '<CommonCalibrationStateMagnetoCalibrationStartedChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'started)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonCalibrationStateMagnetoCalibrationStartedChanged>) istream)
  "Deserializes a message object of type '<CommonCalibrationStateMagnetoCalibrationStartedChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'started)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonCalibrationStateMagnetoCalibrationStartedChanged>)))
  "Returns string type for a message object of type '<CommonCalibrationStateMagnetoCalibrationStartedChanged>"
  "bebop_msgs/CommonCalibrationStateMagnetoCalibrationStartedChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonCalibrationStateMagnetoCalibrationStartedChanged)))
  "Returns string type for a message object of type 'CommonCalibrationStateMagnetoCalibrationStartedChanged"
  "bebop_msgs/CommonCalibrationStateMagnetoCalibrationStartedChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonCalibrationStateMagnetoCalibrationStartedChanged>)))
  "Returns md5sum for a message object of type '<CommonCalibrationStateMagnetoCalibrationStartedChanged>"
  "2277a8a251c1c5f5970171a6e7e5eab0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonCalibrationStateMagnetoCalibrationStartedChanged)))
  "Returns md5sum for a message object of type 'CommonCalibrationStateMagnetoCalibrationStartedChanged"
  "2277a8a251c1c5f5970171a6e7e5eab0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonCalibrationStateMagnetoCalibrationStartedChanged>)))
  "Returns full string definition for message of type '<CommonCalibrationStateMagnetoCalibrationStartedChanged>"
  (cl:format cl:nil "# CommonCalibrationStateMagnetoCalibrationStartedChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Calibration process state.~%~%Header header~%~%# 1 if calibration has started, 0 otherwise~%uint8 started~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonCalibrationStateMagnetoCalibrationStartedChanged)))
  "Returns full string definition for message of type 'CommonCalibrationStateMagnetoCalibrationStartedChanged"
  (cl:format cl:nil "# CommonCalibrationStateMagnetoCalibrationStartedChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Calibration process state.~%~%Header header~%~%# 1 if calibration has started, 0 otherwise~%uint8 started~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonCalibrationStateMagnetoCalibrationStartedChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonCalibrationStateMagnetoCalibrationStartedChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonCalibrationStateMagnetoCalibrationStartedChanged
    (cl:cons ':header (header msg))
    (cl:cons ':started (started msg))
))
