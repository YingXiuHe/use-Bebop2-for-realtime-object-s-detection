; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonAnimationsStateList.msg.html

(cl:defclass <CommonAnimationsStateList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (anim
    :reader anim
    :initarg :anim
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (error
    :reader error
    :initarg :error
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonAnimationsStateList (<CommonAnimationsStateList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonAnimationsStateList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonAnimationsStateList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonAnimationsStateList> is deprecated: use bebop_msgs-msg:CommonAnimationsStateList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonAnimationsStateList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'anim-val :lambda-list '(m))
(cl:defmethod anim-val ((m <CommonAnimationsStateList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:anim-val is deprecated.  Use bebop_msgs-msg:anim instead.")
  (anim m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <CommonAnimationsStateList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:state-val is deprecated.  Use bebop_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <CommonAnimationsStateList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:error-val is deprecated.  Use bebop_msgs-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CommonAnimationsStateList>)))
    "Constants for message type '<CommonAnimationsStateList>"
  '((:ANIM_HEADLIGHTS_FLASH . 0)
    (:ANIM_HEADLIGHTS_BLINK . 1)
    (:ANIM_HEADLIGHTS_OSCILLATION . 2)
    (:ANIM_SPIN . 3)
    (:ANIM_TAP . 4)
    (:ANIM_SLOW_SHAKE . 5)
    (:ANIM_METRONOME . 6)
    (:ANIM_ONDULATION . 7)
    (:ANIM_SPIN_JUMP . 8)
    (:ANIM_SPIN_TO_POSTURE . 9)
    (:ANIM_SPIRAL . 10)
    (:ANIM_SLALOM . 11)
    (:ANIM_BOOST . 12)
    (:ANIM_LOOPING . 13)
    (:ANIM_BARREL_ROLL_180_RIGHT . 14)
    (:ANIM_BARREL_ROLL_180_LEFT . 15)
    (:ANIM_BACKSWAP . 16)
    (:STATE_STOPPED . 0)
    (:STATE_STARTED . 1)
    (:STATE_NOTAVAILABLE . 2)
    (:ERROR_OK . 0)
    (:ERROR_UNKNOWN . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CommonAnimationsStateList)))
    "Constants for message type 'CommonAnimationsStateList"
  '((:ANIM_HEADLIGHTS_FLASH . 0)
    (:ANIM_HEADLIGHTS_BLINK . 1)
    (:ANIM_HEADLIGHTS_OSCILLATION . 2)
    (:ANIM_SPIN . 3)
    (:ANIM_TAP . 4)
    (:ANIM_SLOW_SHAKE . 5)
    (:ANIM_METRONOME . 6)
    (:ANIM_ONDULATION . 7)
    (:ANIM_SPIN_JUMP . 8)
    (:ANIM_SPIN_TO_POSTURE . 9)
    (:ANIM_SPIRAL . 10)
    (:ANIM_SLALOM . 11)
    (:ANIM_BOOST . 12)
    (:ANIM_LOOPING . 13)
    (:ANIM_BARREL_ROLL_180_RIGHT . 14)
    (:ANIM_BARREL_ROLL_180_LEFT . 15)
    (:ANIM_BACKSWAP . 16)
    (:STATE_STOPPED . 0)
    (:STATE_STARTED . 1)
    (:STATE_NOTAVAILABLE . 2)
    (:ERROR_OK . 0)
    (:ERROR_UNKNOWN . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonAnimationsStateList>) ostream)
  "Serializes a message object of type '<CommonAnimationsStateList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'anim)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonAnimationsStateList>) istream)
  "Deserializes a message object of type '<CommonAnimationsStateList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'anim)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonAnimationsStateList>)))
  "Returns string type for a message object of type '<CommonAnimationsStateList>"
  "bebop_msgs/CommonAnimationsStateList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonAnimationsStateList)))
  "Returns string type for a message object of type 'CommonAnimationsStateList"
  "bebop_msgs/CommonAnimationsStateList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonAnimationsStateList>)))
  "Returns md5sum for a message object of type '<CommonAnimationsStateList>"
  "c89b289a8f935a33f0451effae3f9508")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonAnimationsStateList)))
  "Returns md5sum for a message object of type 'CommonAnimationsStateList"
  "c89b289a8f935a33f0451effae3f9508")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonAnimationsStateList>)))
  "Returns full string definition for message of type '<CommonAnimationsStateList>"
  (cl:format cl:nil "# CommonAnimationsStateList~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Paramaterless animations state list.~%~%Header header~%~%# Animation type.~%uint8 anim_HEADLIGHTS_FLASH=0  # Flash headlights.~%uint8 anim_HEADLIGHTS_BLINK=1  # Blink headlights.~%uint8 anim_HEADLIGHTS_OSCILLATION=2  # Oscillating headlights.~%uint8 anim_SPIN=3  # Spin animation.~%uint8 anim_TAP=4  # Tap animation.~%uint8 anim_SLOW_SHAKE=5  # Slow shake animation.~%uint8 anim_METRONOME=6  # Metronome animation.~%uint8 anim_ONDULATION=7  # Standing dance animation.~%uint8 anim_SPIN_JUMP=8  # Spin jump animation.~%uint8 anim_SPIN_TO_POSTURE=9  # Spin that end in standing posture, or in jumper if it was standing animation.~%uint8 anim_SPIRAL=10  # Spiral animation.~%uint8 anim_SLALOM=11  # Slalom animation.~%uint8 anim_BOOST=12  # Boost animation.~%uint8 anim_LOOPING=13  # Make a looping. (Only for WingX)~%uint8 anim_BARREL_ROLL_180_RIGHT=14  # Make a barrel roll of 180 degree turning on right. (Only for WingX)~%uint8 anim_BARREL_ROLL_180_LEFT=15  # Make a barrel roll of 180 degree turning on left. (Only for WingX)~%uint8 anim_BACKSWAP=16  # Put the drone upside down. (Only for WingX)~%uint8 anim~%# State of the animation~%uint8 state_stopped=0  # animation is stopped~%uint8 state_started=1  # animation is started~%uint8 state_notAvailable=2  # The animation is not available~%uint8 state~%# Error to explain the state~%uint8 error_ok=0  # No Error~%uint8 error_unknown=1  # Unknown generic error~%uint8 error~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonAnimationsStateList)))
  "Returns full string definition for message of type 'CommonAnimationsStateList"
  (cl:format cl:nil "# CommonAnimationsStateList~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Paramaterless animations state list.~%~%Header header~%~%# Animation type.~%uint8 anim_HEADLIGHTS_FLASH=0  # Flash headlights.~%uint8 anim_HEADLIGHTS_BLINK=1  # Blink headlights.~%uint8 anim_HEADLIGHTS_OSCILLATION=2  # Oscillating headlights.~%uint8 anim_SPIN=3  # Spin animation.~%uint8 anim_TAP=4  # Tap animation.~%uint8 anim_SLOW_SHAKE=5  # Slow shake animation.~%uint8 anim_METRONOME=6  # Metronome animation.~%uint8 anim_ONDULATION=7  # Standing dance animation.~%uint8 anim_SPIN_JUMP=8  # Spin jump animation.~%uint8 anim_SPIN_TO_POSTURE=9  # Spin that end in standing posture, or in jumper if it was standing animation.~%uint8 anim_SPIRAL=10  # Spiral animation.~%uint8 anim_SLALOM=11  # Slalom animation.~%uint8 anim_BOOST=12  # Boost animation.~%uint8 anim_LOOPING=13  # Make a looping. (Only for WingX)~%uint8 anim_BARREL_ROLL_180_RIGHT=14  # Make a barrel roll of 180 degree turning on right. (Only for WingX)~%uint8 anim_BARREL_ROLL_180_LEFT=15  # Make a barrel roll of 180 degree turning on left. (Only for WingX)~%uint8 anim_BACKSWAP=16  # Put the drone upside down. (Only for WingX)~%uint8 anim~%# State of the animation~%uint8 state_stopped=0  # animation is stopped~%uint8 state_started=1  # animation is started~%uint8 state_notAvailable=2  # The animation is not available~%uint8 state~%# Error to explain the state~%uint8 error_ok=0  # No Error~%uint8 error_unknown=1  # Unknown generic error~%uint8 error~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonAnimationsStateList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonAnimationsStateList>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonAnimationsStateList
    (cl:cons ':header (header msg))
    (cl:cons ':anim (anim msg))
    (cl:cons ':state (state msg))
    (cl:cons ':error (error msg))
))
