; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3MediaStreamingStateVideoStreamModeChanged.msg.html

(cl:defclass <Ardrone3MediaStreamingStateVideoStreamModeChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Ardrone3MediaStreamingStateVideoStreamModeChanged (<Ardrone3MediaStreamingStateVideoStreamModeChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3MediaStreamingStateVideoStreamModeChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3MediaStreamingStateVideoStreamModeChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3MediaStreamingStateVideoStreamModeChanged> is deprecated: use bebop_msgs-msg:Ardrone3MediaStreamingStateVideoStreamModeChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3MediaStreamingStateVideoStreamModeChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <Ardrone3MediaStreamingStateVideoStreamModeChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:mode-val is deprecated.  Use bebop_msgs-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Ardrone3MediaStreamingStateVideoStreamModeChanged>)))
    "Constants for message type '<Ardrone3MediaStreamingStateVideoStreamModeChanged>"
  '((:MODE_LOW_LATENCY . 0)
    (:MODE_HIGH_RELIABILITY . 1)
    (:MODE_HIGH_RELIABILITY_LOW_FRAMERATE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Ardrone3MediaStreamingStateVideoStreamModeChanged)))
    "Constants for message type 'Ardrone3MediaStreamingStateVideoStreamModeChanged"
  '((:MODE_LOW_LATENCY . 0)
    (:MODE_HIGH_RELIABILITY . 1)
    (:MODE_HIGH_RELIABILITY_LOW_FRAMERATE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3MediaStreamingStateVideoStreamModeChanged>) ostream)
  "Serializes a message object of type '<Ardrone3MediaStreamingStateVideoStreamModeChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3MediaStreamingStateVideoStreamModeChanged>) istream)
  "Deserializes a message object of type '<Ardrone3MediaStreamingStateVideoStreamModeChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3MediaStreamingStateVideoStreamModeChanged>)))
  "Returns string type for a message object of type '<Ardrone3MediaStreamingStateVideoStreamModeChanged>"
  "bebop_msgs/Ardrone3MediaStreamingStateVideoStreamModeChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3MediaStreamingStateVideoStreamModeChanged)))
  "Returns string type for a message object of type 'Ardrone3MediaStreamingStateVideoStreamModeChanged"
  "bebop_msgs/Ardrone3MediaStreamingStateVideoStreamModeChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3MediaStreamingStateVideoStreamModeChanged>)))
  "Returns md5sum for a message object of type '<Ardrone3MediaStreamingStateVideoStreamModeChanged>"
  "4a2bbaab0b63209c90ee07d53c0c62d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3MediaStreamingStateVideoStreamModeChanged)))
  "Returns md5sum for a message object of type 'Ardrone3MediaStreamingStateVideoStreamModeChanged"
  "4a2bbaab0b63209c90ee07d53c0c62d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3MediaStreamingStateVideoStreamModeChanged>)))
  "Returns full string definition for message of type '<Ardrone3MediaStreamingStateVideoStreamModeChanged>"
  (cl:format cl:nil "# Ardrone3MediaStreamingStateVideoStreamModeChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: ~%~%Header header~%~%# stream mode~%uint8 mode_low_latency=0  # Minimize latency with average reliability (best for piloting).~%uint8 mode_high_reliability=1  # Maximize the reliability with an average latency (best when streaming quality is important but not the latency).~%uint8 mode_high_reliability_low_framerate=2  # Maximize the reliability using a framerate decimation with an average latency (best when streaming quality is important but not the latency).~%uint8 mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3MediaStreamingStateVideoStreamModeChanged)))
  "Returns full string definition for message of type 'Ardrone3MediaStreamingStateVideoStreamModeChanged"
  (cl:format cl:nil "# Ardrone3MediaStreamingStateVideoStreamModeChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: ~%~%Header header~%~%# stream mode~%uint8 mode_low_latency=0  # Minimize latency with average reliability (best for piloting).~%uint8 mode_high_reliability=1  # Maximize the reliability with an average latency (best when streaming quality is important but not the latency).~%uint8 mode_high_reliability_low_framerate=2  # Maximize the reliability using a framerate decimation with an average latency (best when streaming quality is important but not the latency).~%uint8 mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3MediaStreamingStateVideoStreamModeChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3MediaStreamingStateVideoStreamModeChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3MediaStreamingStateVideoStreamModeChanged
    (cl:cons ':header (header msg))
    (cl:cons ':mode (mode msg))
))
