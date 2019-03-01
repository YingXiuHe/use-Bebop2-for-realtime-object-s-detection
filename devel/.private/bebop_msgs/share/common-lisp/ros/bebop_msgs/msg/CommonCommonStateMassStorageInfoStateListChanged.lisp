; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonCommonStateMassStorageInfoStateListChanged.msg.html

(cl:defclass <CommonCommonStateMassStorageInfoStateListChanged> (roslisp-msg-protocol:ros-message)
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
   (size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0)
   (used_size
    :reader used_size
    :initarg :used_size
    :type cl:integer
    :initform 0)
   (plugged
    :reader plugged
    :initarg :plugged
    :type cl:fixnum
    :initform 0)
   (full
    :reader full
    :initarg :full
    :type cl:fixnum
    :initform 0)
   (internal
    :reader internal
    :initarg :internal
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonCommonStateMassStorageInfoStateListChanged (<CommonCommonStateMassStorageInfoStateListChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonCommonStateMassStorageInfoStateListChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonCommonStateMassStorageInfoStateListChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonCommonStateMassStorageInfoStateListChanged> is deprecated: use bebop_msgs-msg:CommonCommonStateMassStorageInfoStateListChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonCommonStateMassStorageInfoStateListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mass_storage_id-val :lambda-list '(m))
(cl:defmethod mass_storage_id-val ((m <CommonCommonStateMassStorageInfoStateListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:mass_storage_id-val is deprecated.  Use bebop_msgs-msg:mass_storage_id instead.")
  (mass_storage_id m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <CommonCommonStateMassStorageInfoStateListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:size-val is deprecated.  Use bebop_msgs-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'used_size-val :lambda-list '(m))
(cl:defmethod used_size-val ((m <CommonCommonStateMassStorageInfoStateListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:used_size-val is deprecated.  Use bebop_msgs-msg:used_size instead.")
  (used_size m))

(cl:ensure-generic-function 'plugged-val :lambda-list '(m))
(cl:defmethod plugged-val ((m <CommonCommonStateMassStorageInfoStateListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:plugged-val is deprecated.  Use bebop_msgs-msg:plugged instead.")
  (plugged m))

(cl:ensure-generic-function 'full-val :lambda-list '(m))
(cl:defmethod full-val ((m <CommonCommonStateMassStorageInfoStateListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:full-val is deprecated.  Use bebop_msgs-msg:full instead.")
  (full m))

(cl:ensure-generic-function 'internal-val :lambda-list '(m))
(cl:defmethod internal-val ((m <CommonCommonStateMassStorageInfoStateListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:internal-val is deprecated.  Use bebop_msgs-msg:internal instead.")
  (internal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonCommonStateMassStorageInfoStateListChanged>) ostream)
  "Serializes a message object of type '<CommonCommonStateMassStorageInfoStateListChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mass_storage_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'used_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'used_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'used_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'used_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'plugged)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'full)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'internal)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonCommonStateMassStorageInfoStateListChanged>) istream)
  "Deserializes a message object of type '<CommonCommonStateMassStorageInfoStateListChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mass_storage_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'used_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'used_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'used_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'used_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'plugged)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'full)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'internal)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonCommonStateMassStorageInfoStateListChanged>)))
  "Returns string type for a message object of type '<CommonCommonStateMassStorageInfoStateListChanged>"
  "bebop_msgs/CommonCommonStateMassStorageInfoStateListChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonCommonStateMassStorageInfoStateListChanged)))
  "Returns string type for a message object of type 'CommonCommonStateMassStorageInfoStateListChanged"
  "bebop_msgs/CommonCommonStateMassStorageInfoStateListChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonCommonStateMassStorageInfoStateListChanged>)))
  "Returns md5sum for a message object of type '<CommonCommonStateMassStorageInfoStateListChanged>"
  "2ca92d7dc2cd357b6c1f89b1084ed001")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonCommonStateMassStorageInfoStateListChanged)))
  "Returns md5sum for a message object of type 'CommonCommonStateMassStorageInfoStateListChanged"
  "2ca92d7dc2cd357b6c1f89b1084ed001")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonCommonStateMassStorageInfoStateListChanged>)))
  "Returns full string definition for message of type '<CommonCommonStateMassStorageInfoStateListChanged>"
  (cl:format cl:nil "# CommonCommonStateMassStorageInfoStateListChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Mass storage info state list.~%~%Header header~%~%# Mass storage state id (unique)~%uint8 mass_storage_id~%# Mass storage size in MBytes~%uint32 size~%# Mass storage used size in MBytes~%uint32 used_size~%# Mass storage plugged (1 if mass storage is plugged, otherwise 0)~%uint8 plugged~%# Mass storage full information state (1 if mass storage full, 0 otherwise).~%uint8 full~%# Mass storage internal type state (1 if mass storage is internal, 0 otherwise)~%uint8 internal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonCommonStateMassStorageInfoStateListChanged)))
  "Returns full string definition for message of type 'CommonCommonStateMassStorageInfoStateListChanged"
  (cl:format cl:nil "# CommonCommonStateMassStorageInfoStateListChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Mass storage info state list.~%~%Header header~%~%# Mass storage state id (unique)~%uint8 mass_storage_id~%# Mass storage size in MBytes~%uint32 size~%# Mass storage used size in MBytes~%uint32 used_size~%# Mass storage plugged (1 if mass storage is plugged, otherwise 0)~%uint8 plugged~%# Mass storage full information state (1 if mass storage full, 0 otherwise).~%uint8 full~%# Mass storage internal type state (1 if mass storage is internal, 0 otherwise)~%uint8 internal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonCommonStateMassStorageInfoStateListChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonCommonStateMassStorageInfoStateListChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonCommonStateMassStorageInfoStateListChanged
    (cl:cons ':header (header msg))
    (cl:cons ':mass_storage_id (mass_storage_id msg))
    (cl:cons ':size (size msg))
    (cl:cons ':used_size (used_size msg))
    (cl:cons ':plugged (plugged msg))
    (cl:cons ':full (full msg))
    (cl:cons ':internal (internal msg))
))
