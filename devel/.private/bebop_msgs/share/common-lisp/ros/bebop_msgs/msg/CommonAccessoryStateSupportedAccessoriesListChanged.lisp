; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonAccessoryStateSupportedAccessoriesListChanged.msg.html

(cl:defclass <CommonAccessoryStateSupportedAccessoriesListChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (accessory
    :reader accessory
    :initarg :accessory
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonAccessoryStateSupportedAccessoriesListChanged (<CommonAccessoryStateSupportedAccessoriesListChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonAccessoryStateSupportedAccessoriesListChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonAccessoryStateSupportedAccessoriesListChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonAccessoryStateSupportedAccessoriesListChanged> is deprecated: use bebop_msgs-msg:CommonAccessoryStateSupportedAccessoriesListChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonAccessoryStateSupportedAccessoriesListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'accessory-val :lambda-list '(m))
(cl:defmethod accessory-val ((m <CommonAccessoryStateSupportedAccessoriesListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:accessory-val is deprecated.  Use bebop_msgs-msg:accessory instead.")
  (accessory m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CommonAccessoryStateSupportedAccessoriesListChanged>)))
    "Constants for message type '<CommonAccessoryStateSupportedAccessoriesListChanged>"
  '((:ACCESSORY_NO_ACCESSORY . 0)
    (:ACCESSORY_STD_WHEELS . 1)
    (:ACCESSORY_TRUCK_WHEELS . 2)
    (:ACCESSORY_HULL . 3)
    (:ACCESSORY_HYDROFOIL . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CommonAccessoryStateSupportedAccessoriesListChanged)))
    "Constants for message type 'CommonAccessoryStateSupportedAccessoriesListChanged"
  '((:ACCESSORY_NO_ACCESSORY . 0)
    (:ACCESSORY_STD_WHEELS . 1)
    (:ACCESSORY_TRUCK_WHEELS . 2)
    (:ACCESSORY_HULL . 3)
    (:ACCESSORY_HYDROFOIL . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonAccessoryStateSupportedAccessoriesListChanged>) ostream)
  "Serializes a message object of type '<CommonAccessoryStateSupportedAccessoriesListChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accessory)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonAccessoryStateSupportedAccessoriesListChanged>) istream)
  "Deserializes a message object of type '<CommonAccessoryStateSupportedAccessoriesListChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accessory)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonAccessoryStateSupportedAccessoriesListChanged>)))
  "Returns string type for a message object of type '<CommonAccessoryStateSupportedAccessoriesListChanged>"
  "bebop_msgs/CommonAccessoryStateSupportedAccessoriesListChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonAccessoryStateSupportedAccessoriesListChanged)))
  "Returns string type for a message object of type 'CommonAccessoryStateSupportedAccessoriesListChanged"
  "bebop_msgs/CommonAccessoryStateSupportedAccessoriesListChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonAccessoryStateSupportedAccessoriesListChanged>)))
  "Returns md5sum for a message object of type '<CommonAccessoryStateSupportedAccessoriesListChanged>"
  "5c5ca2fc44e5f348a92c49ef9e03b7d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonAccessoryStateSupportedAccessoriesListChanged)))
  "Returns md5sum for a message object of type 'CommonAccessoryStateSupportedAccessoriesListChanged"
  "5c5ca2fc44e5f348a92c49ef9e03b7d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonAccessoryStateSupportedAccessoriesListChanged>)))
  "Returns full string definition for message of type '<CommonAccessoryStateSupportedAccessoriesListChanged>"
  (cl:format cl:nil "# CommonAccessoryStateSupportedAccessoriesListChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Supported accessories list.~%~%Header header~%~%# Accessory configurations supported by the product.~%uint8 accessory_NO_ACCESSORY=0  # No accessory.~%uint8 accessory_STD_WHEELS=1  # Standard wheels~%uint8 accessory_TRUCK_WHEELS=2  # Truck wheels~%uint8 accessory_HULL=3  # Hull~%uint8 accessory_HYDROFOIL=4  # Hydrofoil~%uint8 accessory~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonAccessoryStateSupportedAccessoriesListChanged)))
  "Returns full string definition for message of type 'CommonAccessoryStateSupportedAccessoriesListChanged"
  (cl:format cl:nil "# CommonAccessoryStateSupportedAccessoriesListChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Supported accessories list.~%~%Header header~%~%# Accessory configurations supported by the product.~%uint8 accessory_NO_ACCESSORY=0  # No accessory.~%uint8 accessory_STD_WHEELS=1  # Standard wheels~%uint8 accessory_TRUCK_WHEELS=2  # Truck wheels~%uint8 accessory_HULL=3  # Hull~%uint8 accessory_HYDROFOIL=4  # Hydrofoil~%uint8 accessory~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonAccessoryStateSupportedAccessoriesListChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonAccessoryStateSupportedAccessoriesListChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonAccessoryStateSupportedAccessoriesListChanged
    (cl:cons ':header (header msg))
    (cl:cons ':accessory (accessory msg))
))
