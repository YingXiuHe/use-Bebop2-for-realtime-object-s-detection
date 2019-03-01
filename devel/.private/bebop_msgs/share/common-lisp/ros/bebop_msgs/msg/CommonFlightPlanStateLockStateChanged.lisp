; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonFlightPlanStateLockStateChanged.msg.html

(cl:defclass <CommonFlightPlanStateLockStateChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (LockState
    :reader LockState
    :initarg :LockState
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonFlightPlanStateLockStateChanged (<CommonFlightPlanStateLockStateChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonFlightPlanStateLockStateChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonFlightPlanStateLockStateChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonFlightPlanStateLockStateChanged> is deprecated: use bebop_msgs-msg:CommonFlightPlanStateLockStateChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonFlightPlanStateLockStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'LockState-val :lambda-list '(m))
(cl:defmethod LockState-val ((m <CommonFlightPlanStateLockStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:LockState-val is deprecated.  Use bebop_msgs-msg:LockState instead.")
  (LockState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonFlightPlanStateLockStateChanged>) ostream)
  "Serializes a message object of type '<CommonFlightPlanStateLockStateChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LockState)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonFlightPlanStateLockStateChanged>) istream)
  "Deserializes a message object of type '<CommonFlightPlanStateLockStateChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LockState)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonFlightPlanStateLockStateChanged>)))
  "Returns string type for a message object of type '<CommonFlightPlanStateLockStateChanged>"
  "bebop_msgs/CommonFlightPlanStateLockStateChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonFlightPlanStateLockStateChanged)))
  "Returns string type for a message object of type 'CommonFlightPlanStateLockStateChanged"
  "bebop_msgs/CommonFlightPlanStateLockStateChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonFlightPlanStateLockStateChanged>)))
  "Returns md5sum for a message object of type '<CommonFlightPlanStateLockStateChanged>"
  "589c834fe271c4b4d92bfc1fd4d150a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonFlightPlanStateLockStateChanged)))
  "Returns md5sum for a message object of type 'CommonFlightPlanStateLockStateChanged"
  "589c834fe271c4b4d92bfc1fd4d150a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonFlightPlanStateLockStateChanged>)))
  "Returns full string definition for message of type '<CommonFlightPlanStateLockStateChanged>"
  (cl:format cl:nil "# CommonFlightPlanStateLockStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: FlightPlan lock state.\\n Represents the fact that the controller is able or not to stop or pause a playing FlightPlan~%~%Header header~%~%# 1 if FlightPlan is locked: cant pause or stop FlightPlan. 0 if FlightPlan is unlocked: pause or stop available.~%uint8 LockState~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonFlightPlanStateLockStateChanged)))
  "Returns full string definition for message of type 'CommonFlightPlanStateLockStateChanged"
  (cl:format cl:nil "# CommonFlightPlanStateLockStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: FlightPlan lock state.\\n Represents the fact that the controller is able or not to stop or pause a playing FlightPlan~%~%Header header~%~%# 1 if FlightPlan is locked: cant pause or stop FlightPlan. 0 if FlightPlan is unlocked: pause or stop available.~%uint8 LockState~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonFlightPlanStateLockStateChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonFlightPlanStateLockStateChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonFlightPlanStateLockStateChanged
    (cl:cons ':header (header msg))
    (cl:cons ':LockState (LockState msg))
))
