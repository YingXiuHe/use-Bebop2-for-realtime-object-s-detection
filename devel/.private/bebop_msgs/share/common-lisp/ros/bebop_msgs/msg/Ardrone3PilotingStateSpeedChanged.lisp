; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3PilotingStateSpeedChanged.msg.html

(cl:defclass <Ardrone3PilotingStateSpeedChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (speedX
    :reader speedX
    :initarg :speedX
    :type cl:float
    :initform 0.0)
   (speedY
    :reader speedY
    :initarg :speedY
    :type cl:float
    :initform 0.0)
   (speedZ
    :reader speedZ
    :initarg :speedZ
    :type cl:float
    :initform 0.0))
)

(cl:defclass Ardrone3PilotingStateSpeedChanged (<Ardrone3PilotingStateSpeedChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3PilotingStateSpeedChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3PilotingStateSpeedChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3PilotingStateSpeedChanged> is deprecated: use bebop_msgs-msg:Ardrone3PilotingStateSpeedChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3PilotingStateSpeedChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'speedX-val :lambda-list '(m))
(cl:defmethod speedX-val ((m <Ardrone3PilotingStateSpeedChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:speedX-val is deprecated.  Use bebop_msgs-msg:speedX instead.")
  (speedX m))

(cl:ensure-generic-function 'speedY-val :lambda-list '(m))
(cl:defmethod speedY-val ((m <Ardrone3PilotingStateSpeedChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:speedY-val is deprecated.  Use bebop_msgs-msg:speedY instead.")
  (speedY m))

(cl:ensure-generic-function 'speedZ-val :lambda-list '(m))
(cl:defmethod speedZ-val ((m <Ardrone3PilotingStateSpeedChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:speedZ-val is deprecated.  Use bebop_msgs-msg:speedZ instead.")
  (speedZ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3PilotingStateSpeedChanged>) ostream)
  "Serializes a message object of type '<Ardrone3PilotingStateSpeedChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speedX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speedY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speedZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3PilotingStateSpeedChanged>) istream)
  "Deserializes a message object of type '<Ardrone3PilotingStateSpeedChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speedX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speedY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speedZ) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3PilotingStateSpeedChanged>)))
  "Returns string type for a message object of type '<Ardrone3PilotingStateSpeedChanged>"
  "bebop_msgs/Ardrone3PilotingStateSpeedChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3PilotingStateSpeedChanged)))
  "Returns string type for a message object of type 'Ardrone3PilotingStateSpeedChanged"
  "bebop_msgs/Ardrone3PilotingStateSpeedChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3PilotingStateSpeedChanged>)))
  "Returns md5sum for a message object of type '<Ardrone3PilotingStateSpeedChanged>"
  "a8b7ba33cedd9aff188b6d7cc81fcfab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3PilotingStateSpeedChanged)))
  "Returns md5sum for a message object of type 'Ardrone3PilotingStateSpeedChanged"
  "a8b7ba33cedd9aff188b6d7cc81fcfab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3PilotingStateSpeedChanged>)))
  "Returns full string definition for message of type '<Ardrone3PilotingStateSpeedChanged>"
  (cl:format cl:nil "# Ardrone3PilotingStateSpeedChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Drones speed changed.\\n Expressed in the NED referential (North-East-Down).~%~%Header header~%~%# Speed relative to the North (when drone moves to the north, speed is &gt; 0) (in m/s)~%float32 speedX~%# Speed relative to the East (when drone moves to the east, speed is &gt; 0) (in m/s)~%float32 speedY~%# Speed on the z axis (when drone moves down, speed is &gt; 0) (in m/s)~%float32 speedZ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3PilotingStateSpeedChanged)))
  "Returns full string definition for message of type 'Ardrone3PilotingStateSpeedChanged"
  (cl:format cl:nil "# Ardrone3PilotingStateSpeedChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Drones speed changed.\\n Expressed in the NED referential (North-East-Down).~%~%Header header~%~%# Speed relative to the North (when drone moves to the north, speed is &gt; 0) (in m/s)~%float32 speedX~%# Speed relative to the East (when drone moves to the east, speed is &gt; 0) (in m/s)~%float32 speedY~%# Speed on the z axis (when drone moves down, speed is &gt; 0) (in m/s)~%float32 speedZ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3PilotingStateSpeedChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3PilotingStateSpeedChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3PilotingStateSpeedChanged
    (cl:cons ':header (header msg))
    (cl:cons ':speedX (speedX msg))
    (cl:cons ':speedY (speedY msg))
    (cl:cons ':speedZ (speedZ msg))
))
