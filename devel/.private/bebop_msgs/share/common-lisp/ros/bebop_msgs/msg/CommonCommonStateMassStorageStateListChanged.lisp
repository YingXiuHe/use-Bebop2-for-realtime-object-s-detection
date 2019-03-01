; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonCommonStateMassStorageStateListChanged.msg.html

(cl:defclass <CommonCommonStateMassStorageStateListChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mass_storage_id
    :reader mass_storage_id
    :initarg :mass_storage_id
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass CommonCommonStateMassStorageStateListChanged (<CommonCommonStateMassStorageStateListChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonCommonStateMassStorageStateListChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonCommonStateMassStorageStateListChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonCommonStateMassStorageStateListChanged> is deprecated: use bebop_msgs-msg:CommonCommonStateMassStorageStateListChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonCommonStateMassStorageStateListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mass_storage_id-val :lambda-list '(m))
(cl:defmethod mass_storage_id-val ((m <CommonCommonStateMassStorageStateListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:mass_storage_id-val is deprecated.  Use bebop_msgs-msg:mass_storage_id instead.")
  (mass_storage_id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <CommonCommonStateMassStorageStateListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:name-val is deprecated.  Use bebop_msgs-msg:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonCommonStateMassStorageStateListChanged>) ostream)
  "Serializes a message object of type '<CommonCommonStateMassStorageStateListChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mass_storage_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonCommonStateMassStorageStateListChanged>) istream)
  "Deserializes a message object of type '<CommonCommonStateMassStorageStateListChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mass_storage_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonCommonStateMassStorageStateListChanged>)))
  "Returns string type for a message object of type '<CommonCommonStateMassStorageStateListChanged>"
  "bebop_msgs/CommonCommonStateMassStorageStateListChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonCommonStateMassStorageStateListChanged)))
  "Returns string type for a message object of type 'CommonCommonStateMassStorageStateListChanged"
  "bebop_msgs/CommonCommonStateMassStorageStateListChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonCommonStateMassStorageStateListChanged>)))
  "Returns md5sum for a message object of type '<CommonCommonStateMassStorageStateListChanged>"
  "61c5221f7b7aeb8bcb1cc127a775a32c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonCommonStateMassStorageStateListChanged)))
  "Returns md5sum for a message object of type 'CommonCommonStateMassStorageStateListChanged"
  "61c5221f7b7aeb8bcb1cc127a775a32c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonCommonStateMassStorageStateListChanged>)))
  "Returns full string definition for message of type '<CommonCommonStateMassStorageStateListChanged>"
  (cl:format cl:nil "# CommonCommonStateMassStorageStateListChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Mass storage state list.~%~%Header header~%~%# Mass storage id (unique)~%uint8 mass_storage_id~%# Mass storage name~%string name~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonCommonStateMassStorageStateListChanged)))
  "Returns full string definition for message of type 'CommonCommonStateMassStorageStateListChanged"
  (cl:format cl:nil "# CommonCommonStateMassStorageStateListChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Mass storage state list.~%~%Header header~%~%# Mass storage id (unique)~%uint8 mass_storage_id~%# Mass storage name~%string name~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonCommonStateMassStorageStateListChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonCommonStateMassStorageStateListChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonCommonStateMassStorageStateListChanged
    (cl:cons ':header (header msg))
    (cl:cons ':mass_storage_id (mass_storage_id msg))
    (cl:cons ':name (name msg))
))
