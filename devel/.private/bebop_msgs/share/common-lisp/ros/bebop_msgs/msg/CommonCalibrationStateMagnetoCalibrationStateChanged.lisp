; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonCalibrationStateMagnetoCalibrationStateChanged.msg.html

(cl:defclass <CommonCalibrationStateMagnetoCalibrationStateChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (xAxisCalibration
    :reader xAxisCalibration
    :initarg :xAxisCalibration
    :type cl:fixnum
    :initform 0)
   (yAxisCalibration
    :reader yAxisCalibration
    :initarg :yAxisCalibration
    :type cl:fixnum
    :initform 0)
   (zAxisCalibration
    :reader zAxisCalibration
    :initarg :zAxisCalibration
    :type cl:fixnum
    :initform 0)
   (calibrationFailed
    :reader calibrationFailed
    :initarg :calibrationFailed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonCalibrationStateMagnetoCalibrationStateChanged (<CommonCalibrationStateMagnetoCalibrationStateChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonCalibrationStateMagnetoCalibrationStateChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonCalibrationStateMagnetoCalibrationStateChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonCalibrationStateMagnetoCalibrationStateChanged> is deprecated: use bebop_msgs-msg:CommonCalibrationStateMagnetoCalibrationStateChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonCalibrationStateMagnetoCalibrationStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'xAxisCalibration-val :lambda-list '(m))
(cl:defmethod xAxisCalibration-val ((m <CommonCalibrationStateMagnetoCalibrationStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:xAxisCalibration-val is deprecated.  Use bebop_msgs-msg:xAxisCalibration instead.")
  (xAxisCalibration m))

(cl:ensure-generic-function 'yAxisCalibration-val :lambda-list '(m))
(cl:defmethod yAxisCalibration-val ((m <CommonCalibrationStateMagnetoCalibrationStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:yAxisCalibration-val is deprecated.  Use bebop_msgs-msg:yAxisCalibration instead.")
  (yAxisCalibration m))

(cl:ensure-generic-function 'zAxisCalibration-val :lambda-list '(m))
(cl:defmethod zAxisCalibration-val ((m <CommonCalibrationStateMagnetoCalibrationStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:zAxisCalibration-val is deprecated.  Use bebop_msgs-msg:zAxisCalibration instead.")
  (zAxisCalibration m))

(cl:ensure-generic-function 'calibrationFailed-val :lambda-list '(m))
(cl:defmethod calibrationFailed-val ((m <CommonCalibrationStateMagnetoCalibrationStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:calibrationFailed-val is deprecated.  Use bebop_msgs-msg:calibrationFailed instead.")
  (calibrationFailed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonCalibrationStateMagnetoCalibrationStateChanged>) ostream)
  "Serializes a message object of type '<CommonCalibrationStateMagnetoCalibrationStateChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'xAxisCalibration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'yAxisCalibration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'zAxisCalibration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'calibrationFailed)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonCalibrationStateMagnetoCalibrationStateChanged>) istream)
  "Deserializes a message object of type '<CommonCalibrationStateMagnetoCalibrationStateChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'xAxisCalibration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'yAxisCalibration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'zAxisCalibration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'calibrationFailed)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonCalibrationStateMagnetoCalibrationStateChanged>)))
  "Returns string type for a message object of type '<CommonCalibrationStateMagnetoCalibrationStateChanged>"
  "bebop_msgs/CommonCalibrationStateMagnetoCalibrationStateChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonCalibrationStateMagnetoCalibrationStateChanged)))
  "Returns string type for a message object of type 'CommonCalibrationStateMagnetoCalibrationStateChanged"
  "bebop_msgs/CommonCalibrationStateMagnetoCalibrationStateChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonCalibrationStateMagnetoCalibrationStateChanged>)))
  "Returns md5sum for a message object of type '<CommonCalibrationStateMagnetoCalibrationStateChanged>"
  "89c04aa89f066c20fb00b541abd28d8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonCalibrationStateMagnetoCalibrationStateChanged)))
  "Returns md5sum for a message object of type 'CommonCalibrationStateMagnetoCalibrationStateChanged"
  "89c04aa89f066c20fb00b541abd28d8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonCalibrationStateMagnetoCalibrationStateChanged>)))
  "Returns full string definition for message of type '<CommonCalibrationStateMagnetoCalibrationStateChanged>"
  (cl:format cl:nil "# CommonCalibrationStateMagnetoCalibrationStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Magneto calib process axis state.~%~%Header header~%~%# State of the x axis (roll) calibration : 1 if calibration is done, 0 otherwise~%uint8 xAxisCalibration~%# State of the y axis (pitch) calibration : 1 if calibration is done, 0 otherwise~%uint8 yAxisCalibration~%# State of the z axis (yaw) calibration : 1 if calibration is done, 0 otherwise~%uint8 zAxisCalibration~%# 1 if calibration has failed, 0 otherwise. If this arg is 1, consider all previous arg as 0~%uint8 calibrationFailed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonCalibrationStateMagnetoCalibrationStateChanged)))
  "Returns full string definition for message of type 'CommonCalibrationStateMagnetoCalibrationStateChanged"
  (cl:format cl:nil "# CommonCalibrationStateMagnetoCalibrationStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Magneto calib process axis state.~%~%Header header~%~%# State of the x axis (roll) calibration : 1 if calibration is done, 0 otherwise~%uint8 xAxisCalibration~%# State of the y axis (pitch) calibration : 1 if calibration is done, 0 otherwise~%uint8 yAxisCalibration~%# State of the z axis (yaw) calibration : 1 if calibration is done, 0 otherwise~%uint8 zAxisCalibration~%# 1 if calibration has failed, 0 otherwise. If this arg is 1, consider all previous arg as 0~%uint8 calibrationFailed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonCalibrationStateMagnetoCalibrationStateChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonCalibrationStateMagnetoCalibrationStateChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonCalibrationStateMagnetoCalibrationStateChanged
    (cl:cons ':header (header msg))
    (cl:cons ':xAxisCalibration (xAxisCalibration msg))
    (cl:cons ':yAxisCalibration (yAxisCalibration msg))
    (cl:cons ':zAxisCalibration (zAxisCalibration msg))
    (cl:cons ':calibrationFailed (calibrationFailed msg))
))
