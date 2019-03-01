; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged.msg.html

(cl:defclass <CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (axis
    :reader axis
    :initarg :axis
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged (<CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged> is deprecated: use bebop_msgs-msg:CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'axis-val :lambda-list '(m))
(cl:defmethod axis-val ((m <CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:axis-val is deprecated.  Use bebop_msgs-msg:axis instead.")
  (axis m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged>)))
    "Constants for message type '<CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged>"
  '((:AXIS_XAXIS . 0)
    (:AXIS_YAXIS . 1)
    (:AXIS_ZAXIS . 2)
    (:AXIS_NONE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged)))
    "Constants for message type 'CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged"
  '((:AXIS_XAXIS . 0)
    (:AXIS_YAXIS . 1)
    (:AXIS_ZAXIS . 2)
    (:AXIS_NONE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged>) ostream)
  "Serializes a message object of type '<CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'axis)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged>) istream)
  "Deserializes a message object of type '<CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'axis)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged>)))
  "Returns string type for a message object of type '<CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged>"
  "bebop_msgs/CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged)))
  "Returns string type for a message object of type 'CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged"
  "bebop_msgs/CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged>)))
  "Returns md5sum for a message object of type '<CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged>"
  "ad3a0a9ecffc26cb8ac4221cda1c0e54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged)))
  "Returns md5sum for a message object of type 'CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged"
  "ad3a0a9ecffc26cb8ac4221cda1c0e54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged>)))
  "Returns full string definition for message of type '<CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged>"
  (cl:format cl:nil "# CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Axis to calibrate during calibration process.~%~%Header header~%~%# The axis to calibrate~%uint8 axis_xAxis=0  # If the current calibration axis should be the x axis~%uint8 axis_yAxis=1  # If the current calibration axis should be the y axis~%uint8 axis_zAxis=2  # If the current calibration axis should be the z axis~%uint8 axis_none=3  # If none of the axis should be calibrated~%uint8 axis~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged)))
  "Returns full string definition for message of type 'CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged"
  (cl:format cl:nil "# CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Axis to calibrate during calibration process.~%~%Header header~%~%# The axis to calibrate~%uint8 axis_xAxis=0  # If the current calibration axis should be the x axis~%uint8 axis_yAxis=1  # If the current calibration axis should be the y axis~%uint8 axis_zAxis=2  # If the current calibration axis should be the z axis~%uint8 axis_none=3  # If none of the axis should be calibrated~%uint8 axis~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged
    (cl:cons ':header (header msg))
    (cl:cons ':axis (axis msg))
))
