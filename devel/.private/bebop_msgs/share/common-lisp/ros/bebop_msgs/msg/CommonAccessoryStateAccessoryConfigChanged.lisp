; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonAccessoryStateAccessoryConfigChanged.msg.html

(cl:defclass <CommonAccessoryStateAccessoryConfigChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (newAccessory
    :reader newAccessory
    :initarg :newAccessory
    :type cl:fixnum
    :initform 0)
   (error
    :reader error
    :initarg :error
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonAccessoryStateAccessoryConfigChanged (<CommonAccessoryStateAccessoryConfigChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonAccessoryStateAccessoryConfigChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonAccessoryStateAccessoryConfigChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonAccessoryStateAccessoryConfigChanged> is deprecated: use bebop_msgs-msg:CommonAccessoryStateAccessoryConfigChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonAccessoryStateAccessoryConfigChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'newAccessory-val :lambda-list '(m))
(cl:defmethod newAccessory-val ((m <CommonAccessoryStateAccessoryConfigChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:newAccessory-val is deprecated.  Use bebop_msgs-msg:newAccessory instead.")
  (newAccessory m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <CommonAccessoryStateAccessoryConfigChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:error-val is deprecated.  Use bebop_msgs-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CommonAccessoryStateAccessoryConfigChanged>)))
    "Constants for message type '<CommonAccessoryStateAccessoryConfigChanged>"
  '((:NEWACCESSORY_UNCONFIGURED . 0)
    (:NEWACCESSORY_NO_ACCESSORY . 1)
    (:NEWACCESSORY_STD_WHEELS . 2)
    (:NEWACCESSORY_TRUCK_WHEELS . 3)
    (:NEWACCESSORY_HULL . 4)
    (:NEWACCESSORY_HYDROFOIL . 5)
    (:NEWACCESSORY_IN_PROGRESS . 6)
    (:ERROR_OK . 0)
    (:ERROR_UNKNOWN . 1)
    (:ERROR_FLYING . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CommonAccessoryStateAccessoryConfigChanged)))
    "Constants for message type 'CommonAccessoryStateAccessoryConfigChanged"
  '((:NEWACCESSORY_UNCONFIGURED . 0)
    (:NEWACCESSORY_NO_ACCESSORY . 1)
    (:NEWACCESSORY_STD_WHEELS . 2)
    (:NEWACCESSORY_TRUCK_WHEELS . 3)
    (:NEWACCESSORY_HULL . 4)
    (:NEWACCESSORY_HYDROFOIL . 5)
    (:NEWACCESSORY_IN_PROGRESS . 6)
    (:ERROR_OK . 0)
    (:ERROR_UNKNOWN . 1)
    (:ERROR_FLYING . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonAccessoryStateAccessoryConfigChanged>) ostream)
  "Serializes a message object of type '<CommonAccessoryStateAccessoryConfigChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'newAccessory)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonAccessoryStateAccessoryConfigChanged>) istream)
  "Deserializes a message object of type '<CommonAccessoryStateAccessoryConfigChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'newAccessory)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonAccessoryStateAccessoryConfigChanged>)))
  "Returns string type for a message object of type '<CommonAccessoryStateAccessoryConfigChanged>"
  "bebop_msgs/CommonAccessoryStateAccessoryConfigChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonAccessoryStateAccessoryConfigChanged)))
  "Returns string type for a message object of type 'CommonAccessoryStateAccessoryConfigChanged"
  "bebop_msgs/CommonAccessoryStateAccessoryConfigChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonAccessoryStateAccessoryConfigChanged>)))
  "Returns md5sum for a message object of type '<CommonAccessoryStateAccessoryConfigChanged>"
  "e157f9e28ff119a959d19b46621057dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonAccessoryStateAccessoryConfigChanged)))
  "Returns md5sum for a message object of type 'CommonAccessoryStateAccessoryConfigChanged"
  "e157f9e28ff119a959d19b46621057dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonAccessoryStateAccessoryConfigChanged>)))
  "Returns full string definition for message of type '<CommonAccessoryStateAccessoryConfigChanged>"
  (cl:format cl:nil "# CommonAccessoryStateAccessoryConfigChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Accessory config.~%~%Header header~%~%# Accessory configuration reported by firmware.~%uint8 newAccessory_UNCONFIGURED=0  # No accessory configuration set. Controller needs to set one.~%uint8 newAccessory_NO_ACCESSORY=1  # No accessory.~%uint8 newAccessory_STD_WHEELS=2  # Standard wheels~%uint8 newAccessory_TRUCK_WHEELS=3  # Truck wheels~%uint8 newAccessory_HULL=4  # Hull~%uint8 newAccessory_HYDROFOIL=5  # Hydrofoil~%uint8 newAccessory_IN_PROGRESS=6  # Configuration in progress.~%uint8 newAccessory~%# Error code.~%uint8 error_OK=0  # No error. Accessory config change successful.~%uint8 error_UNKNOWN=1  # Cannot change accessory configuration for some reason.~%uint8 error_FLYING=2  # Cannot change accessory configuration while flying.~%uint8 error~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonAccessoryStateAccessoryConfigChanged)))
  "Returns full string definition for message of type 'CommonAccessoryStateAccessoryConfigChanged"
  (cl:format cl:nil "# CommonAccessoryStateAccessoryConfigChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Accessory config.~%~%Header header~%~%# Accessory configuration reported by firmware.~%uint8 newAccessory_UNCONFIGURED=0  # No accessory configuration set. Controller needs to set one.~%uint8 newAccessory_NO_ACCESSORY=1  # No accessory.~%uint8 newAccessory_STD_WHEELS=2  # Standard wheels~%uint8 newAccessory_TRUCK_WHEELS=3  # Truck wheels~%uint8 newAccessory_HULL=4  # Hull~%uint8 newAccessory_HYDROFOIL=5  # Hydrofoil~%uint8 newAccessory_IN_PROGRESS=6  # Configuration in progress.~%uint8 newAccessory~%# Error code.~%uint8 error_OK=0  # No error. Accessory config change successful.~%uint8 error_UNKNOWN=1  # Cannot change accessory configuration for some reason.~%uint8 error_FLYING=2  # Cannot change accessory configuration while flying.~%uint8 error~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonAccessoryStateAccessoryConfigChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonAccessoryStateAccessoryConfigChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonAccessoryStateAccessoryConfigChanged
    (cl:cons ':header (header msg))
    (cl:cons ':newAccessory (newAccessory msg))
    (cl:cons ':error (error msg))
))
