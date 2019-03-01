; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3AntiflickeringStateelectricFrequencyChanged.msg.html

(cl:defclass <Ardrone3AntiflickeringStateelectricFrequencyChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (frequency
    :reader frequency
    :initarg :frequency
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Ardrone3AntiflickeringStateelectricFrequencyChanged (<Ardrone3AntiflickeringStateelectricFrequencyChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3AntiflickeringStateelectricFrequencyChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3AntiflickeringStateelectricFrequencyChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3AntiflickeringStateelectricFrequencyChanged> is deprecated: use bebop_msgs-msg:Ardrone3AntiflickeringStateelectricFrequencyChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3AntiflickeringStateelectricFrequencyChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <Ardrone3AntiflickeringStateelectricFrequencyChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:frequency-val is deprecated.  Use bebop_msgs-msg:frequency instead.")
  (frequency m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Ardrone3AntiflickeringStateelectricFrequencyChanged>)))
    "Constants for message type '<Ardrone3AntiflickeringStateelectricFrequencyChanged>"
  '((:FREQUENCY_FIFTYHERTZ . 0)
    (:FREQUENCY_SIXTYHERTZ . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Ardrone3AntiflickeringStateelectricFrequencyChanged)))
    "Constants for message type 'Ardrone3AntiflickeringStateelectricFrequencyChanged"
  '((:FREQUENCY_FIFTYHERTZ . 0)
    (:FREQUENCY_SIXTYHERTZ . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3AntiflickeringStateelectricFrequencyChanged>) ostream)
  "Serializes a message object of type '<Ardrone3AntiflickeringStateelectricFrequencyChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frequency)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3AntiflickeringStateelectricFrequencyChanged>) istream)
  "Deserializes a message object of type '<Ardrone3AntiflickeringStateelectricFrequencyChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frequency)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3AntiflickeringStateelectricFrequencyChanged>)))
  "Returns string type for a message object of type '<Ardrone3AntiflickeringStateelectricFrequencyChanged>"
  "bebop_msgs/Ardrone3AntiflickeringStateelectricFrequencyChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3AntiflickeringStateelectricFrequencyChanged)))
  "Returns string type for a message object of type 'Ardrone3AntiflickeringStateelectricFrequencyChanged"
  "bebop_msgs/Ardrone3AntiflickeringStateelectricFrequencyChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3AntiflickeringStateelectricFrequencyChanged>)))
  "Returns md5sum for a message object of type '<Ardrone3AntiflickeringStateelectricFrequencyChanged>"
  "ca3c0e18079a24e9b39ce000c8d70806")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3AntiflickeringStateelectricFrequencyChanged)))
  "Returns md5sum for a message object of type 'Ardrone3AntiflickeringStateelectricFrequencyChanged"
  "ca3c0e18079a24e9b39ce000c8d70806")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3AntiflickeringStateelectricFrequencyChanged>)))
  "Returns full string definition for message of type '<Ardrone3AntiflickeringStateelectricFrequencyChanged>"
  (cl:format cl:nil "# Ardrone3AntiflickeringStateelectricFrequencyChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Electric frequency.\\n This piece of information is used for the antiflickering when the [AntiflickeringMode](#1-30-1) is set to *auto*.~%~%Header header~%~%# Type of the electric frequency~%uint8 frequency_fiftyHertz=0  # Electric frequency of the country is 50hz~%uint8 frequency_sixtyHertz=1  # Electric frequency of the country is 60hz~%uint8 frequency~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3AntiflickeringStateelectricFrequencyChanged)))
  "Returns full string definition for message of type 'Ardrone3AntiflickeringStateelectricFrequencyChanged"
  (cl:format cl:nil "# Ardrone3AntiflickeringStateelectricFrequencyChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Electric frequency.\\n This piece of information is used for the antiflickering when the [AntiflickeringMode](#1-30-1) is set to *auto*.~%~%Header header~%~%# Type of the electric frequency~%uint8 frequency_fiftyHertz=0  # Electric frequency of the country is 50hz~%uint8 frequency_sixtyHertz=1  # Electric frequency of the country is 60hz~%uint8 frequency~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3AntiflickeringStateelectricFrequencyChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3AntiflickeringStateelectricFrequencyChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3AntiflickeringStateelectricFrequencyChanged
    (cl:cons ':header (header msg))
    (cl:cons ':frequency (frequency msg))
))
