; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonCommonStateWifiSignalChanged.msg.html

(cl:defclass <CommonCommonStateWifiSignalChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (rssi
    :reader rssi
    :initarg :rssi
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonCommonStateWifiSignalChanged (<CommonCommonStateWifiSignalChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonCommonStateWifiSignalChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonCommonStateWifiSignalChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonCommonStateWifiSignalChanged> is deprecated: use bebop_msgs-msg:CommonCommonStateWifiSignalChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonCommonStateWifiSignalChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rssi-val :lambda-list '(m))
(cl:defmethod rssi-val ((m <CommonCommonStateWifiSignalChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:rssi-val is deprecated.  Use bebop_msgs-msg:rssi instead.")
  (rssi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonCommonStateWifiSignalChanged>) ostream)
  "Serializes a message object of type '<CommonCommonStateWifiSignalChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'rssi)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonCommonStateWifiSignalChanged>) istream)
  "Deserializes a message object of type '<CommonCommonStateWifiSignalChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rssi) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonCommonStateWifiSignalChanged>)))
  "Returns string type for a message object of type '<CommonCommonStateWifiSignalChanged>"
  "bebop_msgs/CommonCommonStateWifiSignalChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonCommonStateWifiSignalChanged)))
  "Returns string type for a message object of type 'CommonCommonStateWifiSignalChanged"
  "bebop_msgs/CommonCommonStateWifiSignalChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonCommonStateWifiSignalChanged>)))
  "Returns md5sum for a message object of type '<CommonCommonStateWifiSignalChanged>"
  "ad96f0dce593efdfb07802778d15cae9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonCommonStateWifiSignalChanged)))
  "Returns md5sum for a message object of type 'CommonCommonStateWifiSignalChanged"
  "ad96f0dce593efdfb07802778d15cae9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonCommonStateWifiSignalChanged>)))
  "Returns full string definition for message of type '<CommonCommonStateWifiSignalChanged>"
  (cl:format cl:nil "# CommonCommonStateWifiSignalChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Rssi (Wifi Signal between controller and product) changed.~%~%Header header~%~%# RSSI of the signal between controller and the product (in dbm)~%int16 rssi~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonCommonStateWifiSignalChanged)))
  "Returns full string definition for message of type 'CommonCommonStateWifiSignalChanged"
  (cl:format cl:nil "# CommonCommonStateWifiSignalChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Rssi (Wifi Signal between controller and product) changed.~%~%Header header~%~%# RSSI of the signal between controller and the product (in dbm)~%int16 rssi~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonCommonStateWifiSignalChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonCommonStateWifiSignalChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonCommonStateWifiSignalChanged
    (cl:cons ':header (header msg))
    (cl:cons ':rssi (rssi msg))
))
