; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonRunStateRunIdChanged.msg.html

(cl:defclass <CommonRunStateRunIdChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (runId
    :reader runId
    :initarg :runId
    :type cl:string
    :initform ""))
)

(cl:defclass CommonRunStateRunIdChanged (<CommonRunStateRunIdChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonRunStateRunIdChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonRunStateRunIdChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonRunStateRunIdChanged> is deprecated: use bebop_msgs-msg:CommonRunStateRunIdChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonRunStateRunIdChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'runId-val :lambda-list '(m))
(cl:defmethod runId-val ((m <CommonRunStateRunIdChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:runId-val is deprecated.  Use bebop_msgs-msg:runId instead.")
  (runId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonRunStateRunIdChanged>) ostream)
  "Serializes a message object of type '<CommonRunStateRunIdChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'runId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'runId))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonRunStateRunIdChanged>) istream)
  "Deserializes a message object of type '<CommonRunStateRunIdChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'runId) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'runId) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonRunStateRunIdChanged>)))
  "Returns string type for a message object of type '<CommonRunStateRunIdChanged>"
  "bebop_msgs/CommonRunStateRunIdChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonRunStateRunIdChanged)))
  "Returns string type for a message object of type 'CommonRunStateRunIdChanged"
  "bebop_msgs/CommonRunStateRunIdChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonRunStateRunIdChanged>)))
  "Returns md5sum for a message object of type '<CommonRunStateRunIdChanged>"
  "b7ac1570fb76100e35b4cf4959b304cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonRunStateRunIdChanged)))
  "Returns md5sum for a message object of type 'CommonRunStateRunIdChanged"
  "b7ac1570fb76100e35b4cf4959b304cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonRunStateRunIdChanged>)))
  "Returns full string definition for message of type '<CommonRunStateRunIdChanged>"
  (cl:format cl:nil "# CommonRunStateRunIdChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Current run id.\\n A run id is uniquely identifying a run or a flight.\\n For each run is generated on the drone a file which can be used by Academy to sum up the run.\\n Also, each medias taken during a run has a filename containing the run id.~%~%Header header~%~%# Id of the run~%string runId~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonRunStateRunIdChanged)))
  "Returns full string definition for message of type 'CommonRunStateRunIdChanged"
  (cl:format cl:nil "# CommonRunStateRunIdChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Current run id.\\n A run id is uniquely identifying a run or a flight.\\n For each run is generated on the drone a file which can be used by Academy to sum up the run.\\n Also, each medias taken during a run has a filename containing the run id.~%~%Header header~%~%# Id of the run~%string runId~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonRunStateRunIdChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'runId))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonRunStateRunIdChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonRunStateRunIdChanged
    (cl:cons ':header (header msg))
    (cl:cons ':runId (runId msg))
))
