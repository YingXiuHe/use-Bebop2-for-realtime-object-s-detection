; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonMavlinkStateMissionItemExecuted.msg.html

(cl:defclass <CommonMavlinkStateMissionItemExecuted> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (idx
    :reader idx
    :initarg :idx
    :type cl:integer
    :initform 0))
)

(cl:defclass CommonMavlinkStateMissionItemExecuted (<CommonMavlinkStateMissionItemExecuted>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonMavlinkStateMissionItemExecuted>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonMavlinkStateMissionItemExecuted)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonMavlinkStateMissionItemExecuted> is deprecated: use bebop_msgs-msg:CommonMavlinkStateMissionItemExecuted instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonMavlinkStateMissionItemExecuted>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'idx-val :lambda-list '(m))
(cl:defmethod idx-val ((m <CommonMavlinkStateMissionItemExecuted>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:idx-val is deprecated.  Use bebop_msgs-msg:idx instead.")
  (idx m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonMavlinkStateMissionItemExecuted>) ostream)
  "Serializes a message object of type '<CommonMavlinkStateMissionItemExecuted>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'idx)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonMavlinkStateMissionItemExecuted>) istream)
  "Deserializes a message object of type '<CommonMavlinkStateMissionItemExecuted>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'idx)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonMavlinkStateMissionItemExecuted>)))
  "Returns string type for a message object of type '<CommonMavlinkStateMissionItemExecuted>"
  "bebop_msgs/CommonMavlinkStateMissionItemExecuted")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonMavlinkStateMissionItemExecuted)))
  "Returns string type for a message object of type 'CommonMavlinkStateMissionItemExecuted"
  "bebop_msgs/CommonMavlinkStateMissionItemExecuted")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonMavlinkStateMissionItemExecuted>)))
  "Returns md5sum for a message object of type '<CommonMavlinkStateMissionItemExecuted>"
  "43f8b630624670ebf7b3ae671d2b84e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonMavlinkStateMissionItemExecuted)))
  "Returns md5sum for a message object of type 'CommonMavlinkStateMissionItemExecuted"
  "43f8b630624670ebf7b3ae671d2b84e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonMavlinkStateMissionItemExecuted>)))
  "Returns full string definition for message of type '<CommonMavlinkStateMissionItemExecuted>"
  (cl:format cl:nil "# CommonMavlinkStateMissionItemExecuted~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Mission item has been executed.~%~%Header header~%~%# Index of the mission item. This is the place of the mission item in the list of the items of the mission. Begins at 0.~%uint32 idx~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonMavlinkStateMissionItemExecuted)))
  "Returns full string definition for message of type 'CommonMavlinkStateMissionItemExecuted"
  (cl:format cl:nil "# CommonMavlinkStateMissionItemExecuted~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Mission item has been executed.~%~%Header header~%~%# Index of the mission item. This is the place of the mission item in the list of the items of the mission. Begins at 0.~%uint32 idx~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonMavlinkStateMissionItemExecuted>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonMavlinkStateMissionItemExecuted>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonMavlinkStateMissionItemExecuted
    (cl:cons ':header (header msg))
    (cl:cons ':idx (idx msg))
))
