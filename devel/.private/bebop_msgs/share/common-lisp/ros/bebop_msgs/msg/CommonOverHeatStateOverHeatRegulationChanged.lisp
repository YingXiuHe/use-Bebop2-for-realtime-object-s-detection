; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonOverHeatStateOverHeatRegulationChanged.msg.html

(cl:defclass <CommonOverHeatStateOverHeatRegulationChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (regulationType
    :reader regulationType
    :initarg :regulationType
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonOverHeatStateOverHeatRegulationChanged (<CommonOverHeatStateOverHeatRegulationChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonOverHeatStateOverHeatRegulationChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonOverHeatStateOverHeatRegulationChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonOverHeatStateOverHeatRegulationChanged> is deprecated: use bebop_msgs-msg:CommonOverHeatStateOverHeatRegulationChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonOverHeatStateOverHeatRegulationChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'regulationType-val :lambda-list '(m))
(cl:defmethod regulationType-val ((m <CommonOverHeatStateOverHeatRegulationChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:regulationType-val is deprecated.  Use bebop_msgs-msg:regulationType instead.")
  (regulationType m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonOverHeatStateOverHeatRegulationChanged>) ostream)
  "Serializes a message object of type '<CommonOverHeatStateOverHeatRegulationChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'regulationType)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonOverHeatStateOverHeatRegulationChanged>) istream)
  "Deserializes a message object of type '<CommonOverHeatStateOverHeatRegulationChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'regulationType)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonOverHeatStateOverHeatRegulationChanged>)))
  "Returns string type for a message object of type '<CommonOverHeatStateOverHeatRegulationChanged>"
  "bebop_msgs/CommonOverHeatStateOverHeatRegulationChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonOverHeatStateOverHeatRegulationChanged)))
  "Returns string type for a message object of type 'CommonOverHeatStateOverHeatRegulationChanged"
  "bebop_msgs/CommonOverHeatStateOverHeatRegulationChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonOverHeatStateOverHeatRegulationChanged>)))
  "Returns md5sum for a message object of type '<CommonOverHeatStateOverHeatRegulationChanged>"
  "bf8d95b38ecdac1938cfe7740e96d4c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonOverHeatStateOverHeatRegulationChanged)))
  "Returns md5sum for a message object of type 'CommonOverHeatStateOverHeatRegulationChanged"
  "bf8d95b38ecdac1938cfe7740e96d4c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonOverHeatStateOverHeatRegulationChanged>)))
  "Returns full string definition for message of type '<CommonOverHeatStateOverHeatRegulationChanged>"
  (cl:format cl:nil "# CommonOverHeatStateOverHeatRegulationChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Overheat regulation type.~%~%Header header~%~%# Type of overheat regulation : 0 for ventilation, 1 for switch off~%uint8 regulationType~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonOverHeatStateOverHeatRegulationChanged)))
  "Returns full string definition for message of type 'CommonOverHeatStateOverHeatRegulationChanged"
  (cl:format cl:nil "# CommonOverHeatStateOverHeatRegulationChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Overheat regulation type.~%~%Header header~%~%# Type of overheat regulation : 0 for ventilation, 1 for switch off~%uint8 regulationType~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonOverHeatStateOverHeatRegulationChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonOverHeatStateOverHeatRegulationChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonOverHeatStateOverHeatRegulationChanged
    (cl:cons ':header (header msg))
    (cl:cons ':regulationType (regulationType msg))
))
