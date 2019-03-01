; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonCalibrationStateMagnetoCalibrationRequiredState.msg.html

(cl:defclass <CommonCalibrationStateMagnetoCalibrationRequiredState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (required
    :reader required
    :initarg :required
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonCalibrationStateMagnetoCalibrationRequiredState (<CommonCalibrationStateMagnetoCalibrationRequiredState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonCalibrationStateMagnetoCalibrationRequiredState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonCalibrationStateMagnetoCalibrationRequiredState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonCalibrationStateMagnetoCalibrationRequiredState> is deprecated: use bebop_msgs-msg:CommonCalibrationStateMagnetoCalibrationRequiredState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonCalibrationStateMagnetoCalibrationRequiredState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'required-val :lambda-list '(m))
(cl:defmethod required-val ((m <CommonCalibrationStateMagnetoCalibrationRequiredState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:required-val is deprecated.  Use bebop_msgs-msg:required instead.")
  (required m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonCalibrationStateMagnetoCalibrationRequiredState>) ostream)
  "Serializes a message object of type '<CommonCalibrationStateMagnetoCalibrationRequiredState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'required)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonCalibrationStateMagnetoCalibrationRequiredState>) istream)
  "Deserializes a message object of type '<CommonCalibrationStateMagnetoCalibrationRequiredState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'required)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonCalibrationStateMagnetoCalibrationRequiredState>)))
  "Returns string type for a message object of type '<CommonCalibrationStateMagnetoCalibrationRequiredState>"
  "bebop_msgs/CommonCalibrationStateMagnetoCalibrationRequiredState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonCalibrationStateMagnetoCalibrationRequiredState)))
  "Returns string type for a message object of type 'CommonCalibrationStateMagnetoCalibrationRequiredState"
  "bebop_msgs/CommonCalibrationStateMagnetoCalibrationRequiredState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonCalibrationStateMagnetoCalibrationRequiredState>)))
  "Returns md5sum for a message object of type '<CommonCalibrationStateMagnetoCalibrationRequiredState>"
  "fec0779f61291fcb78f86989a9b9f10e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonCalibrationStateMagnetoCalibrationRequiredState)))
  "Returns md5sum for a message object of type 'CommonCalibrationStateMagnetoCalibrationRequiredState"
  "fec0779f61291fcb78f86989a9b9f10e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonCalibrationStateMagnetoCalibrationRequiredState>)))
  "Returns full string definition for message of type '<CommonCalibrationStateMagnetoCalibrationRequiredState>"
  (cl:format cl:nil "# CommonCalibrationStateMagnetoCalibrationRequiredState~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Calibration required.~%~%Header header~%~%# 1 if calibration is required, 0 if current calibration is still valid~%uint8 required~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonCalibrationStateMagnetoCalibrationRequiredState)))
  "Returns full string definition for message of type 'CommonCalibrationStateMagnetoCalibrationRequiredState"
  (cl:format cl:nil "# CommonCalibrationStateMagnetoCalibrationRequiredState~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Calibration required.~%~%Header header~%~%# 1 if calibration is required, 0 if current calibration is still valid~%uint8 required~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonCalibrationStateMagnetoCalibrationRequiredState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonCalibrationStateMagnetoCalibrationRequiredState>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonCalibrationStateMagnetoCalibrationRequiredState
    (cl:cons ':header (header msg))
    (cl:cons ':required (required msg))
))
