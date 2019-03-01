; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3MediaRecordStateVideoResolutionState.msg.html

(cl:defclass <Ardrone3MediaRecordStateVideoResolutionState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (streaming
    :reader streaming
    :initarg :streaming
    :type cl:fixnum
    :initform 0)
   (recording
    :reader recording
    :initarg :recording
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Ardrone3MediaRecordStateVideoResolutionState (<Ardrone3MediaRecordStateVideoResolutionState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3MediaRecordStateVideoResolutionState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3MediaRecordStateVideoResolutionState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3MediaRecordStateVideoResolutionState> is deprecated: use bebop_msgs-msg:Ardrone3MediaRecordStateVideoResolutionState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3MediaRecordStateVideoResolutionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'streaming-val :lambda-list '(m))
(cl:defmethod streaming-val ((m <Ardrone3MediaRecordStateVideoResolutionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:streaming-val is deprecated.  Use bebop_msgs-msg:streaming instead.")
  (streaming m))

(cl:ensure-generic-function 'recording-val :lambda-list '(m))
(cl:defmethod recording-val ((m <Ardrone3MediaRecordStateVideoResolutionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:recording-val is deprecated.  Use bebop_msgs-msg:recording instead.")
  (recording m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Ardrone3MediaRecordStateVideoResolutionState>)))
    "Constants for message type '<Ardrone3MediaRecordStateVideoResolutionState>"
  '((:STREAMING_RES360P . 0)
    (:STREAMING_RES480P . 1)
    (:STREAMING_RES720P . 2)
    (:STREAMING_RES1080P . 3)
    (:RECORDING_RES360P . 0)
    (:RECORDING_RES480P . 1)
    (:RECORDING_RES720P . 2)
    (:RECORDING_RES1080P . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Ardrone3MediaRecordStateVideoResolutionState)))
    "Constants for message type 'Ardrone3MediaRecordStateVideoResolutionState"
  '((:STREAMING_RES360P . 0)
    (:STREAMING_RES480P . 1)
    (:STREAMING_RES720P . 2)
    (:STREAMING_RES1080P . 3)
    (:RECORDING_RES360P . 0)
    (:RECORDING_RES480P . 1)
    (:RECORDING_RES720P . 2)
    (:RECORDING_RES1080P . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3MediaRecordStateVideoResolutionState>) ostream)
  "Serializes a message object of type '<Ardrone3MediaRecordStateVideoResolutionState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'streaming)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'recording)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3MediaRecordStateVideoResolutionState>) istream)
  "Deserializes a message object of type '<Ardrone3MediaRecordStateVideoResolutionState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'streaming)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'recording)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3MediaRecordStateVideoResolutionState>)))
  "Returns string type for a message object of type '<Ardrone3MediaRecordStateVideoResolutionState>"
  "bebop_msgs/Ardrone3MediaRecordStateVideoResolutionState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3MediaRecordStateVideoResolutionState)))
  "Returns string type for a message object of type 'Ardrone3MediaRecordStateVideoResolutionState"
  "bebop_msgs/Ardrone3MediaRecordStateVideoResolutionState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3MediaRecordStateVideoResolutionState>)))
  "Returns md5sum for a message object of type '<Ardrone3MediaRecordStateVideoResolutionState>"
  "478002c2ec614a227f494865922fd580")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3MediaRecordStateVideoResolutionState)))
  "Returns md5sum for a message object of type 'Ardrone3MediaRecordStateVideoResolutionState"
  "478002c2ec614a227f494865922fd580")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3MediaRecordStateVideoResolutionState>)))
  "Returns full string definition for message of type '<Ardrone3MediaRecordStateVideoResolutionState>"
  (cl:format cl:nil "# Ardrone3MediaRecordStateVideoResolutionState~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Video resolution.\\n Informs about streaming and recording video resolutions.\\n Note that this is only an indication about what the resolution should be. To know the real resolution, you should get it from the frame.~%~%Header header~%~%# Streaming resolution~%uint8 streaming_res360p=0  # 360p resolution.~%uint8 streaming_res480p=1  # 480p resolution.~%uint8 streaming_res720p=2  # 720p resolution.~%uint8 streaming_res1080p=3  # 1080p resolution.~%uint8 streaming~%# Recording resolution~%uint8 recording_res360p=0  # 360p resolution.~%uint8 recording_res480p=1  # 480p resolution.~%uint8 recording_res720p=2  # 720p resolution.~%uint8 recording_res1080p=3  # 1080p resolution.~%uint8 recording~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3MediaRecordStateVideoResolutionState)))
  "Returns full string definition for message of type 'Ardrone3MediaRecordStateVideoResolutionState"
  (cl:format cl:nil "# Ardrone3MediaRecordStateVideoResolutionState~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Video resolution.\\n Informs about streaming and recording video resolutions.\\n Note that this is only an indication about what the resolution should be. To know the real resolution, you should get it from the frame.~%~%Header header~%~%# Streaming resolution~%uint8 streaming_res360p=0  # 360p resolution.~%uint8 streaming_res480p=1  # 480p resolution.~%uint8 streaming_res720p=2  # 720p resolution.~%uint8 streaming_res1080p=3  # 1080p resolution.~%uint8 streaming~%# Recording resolution~%uint8 recording_res360p=0  # 360p resolution.~%uint8 recording_res480p=1  # 480p resolution.~%uint8 recording_res720p=2  # 720p resolution.~%uint8 recording_res1080p=3  # 1080p resolution.~%uint8 recording~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3MediaRecordStateVideoResolutionState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3MediaRecordStateVideoResolutionState>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3MediaRecordStateVideoResolutionState
    (cl:cons ':header (header msg))
    (cl:cons ':streaming (streaming msg))
    (cl:cons ':recording (recording msg))
))
