; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3AccessoryStateConnectedAccessories.msg.html

(cl:defclass <Ardrone3AccessoryStateConnectedAccessories> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (accessory_type
    :reader accessory_type
    :initarg :accessory_type
    :type cl:fixnum
    :initform 0)
   (uid
    :reader uid
    :initarg :uid
    :type cl:string
    :initform "")
   (swVersion
    :reader swVersion
    :initarg :swVersion
    :type cl:string
    :initform ""))
)

(cl:defclass Ardrone3AccessoryStateConnectedAccessories (<Ardrone3AccessoryStateConnectedAccessories>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3AccessoryStateConnectedAccessories>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3AccessoryStateConnectedAccessories)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3AccessoryStateConnectedAccessories> is deprecated: use bebop_msgs-msg:Ardrone3AccessoryStateConnectedAccessories instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3AccessoryStateConnectedAccessories>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Ardrone3AccessoryStateConnectedAccessories>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:id-val is deprecated.  Use bebop_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'accessory_type-val :lambda-list '(m))
(cl:defmethod accessory_type-val ((m <Ardrone3AccessoryStateConnectedAccessories>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:accessory_type-val is deprecated.  Use bebop_msgs-msg:accessory_type instead.")
  (accessory_type m))

(cl:ensure-generic-function 'uid-val :lambda-list '(m))
(cl:defmethod uid-val ((m <Ardrone3AccessoryStateConnectedAccessories>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:uid-val is deprecated.  Use bebop_msgs-msg:uid instead.")
  (uid m))

(cl:ensure-generic-function 'swVersion-val :lambda-list '(m))
(cl:defmethod swVersion-val ((m <Ardrone3AccessoryStateConnectedAccessories>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:swVersion-val is deprecated.  Use bebop_msgs-msg:swVersion instead.")
  (swVersion m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Ardrone3AccessoryStateConnectedAccessories>)))
    "Constants for message type '<Ardrone3AccessoryStateConnectedAccessories>"
  '((:ACCESSORY_TYPE_SEQUOIA . 0)
    (:ACCESSORY_TYPE_UNKNOWNACCESSORY_1 . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Ardrone3AccessoryStateConnectedAccessories)))
    "Constants for message type 'Ardrone3AccessoryStateConnectedAccessories"
  '((:ACCESSORY_TYPE_SEQUOIA . 0)
    (:ACCESSORY_TYPE_UNKNOWNACCESSORY_1 . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3AccessoryStateConnectedAccessories>) ostream)
  "Serializes a message object of type '<Ardrone3AccessoryStateConnectedAccessories>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accessory_type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'swVersion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'swVersion))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3AccessoryStateConnectedAccessories>) istream)
  "Deserializes a message object of type '<Ardrone3AccessoryStateConnectedAccessories>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accessory_type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'swVersion) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'swVersion) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3AccessoryStateConnectedAccessories>)))
  "Returns string type for a message object of type '<Ardrone3AccessoryStateConnectedAccessories>"
  "bebop_msgs/Ardrone3AccessoryStateConnectedAccessories")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3AccessoryStateConnectedAccessories)))
  "Returns string type for a message object of type 'Ardrone3AccessoryStateConnectedAccessories"
  "bebop_msgs/Ardrone3AccessoryStateConnectedAccessories")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3AccessoryStateConnectedAccessories>)))
  "Returns md5sum for a message object of type '<Ardrone3AccessoryStateConnectedAccessories>"
  "4c105add6586231e3d438d1252e04c7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3AccessoryStateConnectedAccessories)))
  "Returns md5sum for a message object of type 'Ardrone3AccessoryStateConnectedAccessories"
  "4c105add6586231e3d438d1252e04c7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3AccessoryStateConnectedAccessories>)))
  "Returns full string definition for message of type '<Ardrone3AccessoryStateConnectedAccessories>"
  (cl:format cl:nil "# Ardrone3AccessoryStateConnectedAccessories~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: List of all connected accessories. This event presents the list of all connected accessories. To actually use the component, use the component dedicated feature.~%~%Header header~%~%# Id of the accessory for the session.~%uint8 id~%# Accessory type~%uint8 accessory_type_sequoia=0  # Parrot Sequoia (multispectral camera for agriculture)~%uint8 accessory_type_unknownaccessory_1=1  # UNKNOWNACCESSORY_1 camera (thermal+rgb camera)~%uint8 accessory_type~%# Unique Id of the accessory. This id is unique by accessory_type.~%string uid~%# Software Version of the accessory.~%string swVersion~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3AccessoryStateConnectedAccessories)))
  "Returns full string definition for message of type 'Ardrone3AccessoryStateConnectedAccessories"
  (cl:format cl:nil "# Ardrone3AccessoryStateConnectedAccessories~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: List of all connected accessories. This event presents the list of all connected accessories. To actually use the component, use the component dedicated feature.~%~%Header header~%~%# Id of the accessory for the session.~%uint8 id~%# Accessory type~%uint8 accessory_type_sequoia=0  # Parrot Sequoia (multispectral camera for agriculture)~%uint8 accessory_type_unknownaccessory_1=1  # UNKNOWNACCESSORY_1 camera (thermal+rgb camera)~%uint8 accessory_type~%# Unique Id of the accessory. This id is unique by accessory_type.~%string uid~%# Software Version of the accessory.~%string swVersion~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3AccessoryStateConnectedAccessories>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4 (cl:length (cl:slot-value msg 'uid))
     4 (cl:length (cl:slot-value msg 'swVersion))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3AccessoryStateConnectedAccessories>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3AccessoryStateConnectedAccessories
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':accessory_type (accessory_type msg))
    (cl:cons ':uid (uid msg))
    (cl:cons ':swVersion (swVersion msg))
))
