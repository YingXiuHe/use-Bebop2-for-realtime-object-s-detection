; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonOverHeatStateOverHeatChanged.msg.html

(cl:defclass <CommonOverHeatStateOverHeatChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header)))
)

(cl:defclass CommonOverHeatStateOverHeatChanged (<CommonOverHeatStateOverHeatChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonOverHeatStateOverHeatChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonOverHeatStateOverHeatChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonOverHeatStateOverHeatChanged> is deprecated: use bebop_msgs-msg:CommonOverHeatStateOverHeatChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonOverHeatStateOverHeatChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonOverHeatStateOverHeatChanged>) ostream)
  "Serializes a message object of type '<CommonOverHeatStateOverHeatChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonOverHeatStateOverHeatChanged>) istream)
  "Deserializes a message object of type '<CommonOverHeatStateOverHeatChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonOverHeatStateOverHeatChanged>)))
  "Returns string type for a message object of type '<CommonOverHeatStateOverHeatChanged>"
  "bebop_msgs/CommonOverHeatStateOverHeatChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonOverHeatStateOverHeatChanged)))
  "Returns string type for a message object of type 'CommonOverHeatStateOverHeatChanged"
  "bebop_msgs/CommonOverHeatStateOverHeatChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonOverHeatStateOverHeatChanged>)))
  "Returns md5sum for a message object of type '<CommonOverHeatStateOverHeatChanged>"
  "d7be0bb39af8fb9129d5a76e6b63a290")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonOverHeatStateOverHeatChanged)))
  "Returns md5sum for a message object of type 'CommonOverHeatStateOverHeatChanged"
  "d7be0bb39af8fb9129d5a76e6b63a290")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonOverHeatStateOverHeatChanged>)))
  "Returns full string definition for message of type '<CommonOverHeatStateOverHeatChanged>"
  (cl:format cl:nil "# CommonOverHeatStateOverHeatChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Overheat temperature reached.~%~%Header header~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonOverHeatStateOverHeatChanged)))
  "Returns full string definition for message of type 'CommonOverHeatStateOverHeatChanged"
  (cl:format cl:nil "# CommonOverHeatStateOverHeatChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Overheat temperature reached.~%~%Header header~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonOverHeatStateOverHeatChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonOverHeatStateOverHeatChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonOverHeatStateOverHeatChanged
    (cl:cons ':header (header msg))
))
