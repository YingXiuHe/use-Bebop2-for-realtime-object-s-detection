; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonCommonStateCurrentDateChanged.msg.html

(cl:defclass <CommonCommonStateCurrentDateChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (date
    :reader date
    :initarg :date
    :type cl:string
    :initform ""))
)

(cl:defclass CommonCommonStateCurrentDateChanged (<CommonCommonStateCurrentDateChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonCommonStateCurrentDateChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonCommonStateCurrentDateChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonCommonStateCurrentDateChanged> is deprecated: use bebop_msgs-msg:CommonCommonStateCurrentDateChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonCommonStateCurrentDateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'date-val :lambda-list '(m))
(cl:defmethod date-val ((m <CommonCommonStateCurrentDateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:date-val is deprecated.  Use bebop_msgs-msg:date instead.")
  (date m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonCommonStateCurrentDateChanged>) ostream)
  "Serializes a message object of type '<CommonCommonStateCurrentDateChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'date))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'date))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonCommonStateCurrentDateChanged>) istream)
  "Deserializes a message object of type '<CommonCommonStateCurrentDateChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'date) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'date) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonCommonStateCurrentDateChanged>)))
  "Returns string type for a message object of type '<CommonCommonStateCurrentDateChanged>"
  "bebop_msgs/CommonCommonStateCurrentDateChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonCommonStateCurrentDateChanged)))
  "Returns string type for a message object of type 'CommonCommonStateCurrentDateChanged"
  "bebop_msgs/CommonCommonStateCurrentDateChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonCommonStateCurrentDateChanged>)))
  "Returns md5sum for a message object of type '<CommonCommonStateCurrentDateChanged>"
  "7b1c2ad09d95986b33cc46dd275d6aad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonCommonStateCurrentDateChanged)))
  "Returns md5sum for a message object of type 'CommonCommonStateCurrentDateChanged"
  "7b1c2ad09d95986b33cc46dd275d6aad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonCommonStateCurrentDateChanged>)))
  "Returns full string definition for message of type '<CommonCommonStateCurrentDateChanged>"
  (cl:format cl:nil "# CommonCommonStateCurrentDateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Date changed.\\n Corresponds to the latest date set on the drone.\\n\\n **Please note that you should not care about this event if you are using the libARController API as this library is handling the connection process for you.**~%~%Header header~%~%# Date with ISO-8601 format~%string date~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonCommonStateCurrentDateChanged)))
  "Returns full string definition for message of type 'CommonCommonStateCurrentDateChanged"
  (cl:format cl:nil "# CommonCommonStateCurrentDateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Date changed.\\n Corresponds to the latest date set on the drone.\\n\\n **Please note that you should not care about this event if you are using the libARController API as this library is handling the connection process for you.**~%~%Header header~%~%# Date with ISO-8601 format~%string date~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonCommonStateCurrentDateChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'date))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonCommonStateCurrentDateChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonCommonStateCurrentDateChanged
    (cl:cons ':header (header msg))
    (cl:cons ':date (date msg))
))
