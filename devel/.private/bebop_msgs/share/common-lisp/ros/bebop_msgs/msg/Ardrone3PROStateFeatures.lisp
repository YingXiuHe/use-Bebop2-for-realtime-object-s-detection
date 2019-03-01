; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3PROStateFeatures.msg.html

(cl:defclass <Ardrone3PROStateFeatures> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (features
    :reader features
    :initarg :features
    :type cl:integer
    :initform 0))
)

(cl:defclass Ardrone3PROStateFeatures (<Ardrone3PROStateFeatures>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3PROStateFeatures>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3PROStateFeatures)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3PROStateFeatures> is deprecated: use bebop_msgs-msg:Ardrone3PROStateFeatures instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3PROStateFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'features-val :lambda-list '(m))
(cl:defmethod features-val ((m <Ardrone3PROStateFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:features-val is deprecated.  Use bebop_msgs-msg:features instead.")
  (features m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3PROStateFeatures>) ostream)
  "Serializes a message object of type '<Ardrone3PROStateFeatures>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'features)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'features)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'features)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'features)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'features)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'features)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'features)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'features)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3PROStateFeatures>) istream)
  "Deserializes a message object of type '<Ardrone3PROStateFeatures>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'features)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'features)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'features)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'features)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'features)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'features)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'features)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'features)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3PROStateFeatures>)))
  "Returns string type for a message object of type '<Ardrone3PROStateFeatures>"
  "bebop_msgs/Ardrone3PROStateFeatures")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3PROStateFeatures)))
  "Returns string type for a message object of type 'Ardrone3PROStateFeatures"
  "bebop_msgs/Ardrone3PROStateFeatures")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3PROStateFeatures>)))
  "Returns md5sum for a message object of type '<Ardrone3PROStateFeatures>"
  "46f306a2a04707d5805d22a04d72b46e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3PROStateFeatures)))
  "Returns md5sum for a message object of type 'Ardrone3PROStateFeatures"
  "46f306a2a04707d5805d22a04d72b46e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3PROStateFeatures>)))
  "Returns full string definition for message of type '<Ardrone3PROStateFeatures>"
  (cl:format cl:nil "# Ardrone3PROStateFeatures~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Pro features.~%~%Header header~%~%# Bitfield representing enabled features.~%uint64 features~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3PROStateFeatures)))
  "Returns full string definition for message of type 'Ardrone3PROStateFeatures"
  (cl:format cl:nil "# Ardrone3PROStateFeatures~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Pro features.~%~%Header header~%~%# Bitfield representing enabled features.~%uint64 features~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3PROStateFeatures>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3PROStateFeatures>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3PROStateFeatures
    (cl:cons ':header (header msg))
    (cl:cons ':features (features msg))
))
