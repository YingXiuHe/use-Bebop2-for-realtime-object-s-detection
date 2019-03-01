; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonHeadlightsStateintensityChanged.msg.html

(cl:defclass <CommonHeadlightsStateintensityChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left
    :reader left
    :initarg :left
    :type cl:fixnum
    :initform 0)
   (right
    :reader right
    :initarg :right
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonHeadlightsStateintensityChanged (<CommonHeadlightsStateintensityChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonHeadlightsStateintensityChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonHeadlightsStateintensityChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonHeadlightsStateintensityChanged> is deprecated: use bebop_msgs-msg:CommonHeadlightsStateintensityChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonHeadlightsStateintensityChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <CommonHeadlightsStateintensityChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:left-val is deprecated.  Use bebop_msgs-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <CommonHeadlightsStateintensityChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:right-val is deprecated.  Use bebop_msgs-msg:right instead.")
  (right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonHeadlightsStateintensityChanged>) ostream)
  "Serializes a message object of type '<CommonHeadlightsStateintensityChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonHeadlightsStateintensityChanged>) istream)
  "Deserializes a message object of type '<CommonHeadlightsStateintensityChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonHeadlightsStateintensityChanged>)))
  "Returns string type for a message object of type '<CommonHeadlightsStateintensityChanged>"
  "bebop_msgs/CommonHeadlightsStateintensityChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonHeadlightsStateintensityChanged)))
  "Returns string type for a message object of type 'CommonHeadlightsStateintensityChanged"
  "bebop_msgs/CommonHeadlightsStateintensityChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonHeadlightsStateintensityChanged>)))
  "Returns md5sum for a message object of type '<CommonHeadlightsStateintensityChanged>"
  "467d71c05ef2257e4a6881abae5c114a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonHeadlightsStateintensityChanged)))
  "Returns md5sum for a message object of type 'CommonHeadlightsStateintensityChanged"
  "467d71c05ef2257e4a6881abae5c114a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonHeadlightsStateintensityChanged>)))
  "Returns full string definition for message of type '<CommonHeadlightsStateintensityChanged>"
  (cl:format cl:nil "# CommonHeadlightsStateintensityChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Lighting LEDs intensity.~%~%Header header~%~%# The intensity value for the left LED (0 through 255).~%uint8 left~%# The intensity value for the right LED (0 through 255).~%uint8 right~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonHeadlightsStateintensityChanged)))
  "Returns full string definition for message of type 'CommonHeadlightsStateintensityChanged"
  (cl:format cl:nil "# CommonHeadlightsStateintensityChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Lighting LEDs intensity.~%~%Header header~%~%# The intensity value for the left LED (0 through 255).~%uint8 left~%# The intensity value for the right LED (0 through 255).~%uint8 right~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonHeadlightsStateintensityChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonHeadlightsStateintensityChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonHeadlightsStateintensityChanged
    (cl:cons ':header (header msg))
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
))
