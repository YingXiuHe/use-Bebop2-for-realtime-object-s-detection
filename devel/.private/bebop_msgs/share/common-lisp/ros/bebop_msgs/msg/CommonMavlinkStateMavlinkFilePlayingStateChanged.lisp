; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonMavlinkStateMavlinkFilePlayingStateChanged.msg.html

(cl:defclass <CommonMavlinkStateMavlinkFilePlayingStateChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (filepath
    :reader filepath
    :initarg :filepath
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonMavlinkStateMavlinkFilePlayingStateChanged (<CommonMavlinkStateMavlinkFilePlayingStateChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonMavlinkStateMavlinkFilePlayingStateChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonMavlinkStateMavlinkFilePlayingStateChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonMavlinkStateMavlinkFilePlayingStateChanged> is deprecated: use bebop_msgs-msg:CommonMavlinkStateMavlinkFilePlayingStateChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonMavlinkStateMavlinkFilePlayingStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <CommonMavlinkStateMavlinkFilePlayingStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:state-val is deprecated.  Use bebop_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'filepath-val :lambda-list '(m))
(cl:defmethod filepath-val ((m <CommonMavlinkStateMavlinkFilePlayingStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:filepath-val is deprecated.  Use bebop_msgs-msg:filepath instead.")
  (filepath m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <CommonMavlinkStateMavlinkFilePlayingStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:type-val is deprecated.  Use bebop_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CommonMavlinkStateMavlinkFilePlayingStateChanged>)))
    "Constants for message type '<CommonMavlinkStateMavlinkFilePlayingStateChanged>"
  '((:STATE_PLAYING . 0)
    (:STATE_STOPPED . 1)
    (:STATE_PAUSED . 2)
    (:STATE_LOADED . 3)
    (:TYPE_FLIGHTPLAN . 0)
    (:TYPE_MAPMYHOUSE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CommonMavlinkStateMavlinkFilePlayingStateChanged)))
    "Constants for message type 'CommonMavlinkStateMavlinkFilePlayingStateChanged"
  '((:STATE_PLAYING . 0)
    (:STATE_STOPPED . 1)
    (:STATE_PAUSED . 2)
    (:STATE_LOADED . 3)
    (:TYPE_FLIGHTPLAN . 0)
    (:TYPE_MAPMYHOUSE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonMavlinkStateMavlinkFilePlayingStateChanged>) ostream)
  "Serializes a message object of type '<CommonMavlinkStateMavlinkFilePlayingStateChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filepath))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filepath))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonMavlinkStateMavlinkFilePlayingStateChanged>) istream)
  "Deserializes a message object of type '<CommonMavlinkStateMavlinkFilePlayingStateChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filepath) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filepath) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonMavlinkStateMavlinkFilePlayingStateChanged>)))
  "Returns string type for a message object of type '<CommonMavlinkStateMavlinkFilePlayingStateChanged>"
  "bebop_msgs/CommonMavlinkStateMavlinkFilePlayingStateChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonMavlinkStateMavlinkFilePlayingStateChanged)))
  "Returns string type for a message object of type 'CommonMavlinkStateMavlinkFilePlayingStateChanged"
  "bebop_msgs/CommonMavlinkStateMavlinkFilePlayingStateChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonMavlinkStateMavlinkFilePlayingStateChanged>)))
  "Returns md5sum for a message object of type '<CommonMavlinkStateMavlinkFilePlayingStateChanged>"
  "1938cf62aa5e1b7b530a32681de3f4da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonMavlinkStateMavlinkFilePlayingStateChanged)))
  "Returns md5sum for a message object of type 'CommonMavlinkStateMavlinkFilePlayingStateChanged"
  "1938cf62aa5e1b7b530a32681de3f4da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonMavlinkStateMavlinkFilePlayingStateChanged>)))
  "Returns full string definition for message of type '<CommonMavlinkStateMavlinkFilePlayingStateChanged>"
  (cl:format cl:nil "# CommonMavlinkStateMavlinkFilePlayingStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Playing state of a FlightPlan.~%~%Header header~%~%# State of the mavlink~%uint8 state_playing=0  # Mavlink file is playing~%uint8 state_stopped=1  # Mavlink file is stopped (arg filepath and type are useless in this state)~%uint8 state_paused=2  # Mavlink file is paused~%uint8 state_loaded=3  # Mavlink file is loaded (it will be played at take-off)~%uint8 state~%# flight plan file path from the mavlink ftp root~%string filepath~%# type of the played mavlink file~%uint8 type_flightPlan=0  # Mavlink file for FlightPlan~%uint8 type_mapMyHouse=1  # Mavlink file for MapMyHouse~%uint8 type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonMavlinkStateMavlinkFilePlayingStateChanged)))
  "Returns full string definition for message of type 'CommonMavlinkStateMavlinkFilePlayingStateChanged"
  (cl:format cl:nil "# CommonMavlinkStateMavlinkFilePlayingStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Playing state of a FlightPlan.~%~%Header header~%~%# State of the mavlink~%uint8 state_playing=0  # Mavlink file is playing~%uint8 state_stopped=1  # Mavlink file is stopped (arg filepath and type are useless in this state)~%uint8 state_paused=2  # Mavlink file is paused~%uint8 state_loaded=3  # Mavlink file is loaded (it will be played at take-off)~%uint8 state~%# flight plan file path from the mavlink ftp root~%string filepath~%# type of the played mavlink file~%uint8 type_flightPlan=0  # Mavlink file for FlightPlan~%uint8 type_mapMyHouse=1  # Mavlink file for MapMyHouse~%uint8 type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonMavlinkStateMavlinkFilePlayingStateChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'filepath))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonMavlinkStateMavlinkFilePlayingStateChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonMavlinkStateMavlinkFilePlayingStateChanged
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
    (cl:cons ':filepath (filepath msg))
    (cl:cons ':type (type msg))
))
