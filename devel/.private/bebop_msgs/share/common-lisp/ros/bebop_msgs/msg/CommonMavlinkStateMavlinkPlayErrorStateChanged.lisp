; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonMavlinkStateMavlinkPlayErrorStateChanged.msg.html

(cl:defclass <CommonMavlinkStateMavlinkPlayErrorStateChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (error
    :reader error
    :initarg :error
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonMavlinkStateMavlinkPlayErrorStateChanged (<CommonMavlinkStateMavlinkPlayErrorStateChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonMavlinkStateMavlinkPlayErrorStateChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonMavlinkStateMavlinkPlayErrorStateChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonMavlinkStateMavlinkPlayErrorStateChanged> is deprecated: use bebop_msgs-msg:CommonMavlinkStateMavlinkPlayErrorStateChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonMavlinkStateMavlinkPlayErrorStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <CommonMavlinkStateMavlinkPlayErrorStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:error-val is deprecated.  Use bebop_msgs-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CommonMavlinkStateMavlinkPlayErrorStateChanged>)))
    "Constants for message type '<CommonMavlinkStateMavlinkPlayErrorStateChanged>"
  '((:ERROR_NONE . 0)
    (:ERROR_NOTINOUTDOORMODE . 1)
    (:ERROR_GPSNOTFIXED . 2)
    (:ERROR_NOTCALIBRATED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CommonMavlinkStateMavlinkPlayErrorStateChanged)))
    "Constants for message type 'CommonMavlinkStateMavlinkPlayErrorStateChanged"
  '((:ERROR_NONE . 0)
    (:ERROR_NOTINOUTDOORMODE . 1)
    (:ERROR_GPSNOTFIXED . 2)
    (:ERROR_NOTCALIBRATED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonMavlinkStateMavlinkPlayErrorStateChanged>) ostream)
  "Serializes a message object of type '<CommonMavlinkStateMavlinkPlayErrorStateChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonMavlinkStateMavlinkPlayErrorStateChanged>) istream)
  "Deserializes a message object of type '<CommonMavlinkStateMavlinkPlayErrorStateChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonMavlinkStateMavlinkPlayErrorStateChanged>)))
  "Returns string type for a message object of type '<CommonMavlinkStateMavlinkPlayErrorStateChanged>"
  "bebop_msgs/CommonMavlinkStateMavlinkPlayErrorStateChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonMavlinkStateMavlinkPlayErrorStateChanged)))
  "Returns string type for a message object of type 'CommonMavlinkStateMavlinkPlayErrorStateChanged"
  "bebop_msgs/CommonMavlinkStateMavlinkPlayErrorStateChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonMavlinkStateMavlinkPlayErrorStateChanged>)))
  "Returns md5sum for a message object of type '<CommonMavlinkStateMavlinkPlayErrorStateChanged>"
  "5b9181d0c169113a4ceac9ebedd1a8b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonMavlinkStateMavlinkPlayErrorStateChanged)))
  "Returns md5sum for a message object of type 'CommonMavlinkStateMavlinkPlayErrorStateChanged"
  "5b9181d0c169113a4ceac9ebedd1a8b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonMavlinkStateMavlinkPlayErrorStateChanged>)))
  "Returns full string definition for message of type '<CommonMavlinkStateMavlinkPlayErrorStateChanged>"
  (cl:format cl:nil "# CommonMavlinkStateMavlinkPlayErrorStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: FlightPlan error.~%~%Header header~%~%# State of play error~%uint8 error_none=0  # There is no error~%uint8 error_notInOutDoorMode=1  # The drone is not in outdoor mode~%uint8 error_gpsNotFixed=2  # The gps is not fixed~%uint8 error_notCalibrated=3  # The magnetometer of the drone is not calibrated~%uint8 error~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonMavlinkStateMavlinkPlayErrorStateChanged)))
  "Returns full string definition for message of type 'CommonMavlinkStateMavlinkPlayErrorStateChanged"
  (cl:format cl:nil "# CommonMavlinkStateMavlinkPlayErrorStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: FlightPlan error.~%~%Header header~%~%# State of play error~%uint8 error_none=0  # There is no error~%uint8 error_notInOutDoorMode=1  # The drone is not in outdoor mode~%uint8 error_gpsNotFixed=2  # The gps is not fixed~%uint8 error_notCalibrated=3  # The magnetometer of the drone is not calibrated~%uint8 error~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonMavlinkStateMavlinkPlayErrorStateChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonMavlinkStateMavlinkPlayErrorStateChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonMavlinkStateMavlinkPlayErrorStateChanged
    (cl:cons ':header (header msg))
    (cl:cons ':error (error msg))
))
