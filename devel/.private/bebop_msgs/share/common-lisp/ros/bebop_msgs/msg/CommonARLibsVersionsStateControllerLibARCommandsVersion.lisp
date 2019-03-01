; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonARLibsVersionsStateControllerLibARCommandsVersion.msg.html

(cl:defclass <CommonARLibsVersionsStateControllerLibARCommandsVersion> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (version
    :reader version
    :initarg :version
    :type cl:string
    :initform ""))
)

(cl:defclass CommonARLibsVersionsStateControllerLibARCommandsVersion (<CommonARLibsVersionsStateControllerLibARCommandsVersion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonARLibsVersionsStateControllerLibARCommandsVersion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonARLibsVersionsStateControllerLibARCommandsVersion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonARLibsVersionsStateControllerLibARCommandsVersion> is deprecated: use bebop_msgs-msg:CommonARLibsVersionsStateControllerLibARCommandsVersion instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonARLibsVersionsStateControllerLibARCommandsVersion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <CommonARLibsVersionsStateControllerLibARCommandsVersion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:version-val is deprecated.  Use bebop_msgs-msg:version instead.")
  (version m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonARLibsVersionsStateControllerLibARCommandsVersion>) ostream)
  "Serializes a message object of type '<CommonARLibsVersionsStateControllerLibARCommandsVersion>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'version))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonARLibsVersionsStateControllerLibARCommandsVersion>) istream)
  "Deserializes a message object of type '<CommonARLibsVersionsStateControllerLibARCommandsVersion>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonARLibsVersionsStateControllerLibARCommandsVersion>)))
  "Returns string type for a message object of type '<CommonARLibsVersionsStateControllerLibARCommandsVersion>"
  "bebop_msgs/CommonARLibsVersionsStateControllerLibARCommandsVersion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonARLibsVersionsStateControllerLibARCommandsVersion)))
  "Returns string type for a message object of type 'CommonARLibsVersionsStateControllerLibARCommandsVersion"
  "bebop_msgs/CommonARLibsVersionsStateControllerLibARCommandsVersion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonARLibsVersionsStateControllerLibARCommandsVersion>)))
  "Returns md5sum for a message object of type '<CommonARLibsVersionsStateControllerLibARCommandsVersion>"
  "5c334c4f3ab8d1ba8b608eeadaa52a06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonARLibsVersionsStateControllerLibARCommandsVersion)))
  "Returns md5sum for a message object of type 'CommonARLibsVersionsStateControllerLibARCommandsVersion"
  "5c334c4f3ab8d1ba8b608eeadaa52a06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonARLibsVersionsStateControllerLibARCommandsVersion>)))
  "Returns full string definition for message of type '<CommonARLibsVersionsStateControllerLibARCommandsVersion>"
  (cl:format cl:nil "# CommonARLibsVersionsStateControllerLibARCommandsVersion~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: ~%~%Header header~%~%# version of libARCommands (1.2.3.4 format)~%string version~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonARLibsVersionsStateControllerLibARCommandsVersion)))
  "Returns full string definition for message of type 'CommonARLibsVersionsStateControllerLibARCommandsVersion"
  (cl:format cl:nil "# CommonARLibsVersionsStateControllerLibARCommandsVersion~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: ~%~%Header header~%~%# version of libARCommands (1.2.3.4 format)~%string version~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonARLibsVersionsStateControllerLibARCommandsVersion>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'version))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonARLibsVersionsStateControllerLibARCommandsVersion>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonARLibsVersionsStateControllerLibARCommandsVersion
    (cl:cons ':header (header msg))
    (cl:cons ':version (version msg))
))
