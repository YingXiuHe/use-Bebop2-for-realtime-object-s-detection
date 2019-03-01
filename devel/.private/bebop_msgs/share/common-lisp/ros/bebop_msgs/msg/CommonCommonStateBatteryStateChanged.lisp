; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonCommonStateBatteryStateChanged.msg.html

(cl:defclass <CommonCommonStateBatteryStateChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (percent
    :reader percent
    :initarg :percent
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonCommonStateBatteryStateChanged (<CommonCommonStateBatteryStateChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonCommonStateBatteryStateChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonCommonStateBatteryStateChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonCommonStateBatteryStateChanged> is deprecated: use bebop_msgs-msg:CommonCommonStateBatteryStateChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonCommonStateBatteryStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'percent-val :lambda-list '(m))
(cl:defmethod percent-val ((m <CommonCommonStateBatteryStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:percent-val is deprecated.  Use bebop_msgs-msg:percent instead.")
  (percent m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonCommonStateBatteryStateChanged>) ostream)
  "Serializes a message object of type '<CommonCommonStateBatteryStateChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'percent)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonCommonStateBatteryStateChanged>) istream)
  "Deserializes a message object of type '<CommonCommonStateBatteryStateChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'percent)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonCommonStateBatteryStateChanged>)))
  "Returns string type for a message object of type '<CommonCommonStateBatteryStateChanged>"
  "bebop_msgs/CommonCommonStateBatteryStateChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonCommonStateBatteryStateChanged)))
  "Returns string type for a message object of type 'CommonCommonStateBatteryStateChanged"
  "bebop_msgs/CommonCommonStateBatteryStateChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonCommonStateBatteryStateChanged>)))
  "Returns md5sum for a message object of type '<CommonCommonStateBatteryStateChanged>"
  "951b528c732f1981c7e11a1c57775136")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonCommonStateBatteryStateChanged)))
  "Returns md5sum for a message object of type 'CommonCommonStateBatteryStateChanged"
  "951b528c732f1981c7e11a1c57775136")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonCommonStateBatteryStateChanged>)))
  "Returns full string definition for message of type '<CommonCommonStateBatteryStateChanged>"
  (cl:format cl:nil "# CommonCommonStateBatteryStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Battery state.~%~%Header header~%~%# Battery percentage~%uint8 percent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonCommonStateBatteryStateChanged)))
  "Returns full string definition for message of type 'CommonCommonStateBatteryStateChanged"
  (cl:format cl:nil "# CommonCommonStateBatteryStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Battery state.~%~%Header header~%~%# Battery percentage~%uint8 percent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonCommonStateBatteryStateChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonCommonStateBatteryStateChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonCommonStateBatteryStateChanged
    (cl:cons ':header (header msg))
    (cl:cons ':percent (percent msg))
))
