; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonCommonStateCurrentTimeChanged.msg.html

(cl:defclass <CommonCommonStateCurrentTimeChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time
    :reader time
    :initarg :time
    :type cl:string
    :initform ""))
)

(cl:defclass CommonCommonStateCurrentTimeChanged (<CommonCommonStateCurrentTimeChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonCommonStateCurrentTimeChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonCommonStateCurrentTimeChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonCommonStateCurrentTimeChanged> is deprecated: use bebop_msgs-msg:CommonCommonStateCurrentTimeChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonCommonStateCurrentTimeChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <CommonCommonStateCurrentTimeChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:time-val is deprecated.  Use bebop_msgs-msg:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonCommonStateCurrentTimeChanged>) ostream)
  "Serializes a message object of type '<CommonCommonStateCurrentTimeChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonCommonStateCurrentTimeChanged>) istream)
  "Deserializes a message object of type '<CommonCommonStateCurrentTimeChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonCommonStateCurrentTimeChanged>)))
  "Returns string type for a message object of type '<CommonCommonStateCurrentTimeChanged>"
  "bebop_msgs/CommonCommonStateCurrentTimeChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonCommonStateCurrentTimeChanged)))
  "Returns string type for a message object of type 'CommonCommonStateCurrentTimeChanged"
  "bebop_msgs/CommonCommonStateCurrentTimeChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonCommonStateCurrentTimeChanged>)))
  "Returns md5sum for a message object of type '<CommonCommonStateCurrentTimeChanged>"
  "5efc9584d0b45a4422ec41d222235ff2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonCommonStateCurrentTimeChanged)))
  "Returns md5sum for a message object of type 'CommonCommonStateCurrentTimeChanged"
  "5efc9584d0b45a4422ec41d222235ff2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonCommonStateCurrentTimeChanged>)))
  "Returns full string definition for message of type '<CommonCommonStateCurrentTimeChanged>"
  (cl:format cl:nil "# CommonCommonStateCurrentTimeChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Time changed.\\n Corresponds to the latest time set on the drone.\\n\\n **Please note that you should not care about this event if you are using the libARController API as this library is handling the connection process for you.**~%~%Header header~%~%# Time with ISO-8601 format~%string time~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonCommonStateCurrentTimeChanged)))
  "Returns full string definition for message of type 'CommonCommonStateCurrentTimeChanged"
  (cl:format cl:nil "# CommonCommonStateCurrentTimeChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Time changed.\\n Corresponds to the latest time set on the drone.\\n\\n **Please note that you should not care about this event if you are using the libARController API as this library is handling the connection process for you.**~%~%Header header~%~%# Time with ISO-8601 format~%string time~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonCommonStateCurrentTimeChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonCommonStateCurrentTimeChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonCommonStateCurrentTimeChanged
    (cl:cons ':header (header msg))
    (cl:cons ':time (time msg))
))
