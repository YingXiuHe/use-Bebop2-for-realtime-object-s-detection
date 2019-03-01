; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonChargerStateLastChargeRateChanged.msg.html

(cl:defclass <CommonChargerStateLastChargeRateChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (rate
    :reader rate
    :initarg :rate
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonChargerStateLastChargeRateChanged (<CommonChargerStateLastChargeRateChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonChargerStateLastChargeRateChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonChargerStateLastChargeRateChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonChargerStateLastChargeRateChanged> is deprecated: use bebop_msgs-msg:CommonChargerStateLastChargeRateChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonChargerStateLastChargeRateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rate-val :lambda-list '(m))
(cl:defmethod rate-val ((m <CommonChargerStateLastChargeRateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:rate-val is deprecated.  Use bebop_msgs-msg:rate instead.")
  (rate m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CommonChargerStateLastChargeRateChanged>)))
    "Constants for message type '<CommonChargerStateLastChargeRateChanged>"
  '((:RATE_UNKNOWN . 0)
    (:RATE_SLOW . 1)
    (:RATE_MODERATE . 2)
    (:RATE_FAST . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CommonChargerStateLastChargeRateChanged)))
    "Constants for message type 'CommonChargerStateLastChargeRateChanged"
  '((:RATE_UNKNOWN . 0)
    (:RATE_SLOW . 1)
    (:RATE_MODERATE . 2)
    (:RATE_FAST . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonChargerStateLastChargeRateChanged>) ostream)
  "Serializes a message object of type '<CommonChargerStateLastChargeRateChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rate)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonChargerStateLastChargeRateChanged>) istream)
  "Deserializes a message object of type '<CommonChargerStateLastChargeRateChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rate)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonChargerStateLastChargeRateChanged>)))
  "Returns string type for a message object of type '<CommonChargerStateLastChargeRateChanged>"
  "bebop_msgs/CommonChargerStateLastChargeRateChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonChargerStateLastChargeRateChanged)))
  "Returns string type for a message object of type 'CommonChargerStateLastChargeRateChanged"
  "bebop_msgs/CommonChargerStateLastChargeRateChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonChargerStateLastChargeRateChanged>)))
  "Returns md5sum for a message object of type '<CommonChargerStateLastChargeRateChanged>"
  "e9b711bb39581d8a588c2bb4a104345b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonChargerStateLastChargeRateChanged)))
  "Returns md5sum for a message object of type 'CommonChargerStateLastChargeRateChanged"
  "e9b711bb39581d8a588c2bb4a104345b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonChargerStateLastChargeRateChanged>)))
  "Returns full string definition for message of type '<CommonChargerStateLastChargeRateChanged>"
  (cl:format cl:nil "# CommonChargerStateLastChargeRateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Last charge rate.~%~%Header header~%~%# The charge rate recorded by the firmware for the last charge.~%uint8 rate_UNKNOWN=0  # The last charge rate is not known.~%uint8 rate_SLOW=1  # Slow charge rate.~%uint8 rate_MODERATE=2  # Moderate charge rate.~%uint8 rate_FAST=3  # Fast charge rate.~%uint8 rate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonChargerStateLastChargeRateChanged)))
  "Returns full string definition for message of type 'CommonChargerStateLastChargeRateChanged"
  (cl:format cl:nil "# CommonChargerStateLastChargeRateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Last charge rate.~%~%Header header~%~%# The charge rate recorded by the firmware for the last charge.~%uint8 rate_UNKNOWN=0  # The last charge rate is not known.~%uint8 rate_SLOW=1  # Slow charge rate.~%uint8 rate_MODERATE=2  # Moderate charge rate.~%uint8 rate_FAST=3  # Fast charge rate.~%uint8 rate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonChargerStateLastChargeRateChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonChargerStateLastChargeRateChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonChargerStateLastChargeRateChanged
    (cl:cons ':header (header msg))
    (cl:cons ':rate (rate msg))
))
