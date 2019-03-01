; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonCommonStateMassStorageInfoRemainingListChanged.msg.html

(cl:defclass <CommonCommonStateMassStorageInfoRemainingListChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (free_space
    :reader free_space
    :initarg :free_space
    :type cl:integer
    :initform 0)
   (rec_time
    :reader rec_time
    :initarg :rec_time
    :type cl:fixnum
    :initform 0)
   (photo_remaining
    :reader photo_remaining
    :initarg :photo_remaining
    :type cl:integer
    :initform 0))
)

(cl:defclass CommonCommonStateMassStorageInfoRemainingListChanged (<CommonCommonStateMassStorageInfoRemainingListChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonCommonStateMassStorageInfoRemainingListChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonCommonStateMassStorageInfoRemainingListChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonCommonStateMassStorageInfoRemainingListChanged> is deprecated: use bebop_msgs-msg:CommonCommonStateMassStorageInfoRemainingListChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonCommonStateMassStorageInfoRemainingListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'free_space-val :lambda-list '(m))
(cl:defmethod free_space-val ((m <CommonCommonStateMassStorageInfoRemainingListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:free_space-val is deprecated.  Use bebop_msgs-msg:free_space instead.")
  (free_space m))

(cl:ensure-generic-function 'rec_time-val :lambda-list '(m))
(cl:defmethod rec_time-val ((m <CommonCommonStateMassStorageInfoRemainingListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:rec_time-val is deprecated.  Use bebop_msgs-msg:rec_time instead.")
  (rec_time m))

(cl:ensure-generic-function 'photo_remaining-val :lambda-list '(m))
(cl:defmethod photo_remaining-val ((m <CommonCommonStateMassStorageInfoRemainingListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:photo_remaining-val is deprecated.  Use bebop_msgs-msg:photo_remaining instead.")
  (photo_remaining m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonCommonStateMassStorageInfoRemainingListChanged>) ostream)
  "Serializes a message object of type '<CommonCommonStateMassStorageInfoRemainingListChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'free_space)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'free_space)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'free_space)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'free_space)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rec_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rec_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'photo_remaining)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'photo_remaining)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'photo_remaining)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'photo_remaining)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonCommonStateMassStorageInfoRemainingListChanged>) istream)
  "Deserializes a message object of type '<CommonCommonStateMassStorageInfoRemainingListChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'free_space)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'free_space)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'free_space)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'free_space)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rec_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rec_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'photo_remaining)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'photo_remaining)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'photo_remaining)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'photo_remaining)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonCommonStateMassStorageInfoRemainingListChanged>)))
  "Returns string type for a message object of type '<CommonCommonStateMassStorageInfoRemainingListChanged>"
  "bebop_msgs/CommonCommonStateMassStorageInfoRemainingListChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonCommonStateMassStorageInfoRemainingListChanged)))
  "Returns string type for a message object of type 'CommonCommonStateMassStorageInfoRemainingListChanged"
  "bebop_msgs/CommonCommonStateMassStorageInfoRemainingListChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonCommonStateMassStorageInfoRemainingListChanged>)))
  "Returns md5sum for a message object of type '<CommonCommonStateMassStorageInfoRemainingListChanged>"
  "2749dbbf018a8a51c35552e6e0aac2ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonCommonStateMassStorageInfoRemainingListChanged)))
  "Returns md5sum for a message object of type 'CommonCommonStateMassStorageInfoRemainingListChanged"
  "2749dbbf018a8a51c35552e6e0aac2ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonCommonStateMassStorageInfoRemainingListChanged>)))
  "Returns full string definition for message of type '<CommonCommonStateMassStorageInfoRemainingListChanged>"
  (cl:format cl:nil "# CommonCommonStateMassStorageInfoRemainingListChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Mass storage remaining data list.~%~%Header header~%~%# Mass storage free space in MBytes~%uint32 free_space~%# Mass storage record time reamining in minute~%uint16 rec_time~%# Mass storage photo remaining~%uint32 photo_remaining~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonCommonStateMassStorageInfoRemainingListChanged)))
  "Returns full string definition for message of type 'CommonCommonStateMassStorageInfoRemainingListChanged"
  (cl:format cl:nil "# CommonCommonStateMassStorageInfoRemainingListChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Mass storage remaining data list.~%~%Header header~%~%# Mass storage free space in MBytes~%uint32 free_space~%# Mass storage record time reamining in minute~%uint16 rec_time~%# Mass storage photo remaining~%uint32 photo_remaining~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonCommonStateMassStorageInfoRemainingListChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonCommonStateMassStorageInfoRemainingListChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonCommonStateMassStorageInfoRemainingListChanged
    (cl:cons ':header (header msg))
    (cl:cons ':free_space (free_space msg))
    (cl:cons ':rec_time (rec_time msg))
    (cl:cons ':photo_remaining (photo_remaining msg))
))
