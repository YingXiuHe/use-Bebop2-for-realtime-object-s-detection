; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonAccessoryStateAccessoryConfigModificationEnabled.msg.html

(cl:defclass <CommonAccessoryStateAccessoryConfigModificationEnabled> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (enabled
    :reader enabled
    :initarg :enabled
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonAccessoryStateAccessoryConfigModificationEnabled (<CommonAccessoryStateAccessoryConfigModificationEnabled>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonAccessoryStateAccessoryConfigModificationEnabled>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonAccessoryStateAccessoryConfigModificationEnabled)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonAccessoryStateAccessoryConfigModificationEnabled> is deprecated: use bebop_msgs-msg:CommonAccessoryStateAccessoryConfigModificationEnabled instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonAccessoryStateAccessoryConfigModificationEnabled>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <CommonAccessoryStateAccessoryConfigModificationEnabled>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:enabled-val is deprecated.  Use bebop_msgs-msg:enabled instead.")
  (enabled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonAccessoryStateAccessoryConfigModificationEnabled>) ostream)
  "Serializes a message object of type '<CommonAccessoryStateAccessoryConfigModificationEnabled>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enabled)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonAccessoryStateAccessoryConfigModificationEnabled>) istream)
  "Deserializes a message object of type '<CommonAccessoryStateAccessoryConfigModificationEnabled>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enabled)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonAccessoryStateAccessoryConfigModificationEnabled>)))
  "Returns string type for a message object of type '<CommonAccessoryStateAccessoryConfigModificationEnabled>"
  "bebop_msgs/CommonAccessoryStateAccessoryConfigModificationEnabled")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonAccessoryStateAccessoryConfigModificationEnabled)))
  "Returns string type for a message object of type 'CommonAccessoryStateAccessoryConfigModificationEnabled"
  "bebop_msgs/CommonAccessoryStateAccessoryConfigModificationEnabled")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonAccessoryStateAccessoryConfigModificationEnabled>)))
  "Returns md5sum for a message object of type '<CommonAccessoryStateAccessoryConfigModificationEnabled>"
  "fce93efbb8b61357f131a1998ab02e91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonAccessoryStateAccessoryConfigModificationEnabled)))
  "Returns md5sum for a message object of type 'CommonAccessoryStateAccessoryConfigModificationEnabled"
  "fce93efbb8b61357f131a1998ab02e91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonAccessoryStateAccessoryConfigModificationEnabled>)))
  "Returns full string definition for message of type '<CommonAccessoryStateAccessoryConfigModificationEnabled>"
  (cl:format cl:nil "# CommonAccessoryStateAccessoryConfigModificationEnabled~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Availability to declare or not an accessory.~%~%Header header~%~%# 1 if the modification of the accessory Config is enabled, 0 otherwise~%uint8 enabled~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonAccessoryStateAccessoryConfigModificationEnabled)))
  "Returns full string definition for message of type 'CommonAccessoryStateAccessoryConfigModificationEnabled"
  (cl:format cl:nil "# CommonAccessoryStateAccessoryConfigModificationEnabled~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Availability to declare or not an accessory.~%~%Header header~%~%# 1 if the modification of the accessory Config is enabled, 0 otherwise~%uint8 enabled~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonAccessoryStateAccessoryConfigModificationEnabled>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonAccessoryStateAccessoryConfigModificationEnabled>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonAccessoryStateAccessoryConfigModificationEnabled
    (cl:cons ':header (header msg))
    (cl:cons ':enabled (enabled msg))
))
