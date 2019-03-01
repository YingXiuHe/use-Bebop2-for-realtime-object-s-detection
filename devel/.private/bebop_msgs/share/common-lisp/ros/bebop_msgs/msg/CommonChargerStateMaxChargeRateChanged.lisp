; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonChargerStateMaxChargeRateChanged.msg.html

(cl:defclass <CommonChargerStateMaxChargeRateChanged> (roslisp-msg-protocol:ros-message)
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

(cl:defclass CommonChargerStateMaxChargeRateChanged (<CommonChargerStateMaxChargeRateChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonChargerStateMaxChargeRateChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonChargerStateMaxChargeRateChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonChargerStateMaxChargeRateChanged> is deprecated: use bebop_msgs-msg:CommonChargerStateMaxChargeRateChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonChargerStateMaxChargeRateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rate-val :lambda-list '(m))
(cl:defmethod rate-val ((m <CommonChargerStateMaxChargeRateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:rate-val is deprecated.  Use bebop_msgs-msg:rate instead.")
  (rate m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CommonChargerStateMaxChargeRateChanged>)))
    "Constants for message type '<CommonChargerStateMaxChargeRateChanged>"
  '((:RATE_SLOW . 0)
    (:RATE_MODERATE . 1)
    (:RATE_FAST . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CommonChargerStateMaxChargeRateChanged)))
    "Constants for message type 'CommonChargerStateMaxChargeRateChanged"
  '((:RATE_SLOW . 0)
    (:RATE_MODERATE . 1)
    (:RATE_FAST . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonChargerStateMaxChargeRateChanged>) ostream)
  "Serializes a message object of type '<CommonChargerStateMaxChargeRateChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rate)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonChargerStateMaxChargeRateChanged>) istream)
  "Deserializes a message object of type '<CommonChargerStateMaxChargeRateChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rate)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonChargerStateMaxChargeRateChanged>)))
  "Returns string type for a message object of type '<CommonChargerStateMaxChargeRateChanged>"
  "bebop_msgs/CommonChargerStateMaxChargeRateChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonChargerStateMaxChargeRateChanged)))
  "Returns string type for a message object of type 'CommonChargerStateMaxChargeRateChanged"
  "bebop_msgs/CommonChargerStateMaxChargeRateChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonChargerStateMaxChargeRateChanged>)))
  "Returns md5sum for a message object of type '<CommonChargerStateMaxChargeRateChanged>"
  "941b1a17fd6fd05c4901386c552253e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonChargerStateMaxChargeRateChanged)))
  "Returns md5sum for a message object of type 'CommonChargerStateMaxChargeRateChanged"
  "941b1a17fd6fd05c4901386c552253e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonChargerStateMaxChargeRateChanged>)))
  "Returns full string definition for message of type '<CommonChargerStateMaxChargeRateChanged>"
  (cl:format cl:nil "# CommonChargerStateMaxChargeRateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Max charge rate.~%~%Header header~%~%# The current maximum charge rate.~%uint8 rate_SLOW=0  # Fully charge the battery at a slow rate. Typically limit max charge current to 512 mA.~%uint8 rate_MODERATE=1  # Almost fully-charge the battery at moderate rate (&gt; 512 mA) but slower than the fastest rate.~%uint8 rate_FAST=2  # Almost fully-charge the battery at the highest possible rate supported by the charger.~%uint8 rate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonChargerStateMaxChargeRateChanged)))
  "Returns full string definition for message of type 'CommonChargerStateMaxChargeRateChanged"
  (cl:format cl:nil "# CommonChargerStateMaxChargeRateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Max charge rate.~%~%Header header~%~%# The current maximum charge rate.~%uint8 rate_SLOW=0  # Fully charge the battery at a slow rate. Typically limit max charge current to 512 mA.~%uint8 rate_MODERATE=1  # Almost fully-charge the battery at moderate rate (&gt; 512 mA) but slower than the fastest rate.~%uint8 rate_FAST=2  # Almost fully-charge the battery at the highest possible rate supported by the charger.~%uint8 rate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonChargerStateMaxChargeRateChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonChargerStateMaxChargeRateChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonChargerStateMaxChargeRateChanged
    (cl:cons ':header (header msg))
    (cl:cons ':rate (rate msg))
))
