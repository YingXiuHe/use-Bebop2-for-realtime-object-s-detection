; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonChargerStateCurrentChargeStateChanged.msg.html

(cl:defclass <CommonChargerStateCurrentChargeStateChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (phase
    :reader phase
    :initarg :phase
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonChargerStateCurrentChargeStateChanged (<CommonChargerStateCurrentChargeStateChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonChargerStateCurrentChargeStateChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonChargerStateCurrentChargeStateChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonChargerStateCurrentChargeStateChanged> is deprecated: use bebop_msgs-msg:CommonChargerStateCurrentChargeStateChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonChargerStateCurrentChargeStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <CommonChargerStateCurrentChargeStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:status-val is deprecated.  Use bebop_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'phase-val :lambda-list '(m))
(cl:defmethod phase-val ((m <CommonChargerStateCurrentChargeStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:phase-val is deprecated.  Use bebop_msgs-msg:phase instead.")
  (phase m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CommonChargerStateCurrentChargeStateChanged>)))
    "Constants for message type '<CommonChargerStateCurrentChargeStateChanged>"
  '((:STATUS_DISCHARGING . 0)
    (:STATUS_CHARGING_SLOW . 1)
    (:STATUS_CHARGING_MODERATE . 2)
    (:STATUS_CHARGING_FAST . 3)
    (:STATUS_BATTERY_FULL . 4)
    (:PHASE_UNKNOWN . 0)
    (:PHASE_CONSTANT_CURRENT_1 . 1)
    (:PHASE_CONSTANT_CURRENT_2 . 2)
    (:PHASE_CONSTANT_VOLTAGE . 3)
    (:PHASE_CHARGED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CommonChargerStateCurrentChargeStateChanged)))
    "Constants for message type 'CommonChargerStateCurrentChargeStateChanged"
  '((:STATUS_DISCHARGING . 0)
    (:STATUS_CHARGING_SLOW . 1)
    (:STATUS_CHARGING_MODERATE . 2)
    (:STATUS_CHARGING_FAST . 3)
    (:STATUS_BATTERY_FULL . 4)
    (:PHASE_UNKNOWN . 0)
    (:PHASE_CONSTANT_CURRENT_1 . 1)
    (:PHASE_CONSTANT_CURRENT_2 . 2)
    (:PHASE_CONSTANT_VOLTAGE . 3)
    (:PHASE_CHARGED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonChargerStateCurrentChargeStateChanged>) ostream)
  "Serializes a message object of type '<CommonChargerStateCurrentChargeStateChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phase)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonChargerStateCurrentChargeStateChanged>) istream)
  "Deserializes a message object of type '<CommonChargerStateCurrentChargeStateChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phase)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonChargerStateCurrentChargeStateChanged>)))
  "Returns string type for a message object of type '<CommonChargerStateCurrentChargeStateChanged>"
  "bebop_msgs/CommonChargerStateCurrentChargeStateChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonChargerStateCurrentChargeStateChanged)))
  "Returns string type for a message object of type 'CommonChargerStateCurrentChargeStateChanged"
  "bebop_msgs/CommonChargerStateCurrentChargeStateChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonChargerStateCurrentChargeStateChanged>)))
  "Returns md5sum for a message object of type '<CommonChargerStateCurrentChargeStateChanged>"
  "18629b25e8e73562aa089390b0f02505")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonChargerStateCurrentChargeStateChanged)))
  "Returns md5sum for a message object of type 'CommonChargerStateCurrentChargeStateChanged"
  "18629b25e8e73562aa089390b0f02505")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonChargerStateCurrentChargeStateChanged>)))
  "Returns full string definition for message of type '<CommonChargerStateCurrentChargeStateChanged>"
  (cl:format cl:nil "# CommonChargerStateCurrentChargeStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Current charge state.~%~%Header header~%~%# Charger status.~%uint8 status_DISCHARGING=0  # The battery is discharging.~%uint8 status_CHARGING_SLOW=1  # The battery is charging at a slow rate about 512 mA.~%uint8 status_CHARGING_MODERATE=2  # The battery is charging at a moderate rate (&gt; 512 mA) but slower than the fastest rate.~%uint8 status_CHARGING_FAST=3  # The battery is charging at a the fastest rate.~%uint8 status_BATTERY_FULL=4  # The charger is plugged and the battery is fully charged.~%uint8 status~%# The current charging phase.~%uint8 phase_UNKNOWN=0  # The charge phase is unknown or irrelevant.~%uint8 phase_CONSTANT_CURRENT_1=1  # First phase of the charging process. The battery is charging with constant current.~%uint8 phase_CONSTANT_CURRENT_2=2  # Second phase of the charging process. The battery is charging with constant current, with a higher voltage than the first phase.~%uint8 phase_CONSTANT_VOLTAGE=3  # Last part of the charging process. The battery is charging with a constant voltage.~%uint8 phase_CHARGED=4  # The battery is fully charged.~%uint8 phase~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonChargerStateCurrentChargeStateChanged)))
  "Returns full string definition for message of type 'CommonChargerStateCurrentChargeStateChanged"
  (cl:format cl:nil "# CommonChargerStateCurrentChargeStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Current charge state.~%~%Header header~%~%# Charger status.~%uint8 status_DISCHARGING=0  # The battery is discharging.~%uint8 status_CHARGING_SLOW=1  # The battery is charging at a slow rate about 512 mA.~%uint8 status_CHARGING_MODERATE=2  # The battery is charging at a moderate rate (&gt; 512 mA) but slower than the fastest rate.~%uint8 status_CHARGING_FAST=3  # The battery is charging at a the fastest rate.~%uint8 status_BATTERY_FULL=4  # The charger is plugged and the battery is fully charged.~%uint8 status~%# The current charging phase.~%uint8 phase_UNKNOWN=0  # The charge phase is unknown or irrelevant.~%uint8 phase_CONSTANT_CURRENT_1=1  # First phase of the charging process. The battery is charging with constant current.~%uint8 phase_CONSTANT_CURRENT_2=2  # Second phase of the charging process. The battery is charging with constant current, with a higher voltage than the first phase.~%uint8 phase_CONSTANT_VOLTAGE=3  # Last part of the charging process. The battery is charging with a constant voltage.~%uint8 phase_CHARGED=4  # The battery is fully charged.~%uint8 phase~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonChargerStateCurrentChargeStateChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonChargerStateCurrentChargeStateChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonChargerStateCurrentChargeStateChanged
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
    (cl:cons ':phase (phase msg))
))
