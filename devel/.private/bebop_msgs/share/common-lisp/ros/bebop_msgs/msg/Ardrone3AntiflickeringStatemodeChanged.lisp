; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3AntiflickeringStatemodeChanged.msg.html

(cl:defclass <Ardrone3AntiflickeringStatemodeChanged> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Ardrone3AntiflickeringStatemodeChanged (<Ardrone3AntiflickeringStatemodeChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3AntiflickeringStatemodeChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3AntiflickeringStatemodeChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3AntiflickeringStatemodeChanged> is deprecated: use bebop_msgs-msg:Ardrone3AntiflickeringStatemodeChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3AntiflickeringStatemodeChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <Ardrone3AntiflickeringStatemodeChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:mode-val is deprecated.  Use bebop_msgs-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Ardrone3AntiflickeringStatemodeChanged>)))
    "Constants for message type '<Ardrone3AntiflickeringStatemodeChanged>"
  '((:MODE_AUTO . 0)
    (:MODE_FIXEDFIFTYHERTZ . 1)
    (:MODE_FIXEDSIXTYHERTZ . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Ardrone3AntiflickeringStatemodeChanged)))
    "Constants for message type 'Ardrone3AntiflickeringStatemodeChanged"
  '((:MODE_AUTO . 0)
    (:MODE_FIXEDFIFTYHERTZ . 1)
    (:MODE_FIXEDSIXTYHERTZ . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3AntiflickeringStatemodeChanged>) ostream)
  "Serializes a message object of type '<Ardrone3AntiflickeringStatemodeChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3AntiflickeringStatemodeChanged>) istream)
  "Deserializes a message object of type '<Ardrone3AntiflickeringStatemodeChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3AntiflickeringStatemodeChanged>)))
  "Returns string type for a message object of type '<Ardrone3AntiflickeringStatemodeChanged>"
  "bebop_msgs/Ardrone3AntiflickeringStatemodeChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3AntiflickeringStatemodeChanged)))
  "Returns string type for a message object of type 'Ardrone3AntiflickeringStatemodeChanged"
  "bebop_msgs/Ardrone3AntiflickeringStatemodeChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3AntiflickeringStatemodeChanged>)))
  "Returns md5sum for a message object of type '<Ardrone3AntiflickeringStatemodeChanged>"
  "949916415ccdcdf00022c85192c0ac67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3AntiflickeringStatemodeChanged)))
  "Returns md5sum for a message object of type 'Ardrone3AntiflickeringStatemodeChanged"
  "949916415ccdcdf00022c85192c0ac67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3AntiflickeringStatemodeChanged>)))
  "Returns full string definition for message of type '<Ardrone3AntiflickeringStatemodeChanged>"
  (cl:format cl:nil "# Ardrone3AntiflickeringStatemodeChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Antiflickering mode.~%~%Header header~%~%# Mode of the anti flickering functionnality~%uint8 mode_auto=0  # Anti flickering based on the electric frequency previously sent~%uint8 mode_FixedFiftyHertz=1  # Anti flickering based on a fixed frequency of 50Hz~%uint8 mode_FixedSixtyHertz=2  # Anti flickering based on a fixed frequency of 60Hz~%uint8 mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3AntiflickeringStatemodeChanged)))
  "Returns full string definition for message of type 'Ardrone3AntiflickeringStatemodeChanged"
  (cl:format cl:nil "# Ardrone3AntiflickeringStatemodeChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Antiflickering mode.~%~%Header header~%~%# Mode of the anti flickering functionnality~%uint8 mode_auto=0  # Anti flickering based on the electric frequency previously sent~%uint8 mode_FixedFiftyHertz=1  # Anti flickering based on a fixed frequency of 50Hz~%uint8 mode_FixedSixtyHertz=2  # Anti flickering based on a fixed frequency of 60Hz~%uint8 mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3AntiflickeringStatemodeChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3AntiflickeringStatemodeChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3AntiflickeringStatemodeChanged
    (cl:cons ':header (header msg))
    (cl:cons ':mode (mode msg))
))
