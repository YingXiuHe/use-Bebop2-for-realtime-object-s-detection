; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3NetworkStateAllWifiScanChanged.msg.html

(cl:defclass <Ardrone3NetworkStateAllWifiScanChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header)))
)

(cl:defclass Ardrone3NetworkStateAllWifiScanChanged (<Ardrone3NetworkStateAllWifiScanChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3NetworkStateAllWifiScanChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3NetworkStateAllWifiScanChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3NetworkStateAllWifiScanChanged> is deprecated: use bebop_msgs-msg:Ardrone3NetworkStateAllWifiScanChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3NetworkStateAllWifiScanChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3NetworkStateAllWifiScanChanged>) ostream)
  "Serializes a message object of type '<Ardrone3NetworkStateAllWifiScanChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3NetworkStateAllWifiScanChanged>) istream)
  "Deserializes a message object of type '<Ardrone3NetworkStateAllWifiScanChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3NetworkStateAllWifiScanChanged>)))
  "Returns string type for a message object of type '<Ardrone3NetworkStateAllWifiScanChanged>"
  "bebop_msgs/Ardrone3NetworkStateAllWifiScanChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3NetworkStateAllWifiScanChanged)))
  "Returns string type for a message object of type 'Ardrone3NetworkStateAllWifiScanChanged"
  "bebop_msgs/Ardrone3NetworkStateAllWifiScanChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3NetworkStateAllWifiScanChanged>)))
  "Returns md5sum for a message object of type '<Ardrone3NetworkStateAllWifiScanChanged>"
  "d7be0bb39af8fb9129d5a76e6b63a290")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3NetworkStateAllWifiScanChanged)))
  "Returns md5sum for a message object of type 'Ardrone3NetworkStateAllWifiScanChanged"
  "d7be0bb39af8fb9129d5a76e6b63a290")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3NetworkStateAllWifiScanChanged>)))
  "Returns full string definition for message of type '<Ardrone3NetworkStateAllWifiScanChanged>"
  (cl:format cl:nil "# Ardrone3NetworkStateAllWifiScanChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Wifi scan ended.\\n When receiving this event, the list of [WifiScanResults](#1-14-0) is complete.~%~%Header header~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3NetworkStateAllWifiScanChanged)))
  "Returns full string definition for message of type 'Ardrone3NetworkStateAllWifiScanChanged"
  (cl:format cl:nil "# Ardrone3NetworkStateAllWifiScanChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Wifi scan ended.\\n When receiving this event, the list of [WifiScanResults](#1-14-0) is complete.~%~%Header header~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3NetworkStateAllWifiScanChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3NetworkStateAllWifiScanChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3NetworkStateAllWifiScanChanged
    (cl:cons ':header (header msg))
))
