; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonFlightPlanStateAvailabilityStateChanged.msg.html

(cl:defclass <CommonFlightPlanStateAvailabilityStateChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (AvailabilityState
    :reader AvailabilityState
    :initarg :AvailabilityState
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonFlightPlanStateAvailabilityStateChanged (<CommonFlightPlanStateAvailabilityStateChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonFlightPlanStateAvailabilityStateChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonFlightPlanStateAvailabilityStateChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonFlightPlanStateAvailabilityStateChanged> is deprecated: use bebop_msgs-msg:CommonFlightPlanStateAvailabilityStateChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonFlightPlanStateAvailabilityStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'AvailabilityState-val :lambda-list '(m))
(cl:defmethod AvailabilityState-val ((m <CommonFlightPlanStateAvailabilityStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:AvailabilityState-val is deprecated.  Use bebop_msgs-msg:AvailabilityState instead.")
  (AvailabilityState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonFlightPlanStateAvailabilityStateChanged>) ostream)
  "Serializes a message object of type '<CommonFlightPlanStateAvailabilityStateChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AvailabilityState)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonFlightPlanStateAvailabilityStateChanged>) istream)
  "Deserializes a message object of type '<CommonFlightPlanStateAvailabilityStateChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AvailabilityState)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonFlightPlanStateAvailabilityStateChanged>)))
  "Returns string type for a message object of type '<CommonFlightPlanStateAvailabilityStateChanged>"
  "bebop_msgs/CommonFlightPlanStateAvailabilityStateChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonFlightPlanStateAvailabilityStateChanged)))
  "Returns string type for a message object of type 'CommonFlightPlanStateAvailabilityStateChanged"
  "bebop_msgs/CommonFlightPlanStateAvailabilityStateChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonFlightPlanStateAvailabilityStateChanged>)))
  "Returns md5sum for a message object of type '<CommonFlightPlanStateAvailabilityStateChanged>"
  "b47d280696828874e694f8c4035109de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonFlightPlanStateAvailabilityStateChanged)))
  "Returns md5sum for a message object of type 'CommonFlightPlanStateAvailabilityStateChanged"
  "b47d280696828874e694f8c4035109de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonFlightPlanStateAvailabilityStateChanged>)))
  "Returns full string definition for message of type '<CommonFlightPlanStateAvailabilityStateChanged>"
  (cl:format cl:nil "# CommonFlightPlanStateAvailabilityStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: FlightPlan availability.\\n Availability is linked to GPS fix, magnetometer calibration, sensor states...~%~%Header header~%~%# Running a flightPlan file is available (1 running a flightPlan file is available, otherwise 0)~%uint8 AvailabilityState~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonFlightPlanStateAvailabilityStateChanged)))
  "Returns full string definition for message of type 'CommonFlightPlanStateAvailabilityStateChanged"
  (cl:format cl:nil "# CommonFlightPlanStateAvailabilityStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: FlightPlan availability.\\n Availability is linked to GPS fix, magnetometer calibration, sensor states...~%~%Header header~%~%# Running a flightPlan file is available (1 running a flightPlan file is available, otherwise 0)~%uint8 AvailabilityState~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonFlightPlanStateAvailabilityStateChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonFlightPlanStateAvailabilityStateChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonFlightPlanStateAvailabilityStateChanged
    (cl:cons ':header (header msg))
    (cl:cons ':AvailabilityState (AvailabilityState msg))
))
