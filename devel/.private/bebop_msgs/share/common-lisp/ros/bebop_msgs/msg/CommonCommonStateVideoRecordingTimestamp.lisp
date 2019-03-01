; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonCommonStateVideoRecordingTimestamp.msg.html

(cl:defclass <CommonCommonStateVideoRecordingTimestamp> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (startTimestamp
    :reader startTimestamp
    :initarg :startTimestamp
    :type cl:integer
    :initform 0)
   (stopTimestamp
    :reader stopTimestamp
    :initarg :stopTimestamp
    :type cl:integer
    :initform 0))
)

(cl:defclass CommonCommonStateVideoRecordingTimestamp (<CommonCommonStateVideoRecordingTimestamp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonCommonStateVideoRecordingTimestamp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonCommonStateVideoRecordingTimestamp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonCommonStateVideoRecordingTimestamp> is deprecated: use bebop_msgs-msg:CommonCommonStateVideoRecordingTimestamp instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonCommonStateVideoRecordingTimestamp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'startTimestamp-val :lambda-list '(m))
(cl:defmethod startTimestamp-val ((m <CommonCommonStateVideoRecordingTimestamp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:startTimestamp-val is deprecated.  Use bebop_msgs-msg:startTimestamp instead.")
  (startTimestamp m))

(cl:ensure-generic-function 'stopTimestamp-val :lambda-list '(m))
(cl:defmethod stopTimestamp-val ((m <CommonCommonStateVideoRecordingTimestamp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:stopTimestamp-val is deprecated.  Use bebop_msgs-msg:stopTimestamp instead.")
  (stopTimestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonCommonStateVideoRecordingTimestamp>) ostream)
  "Serializes a message object of type '<CommonCommonStateVideoRecordingTimestamp>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'startTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'startTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'startTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'startTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'startTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'startTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'startTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'startTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stopTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stopTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'stopTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'stopTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'stopTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'stopTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'stopTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'stopTimestamp)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonCommonStateVideoRecordingTimestamp>) istream)
  "Deserializes a message object of type '<CommonCommonStateVideoRecordingTimestamp>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'startTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'startTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'startTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'startTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'startTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'startTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'startTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'startTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stopTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stopTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'stopTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'stopTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'stopTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'stopTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'stopTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'stopTimestamp)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonCommonStateVideoRecordingTimestamp>)))
  "Returns string type for a message object of type '<CommonCommonStateVideoRecordingTimestamp>"
  "bebop_msgs/CommonCommonStateVideoRecordingTimestamp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonCommonStateVideoRecordingTimestamp)))
  "Returns string type for a message object of type 'CommonCommonStateVideoRecordingTimestamp"
  "bebop_msgs/CommonCommonStateVideoRecordingTimestamp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonCommonStateVideoRecordingTimestamp>)))
  "Returns md5sum for a message object of type '<CommonCommonStateVideoRecordingTimestamp>"
  "2af0a016042e73c407f0fbf66360342c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonCommonStateVideoRecordingTimestamp)))
  "Returns md5sum for a message object of type 'CommonCommonStateVideoRecordingTimestamp"
  "2af0a016042e73c407f0fbf66360342c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonCommonStateVideoRecordingTimestamp>)))
  "Returns full string definition for message of type '<CommonCommonStateVideoRecordingTimestamp>"
  (cl:format cl:nil "# CommonCommonStateVideoRecordingTimestamp~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Current or last video recording timestamp.\\n Timestamp in milliseconds since 00:00:00 UTC on 1 January 1970.\\n **Please note that values dont persist after drone reboot**~%~%Header header~%~%# Timestamp in milliseconds since 00:00:00 UTC on 1 January 1970.~%uint64 startTimestamp~%# Timestamp in milliseconds since 00:00:00 UTC on 1 January 1970. 0 mean that video is still recording.~%uint64 stopTimestamp~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonCommonStateVideoRecordingTimestamp)))
  "Returns full string definition for message of type 'CommonCommonStateVideoRecordingTimestamp"
  (cl:format cl:nil "# CommonCommonStateVideoRecordingTimestamp~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Current or last video recording timestamp.\\n Timestamp in milliseconds since 00:00:00 UTC on 1 January 1970.\\n **Please note that values dont persist after drone reboot**~%~%Header header~%~%# Timestamp in milliseconds since 00:00:00 UTC on 1 January 1970.~%uint64 startTimestamp~%# Timestamp in milliseconds since 00:00:00 UTC on 1 January 1970. 0 mean that video is still recording.~%uint64 stopTimestamp~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonCommonStateVideoRecordingTimestamp>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonCommonStateVideoRecordingTimestamp>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonCommonStateVideoRecordingTimestamp
    (cl:cons ':header (header msg))
    (cl:cons ':startTimestamp (startTimestamp msg))
    (cl:cons ':stopTimestamp (stopTimestamp msg))
))
