;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3PilotingStateLandingStateChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3PilotingStateLandingStateChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATELANDINGSTATECHANGED")
  (make-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATELANDINGSTATECHANGED"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3PilotingStateLandingStateChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STATE_LINEAR*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATELANDINGSTATECHANGED"))
(shadow '*STATE_LINEAR* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATELANDINGSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateLandingStateChanged::*STATE_LINEAR* 0)
(intern "*STATE_SPIRAL*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATELANDINGSTATECHANGED"))
(shadow '*STATE_SPIRAL* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATELANDINGSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateLandingStateChanged::*STATE_SPIRAL* 1)
(defclass bebop_msgs::Ardrone3PilotingStateLandingStateChanged
  :super ros::object
  :slots (_header _state ))

(defmethod bebop_msgs::Ardrone3PilotingStateLandingStateChanged
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

(setf (get bebop_msgs::Ardrone3PilotingStateLandingStateChanged :md5sum-) "9cfc779639f11cdcc053988fd10033e0")
(setf (get bebop_msgs::Ardrone3PilotingStateLandingStateChanged :datatype-) "bebop_msgs/Ardrone3PilotingStateLandingStateChanged")
(setf (get bebop_msgs::Ardrone3PilotingStateLandingStateChanged :definition-)
      "# Ardrone3PilotingStateLandingStateChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Landing state.\\n Only available for fixed wings (which have two landing modes).

Header header

# Drone landing state
uint8 state_linear=0  # Linear landing
uint8 state_spiral=1  # Spiral landing
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



(provide :bebop_msgs/Ardrone3PilotingStateLandingStateChanged "9cfc779639f11cdcc053988fd10033e0")


