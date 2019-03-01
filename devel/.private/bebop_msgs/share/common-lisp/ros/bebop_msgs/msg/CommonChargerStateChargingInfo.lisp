; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonChargerStateChargingInfo.msg.html

(cl:defclass <CommonChargerStateChargingInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (phase
    :reader phase
    :initarg :phase
    :type cl:fixnum
    :initform 0)
   (rate
    :reader rate
    :initarg :rate
    :type cl:fixnum
    :initform 0)
   (intensity
    :reader intensity
    :initarg :intensity
    :type cl:fixnum
    :initform 0)
   (fullChargingTime
    :reader fullChargingTime
    :initarg :fullChargingTime
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonChargerStateChargingInfo (<CommonChargerStateChargingInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonChargerStateChargingInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonChargerStateChargingInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonChargerStateChargingInfo> is deprecated: use bebop_msgs-msg:CommonChargerStateChargingInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonChargerStateChargingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'phase-val :lambda-list '(m))
(cl:defmethod phase-val ((m <CommonChargerStateChargingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:phase-val is deprecated.  Use bebop_msgs-msg:phase instead.")
  (phase m))

(cl:ensure-generic-function 'rate-val :lambda-list '(m))
(cl:defmethod rate-val ((m <CommonChargerStateChargingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:rate-val is deprecated.  Use bebop_msgs-msg:rate instead.")
  (rate m))

(cl:ensure-generic-function 'intensity-val :lambda-list '(m))
(cl:defmethod intensity-val ((m <CommonChargerStateChargingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:intensity-val is deprecated.  Use bebop_msgs-msg:intensity instead.")
  (intensity m))

(cl:ensure-generic-function 'fullChargingTime-val :lambda-list '(m))
(cl:defmethod fullChargingTime-val ((m <CommonChargerStateChargingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:fullChargingTime-val is deprecated.  Use bebop_msgs-msg:fullChargingTime instead.")
  (fullChargingTime m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CommonChargerStateChargingInfo>)))
    "Constants for message type '<CommonChargerStateChargingInfo>"
  '((:PHASE_UNKNOWN . 0)
    (:PHASE_CONSTANT_CURRENT_1 . 1)
    (:PHASE_CONSTANT_CURRENT_2 . 2)
    (:PHASE_CONSTANT_VOLTAGE . 3)
    (:PHASE_CHARGED . 4)
    (:PHASE_DISCHARGING . 5)
    (:RATE_UNKNOWN . 0)
    (:RATE_SLOW . 1)
    (:RATE_MODERATE . 2)
    (:RATE_FAST . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CommonChargerStateChargingInfo)))
    "Constants for message type 'CommonChargerStateChargingInfo"
  '((:PHASE_UNKNOWN . 0)
    (:PHASE_CONSTANT_CURRENT_1 . 1)
    (:PHASE_CONSTANT_CURRENT_2 . 2)
    (:PHASE_CONSTANT_VOLTAGE . 3)
    (:PHASE_CHARGED . 4)
    (:PHASE_DISCHARGING . 5)
    (:RATE_UNKNOWN . 0)
    (:RATE_SLOW . 1)
    (:RATE_MODERATE . 2)
    (:RATE_FAST . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonChargerStateChargingInfo>) ostream)
  "Serializes a message object of type '<CommonChargerStateChargingInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phase)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rate)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'intensity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fullChargingTime)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonChargerStateChargingInfo>) istream)
  "Deserializes a message object of type '<CommonChargerStateChargingInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phase)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rate)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'intensity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fullChargingTime)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonChargerStateChargingInfo>)))
  "Returns string type for a message object of type '<CommonChargerStateChargingInfo>"
  "bebop_msgs/CommonChargerStateChargingInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonChargerStateChargingInfo)))
  "Returns string type for a message object of type 'CommonChargerStateChargingInfo"
  "bebop_msgs/CommonChargerStateChargingInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonChargerStateChargingInfo>)))
  "Returns md5sum for a message object of type '<CommonChargerStateChargingInfo>"
  "6cde652314f80f4da435ec6429960e6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonChargerStateChargingInfo)))
  "Returns md5sum for a message object of type 'CommonChargerStateChargingInfo"
  "6cde652314f80f4da435ec6429960e6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonChargerStateChargingInfo>)))
  "Returns full string definition for message of type '<CommonChargerStateChargingInfo>"
  (cl:format cl:nil "# CommonChargerStateChargingInfo~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Charging information.~%~%Header header~%~%# The current charging phase.~%uint8 phase_UNKNOWN=0  # The charge phase is unknown or irrelevant.~%uint8 phase_CONSTANT_CURRENT_1=1  # First phase of the charging process. The battery is charging with constant current.~%uint8 phase_CONSTANT_CURRENT_2=2  # Second phase of the charging process. The battery is charging with constant current, with a higher voltage than the first phase.~%uint8 phase_CONSTANT_VOLTAGE=3  # Last part of the charging process. The battery is charging with a constant voltage.~%uint8 phase_CHARGED=4  # The battery is fully charged.~%uint8 phase_DISCHARGING=5  # The battery is discharging; Other arguments refers to the last charge.~%uint8 phase~%# The charge rate. If phase is DISCHARGING, refers to the last charge.~%uint8 rate_UNKNOWN=0  # The charge rate is not known.~%uint8 rate_SLOW=1  # Slow charge rate.~%uint8 rate_MODERATE=2  # Moderate charge rate.~%uint8 rate_FAST=3  # Fast charge rate.~%uint8 rate~%# The charging intensity, in dA. (12dA = 1,2A) ; If phase is DISCHARGING, refers to the last charge. Equals to 0 if not known.~%uint8 intensity~%# The full charging time estimated, in minute. If phase is DISCHARGING, refers to the last charge. Equals to 0 if not known.~%uint8 fullChargingTime~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonChargerStateChargingInfo)))
  "Returns full string definition for message of type 'CommonChargerStateChargingInfo"
  (cl:format cl:nil "# CommonChargerStateChargingInfo~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Charging information.~%~%Header header~%~%# The current charging phase.~%uint8 phase_UNKNOWN=0  # The charge phase is unknown or irrelevant.~%uint8 phase_CONSTANT_CURRENT_1=1  # First phase of the charging process. The battery is charging with constant current.~%uint8 phase_CONSTANT_CURRENT_2=2  # Second phase of the charging process. The battery is charging with constant current, with a higher voltage than the first phase.~%uint8 phase_CONSTANT_VOLTAGE=3  # Last part of the charging process. The battery is charging with a constant voltage.~%uint8 phase_CHARGED=4  # The battery is fully charged.~%uint8 phase_DISCHARGING=5  # The battery is discharging; Other arguments refers to the last charge.~%uint8 phase~%# The charge rate. If phase is DISCHARGING, refers to the last charge.~%uint8 rate_UNKNOWN=0  # The charge rate is not known.~%uint8 rate_SLOW=1  # Slow charge rate.~%uint8 rate_MODERATE=2  # Moderate charge rate.~%uint8 rate_FAST=3  # Fast charge rate.~%uint8 rate~%# The charging intensity, in dA. (12dA = 1,2A) ; If phase is DISCHARGING, refers to the last charge. Equals to 0 if not known.~%uint8 intensity~%# The full charging time estimated, in minute. If phase is DISCHARGING, refers to the last charge. Equals to 0 if not known.~%uint8 fullChargingTime~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonChargerStateChargingInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonChargerStateChargingInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonChargerStateChargingInfo
    (cl:cons ':header (header msg))
    (cl:cons ':phase (phase msg))
    (cl:cons ':rate (rate msg))
    (cl:cons ':intensity (intensity msg))
    (cl:cons ':fullChargingTime (fullChargingTime msg))
))
