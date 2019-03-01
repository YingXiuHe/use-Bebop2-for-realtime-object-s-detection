; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3NetworkStateAllWifiAuthChannelChanged.msg.html

(cl:defclass <Ardrone3NetworkStateAllWifiAuthChannelChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header)))
)

(cl:defclass Ardrone3NetworkStateAllWifiAuthChannelChanged (<Ardrone3NetworkStateAllWifiAuthChannelChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3NetworkStateAllWifiAuthChannelChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3NetworkStateAllWifiAuthChannelChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3NetworkStateAllWifiAuthChannelChanged> is deprecated: use bebop_msgs-msg:Ardrone3NetworkStateAllWifiAuthChannelChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3NetworkStateAllWifiAuthChannelChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3NetworkStateAllWifiAuthChannelChanged>) ostream)
  "Serializes a message object of type '<Ardrone3NetworkStateAllWifiAuthChannelChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3NetworkStateAllWifiAuthChannelChanged>) istream)
  "Deserializes a message object of type '<Ardrone3NetworkStateAllWifiAuthChannelChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3NetworkStateAllWifiAuthChannelChanged>)))
  "Returns string type for a message object of type '<Ardrone3NetworkStateAllWifiAuthChannelChanged>"
  "bebop_msgs/Ardrone3NetworkStateAllWifiAuthChannelChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3NetworkStateAllWifiAuthChannelChanged)))
  "Returns string type for a message object of type 'Ardrone3NetworkStateAllWifiAuthChannelChanged"
  "bebop_msgs/Ardrone3NetworkStateAllWifiAuthChannelChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3NetworkStateAllWifiAuthChannelChanged>)))
  "Returns md5sum for a message object of type '<Ardrone3NetworkStateAllWifiAuthChannelChanged>"
  "d7be0bb39af8fb9129d5a76e6b63a290")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3NetworkStateAllWifiAuthChannelChanged)))
  "Returns md5sum for a message object of type 'Ardrone3NetworkStateAllWifiAuthChannelChanged"
  "d7be0bb39af8fb9129d5a76e6b63a290")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3NetworkStateAllWifiAuthChannelChanged>)))
  "Returns full string definition for message of type '<Ardrone3NetworkStateAllWifiAuthChannelChanged>"
  (cl:format cl:nil "# Ardrone3NetworkStateAllWifiAuthChannelChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Available wifi channels completed.\\n When receiving this event, the list of [AvailableWifiChannels](#1-14-2) is complete.~%~%Header header~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3NetworkStateAllWifiAuthChannelChanged)))
  "Returns full string definition for message of type 'Ardrone3NetworkStateAllWifiAuthChannelChanged"
  (cl:format cl:nil "# Ardrone3NetworkStateAllWifiAuthChannelChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Available wifi channels completed.\\n When receiving this event, the list of [AvailableWifiChannels](#1-14-2) is complete.~%~%Header header~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3NetworkStateAllWifiAuthChannelChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3NetworkStateAllWifiAuthChannelChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3NetworkStateAllWifiAuthChannelChanged
    (cl:cons ':header (header msg))
))
