;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3PilotingStateFlyingStateChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3PilotingStateFlyingStateChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEFLYINGSTATECHANGED")
  (make-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEFLYINGSTATECHANGED"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3PilotingStateFlyingStateChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STATE_LANDED*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEFLYINGSTATECHANGED"))
(shadow '*STATE_LANDED* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEFLYINGSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateFlyingStateChanged::*STATE_LANDED* 0)
(intern "*STATE_TAKINGOFF*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEFLYINGSTATECHANGED"))
(shadow '*STATE_TAKINGOFF* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEFLYINGSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateFlyingStateChanged::*STATE_TAKINGOFF* 1)
(intern "*STATE_HOVERING*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEFLYINGSTATECHANGED"))
(shadow '*STATE_HOVERING* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEFLYINGSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateFlyingStateChanged::*STATE_HOVERING* 2)
(intern "*STATE_FLYING*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEFLYINGSTATECHANGED"))
(shadow '*STATE_FLYING* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEFLYINGSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateFlyingStateChanged::*STATE_FLYING* 3)
(intern "*STATE_LANDING*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEFLYINGSTATECHANGED"))
(shadow '*STATE_LANDING* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEFLYINGSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateFlyingStateChanged::*STATE_LANDING* 4)
(intern "*STATE_EMERGENCY*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEFLYINGSTATECHANGED"))
(shadow '*STATE_EMERGENCY* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEFLYINGSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateFlyingStateChanged::*STATE_EMERGENCY* 5)
(intern "*STATE_USERTAKEOFF*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEFLYINGSTATECHANGED"))
(shadow '*STATE_USERTAKEOFF* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEFLYINGSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateFlyingStateChanged::*STATE_USERTAKEOFF* 6)
(intern "*STATE_MOTOR_RAMPING*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEFLYINGSTATECHANGED"))
(shadow '*STATE_MOTOR_RAMPING* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEFLYINGSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateFlyingStateChanged::*STATE_MOTOR_RAMPING* 7)
(intern "*STATE_EMERGENCY_LANDING*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEFLYINGSTATECHANGED"))
(shadow '*STATE_EMERGENCY_LANDING* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEFLYINGSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateFlyingStateChanged::*STATE_EMERGENCY_LANDING* 8)
(defclass bebop_msgs::Ardrone3PilotingStateFlyingStateChanged
  :super ros::object
  :slots (_header _state ))

(defmethod bebop_msgs::Ardrone3PilotingStateFlyingStateChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _state (round __state))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3PilotingStateFlyingStateChanged :md5sum-) "f628b761a9125ace909b8b2c789eb09e")
(setf (get bebop_msgs::Ardrone3PilotingStateFlyingStateChanged :datatype-) "bebop_msgs/Ardrone3PilotingStateFlyingStateChanged")
(setf (get bebop_msgs::Ardrone3PilotingStateFlyingStateChanged :definition-)
      "# Ardrone3PilotingStateFlyingStateChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Flying state.

Header header

# Drone flying state
uint8 state_landed=0  # Landed state
uint8 state_takingoff=1  # Taking off state
uint8 state_hovering=2  # Hovering / Circling (for fixed wings) state
uint8 state_flying=3  # Flying state
uint8 state_landing=4  # Landing state
uint8 state_emergency=5  # Emergency state
uint8 state_usertakeoff=6  # User take off state. Waiting for user action to take off.
uint8 state_motor_ramping=7  # Motor ramping state (for fixed wings).
uint8 state_emergency_landing=8  # Emergency landing state. Drone autopilot has detected defective sensor(s). Only Yaw argument in PCMD is taken into account. All others flying commands are ignored.
uint8 state

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :bebop_msgs/Ardrone3PilotingStateFlyingStateChanged "f628b761a9125ace909b8b2c789eb09e")


