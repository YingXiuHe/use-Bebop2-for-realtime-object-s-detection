; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3GPSStateNumberOfSatelliteChanged.msg.html

(cl:defclass <Ardrone3GPSStateNumberOfSatelliteChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (numberOfSatellite
    :reader numberOfSatellite
    :initarg :numberOfSatellite
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Ardrone3GPSStateNumberOfSatelliteChanged (<Ardrone3GPSStateNumberOfSatelliteChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3GPSStateNumberOfSatelliteChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3GPSStateNumberOfSatelliteChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3GPSStateNumberOfSatelliteChanged> is deprecated: use bebop_msgs-msg:Ardrone3GPSStateNumberOfSatelliteChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3GPSStateNumberOfSatelliteChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'numberOfSatellite-val :lambda-list '(m))
(cl:defmethod numberOfSatellite-val ((m <Ardrone3GPSStateNumberOfSatelliteChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:numberOfSatellite-val is deprecated.  Use bebop_msgs-msg:numberOfSatellite instead.")
  (numberOfSatellite m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3GPSStateNumberOfSatelliteChanged>) ostream)
  "Serializes a message object of type '<Ardrone3GPSStateNumberOfSatelliteChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numberOfSatellite)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3GPSStateNumberOfSatelliteChanged>) istream)
  "Deserializes a message object of type '<Ardrone3GPSStateNumberOfSatelliteChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numberOfSatellite)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3GPSStateNumberOfSatelliteChanged>)))
  "Returns string type for a message object of type '<Ardrone3GPSStateNumberOfSatelliteChanged>"
  "bebop_msgs/Ardrone3GPSStateNumberOfSatelliteChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3GPSStateNumberOfSatelliteChanged)))
  "Returns string type for a message object of type 'Ardrone3GPSStateNumberOfSatelliteChanged"
  "bebop_msgs/Ardrone3GPSStateNumberOfSatelliteChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3GPSStateNumberOfSatelliteChanged>)))
  "Returns md5sum for a message object of type '<Ardrone3GPSStateNumberOfSatelliteChanged>"
  "07100adadfd4e952508665bf499f7945")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3GPSStateNumberOfSatelliteChanged)))
  "Returns md5sum for a message object of type 'Ardrone3GPSStateNumberOfSatelliteChanged"
  "07100adadfd4e952508665bf499f7945")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3GPSStateNumberOfSatelliteChanged>)))
  "Returns full string definition for message of type '<Ardrone3GPSStateNumberOfSatelliteChanged>"
  (cl:format cl:nil "# Ardrone3GPSStateNumberOfSatelliteChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Number of GPS satellites.~%~%Header header~%~%# The number of satellite~%uint8 numberOfSatellite~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3GPSStateNumberOfSatelliteChanged)))
  "Returns full string definition for message of type 'Ardrone3GPSStateNumberOfSatelliteChanged"
  (cl:format cl:nil "# Ardrone3GPSStateNumberOfSatelliteChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Number of GPS satellites.~%~%Header header~%~%# The number of satellite~%uint8 numberOfSatellite~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3GPSStateNumberOfSatelliteChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3GPSStateNumberOfSatelliteChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3GPSStateNumberOfSatelliteChanged
    (cl:cons ':header (header msg))
    (cl:cons ':numberOfSatellite (numberOfSatellite msg))
))
