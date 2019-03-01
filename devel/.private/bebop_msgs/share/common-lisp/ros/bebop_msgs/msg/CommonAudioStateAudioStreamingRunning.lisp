; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonAudioStateAudioStreamingRunning.msg.html

(cl:defclass <CommonAudioStateAudioStreamingRunning> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (running
    :reader running
    :initarg :running
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonAudioStateAudioStreamingRunning (<CommonAudioStateAudioStreamingRunning>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonAudioStateAudioStreamingRunning>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonAudioStateAudioStreamingRunning)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonAudioStateAudioStreamingRunning> is deprecated: use bebop_msgs-msg:CommonAudioStateAudioStreamingRunning instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonAudioStateAudioStreamingRunning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'running-val :lambda-list '(m))
(cl:defmethod running-val ((m <CommonAudioStateAudioStreamingRunning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:running-val is deprecated.  Use bebop_msgs-msg:running instead.")
  (running m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonAudioStateAudioStreamingRunning>) ostream)
  "Serializes a message object of type '<CommonAudioStateAudioStreamingRunning>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'running)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonAudioStateAudioStreamingRunning>) istream)
  "Deserializes a message object of type '<CommonAudioStateAudioStreamingRunning>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'running)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonAudioStateAudioStreamingRunning>)))
  "Returns string type for a message object of type '<CommonAudioStateAudioStreamingRunning>"
  "bebop_msgs/CommonAudioStateAudioStreamingRunning")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonAudioStateAudioStreamingRunning)))
  "Returns string type for a message object of type 'CommonAudioStateAudioStreamingRunning"
  "bebop_msgs/CommonAudioStateAudioStreamingRunning")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonAudioStateAudioStreamingRunning>)))
  "Returns md5sum for a message object of type '<CommonAudioStateAudioStreamingRunning>"
  "c32c9979998ec419afee553d1e1e2e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonAudioStateAudioStreamingRunning)))
  "Returns md5sum for a message object of type 'CommonAudioStateAudioStreamingRunning"
  "c32c9979998ec419afee553d1e1e2e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonAudioStateAudioStreamingRunning>)))
  "Returns full string definition for message of type '<CommonAudioStateAudioStreamingRunning>"
  (cl:format cl:nil "# CommonAudioStateAudioStreamingRunning~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Audio stream direction.~%~%Header header~%~%# Bit field for TX and RX running bit 0 is 1 if Drone TX is running bit 1 is 1 if Drone RX is running~%uint8 running~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonAudioStateAudioStreamingRunning)))
  "Returns full string definition for message of type 'CommonAudioStateAudioStreamingRunning"
  (cl:format cl:nil "# CommonAudioStateAudioStreamingRunning~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Audio stream direction.~%~%Header header~%~%# Bit field for TX and RX running bit 0 is 1 if Drone TX is running bit 1 is 1 if Drone RX is running~%uint8 running~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonAudioStateAudioStreamingRunning>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonAudioStateAudioStreamingRunning>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonAudioStateAudioStreamingRunning
    (cl:cons ':header (header msg))
    (cl:cons ':running (running msg))
))
