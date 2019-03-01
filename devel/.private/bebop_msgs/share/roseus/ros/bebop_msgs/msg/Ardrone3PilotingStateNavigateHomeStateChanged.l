;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3PilotingStateNavigateHomeStateChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3PilotingStateNavigateHomeStateChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED")
  (make-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3PilotingStateNavigateHomeStateChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STATE_AVAILABLE*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(shadow '*STATE_AVAILABLE* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateNavigateHomeStateChanged::*STATE_AVAILABLE* 0)
(intern "*STATE_INPROGRESS*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(shadow '*STATE_INPROGRESS* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateNavigateHomeStateChanged::*STATE_INPROGRESS* 1)
(intern "*STATE_UNAVAILABLE*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(shadow '*STATE_UNAVAILABLE* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateNavigateHomeStateChanged::*STATE_UNAVAILABLE* 2)
(intern "*STATE_PENDING*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(shadow '*STATE_PENDING* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateNavigateHomeStateChanged::*STATE_PENDING* 3)
(intern "*REASON_USERREQUEST*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(shadow '*REASON_USERREQUEST* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateNavigateHomeStateChanged::*REASON_USERREQUEST* 0)
(intern "*REASON_CONNECTIONLOST*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(shadow '*REASON_CONNECTIONLOST* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateNavigateHomeStateChanged::*REASON_CONNECTIONLOST* 1)
(intern "*REASON_LOWBATTERY*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(shadow '*REASON_LOWBATTERY* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateNavigateHomeStateChanged::*REASON_LOWBATTERY* 2)
(intern "*REASON_FINISHED*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(shadow '*REASON_FINISHED* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateNavigateHomeStateChanged::*REASON_FINISHED* 3)
(intern "*REASON_STOPPED*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(shadow '*REASON_STOPPED* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateNavigateHomeStateChanged::*REASON_STOPPED* 4)
(intern "*REASON_DISABLED*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(shadow '*REASON_DISABLED* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateNavigateHomeStateChanged::*REASON_DISABLED* 5)
(intern "*REASON_ENABLED*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(shadow '*REASON_ENABLED* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATENAVIGATEHOMESTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateNavigateHomeStateChanged::*REASON_ENABLED* 6)
(defclass bebop_msgs::Ardrone3PilotingStateNavigateHomeStateChanged
  :super ros::object
  :slots (_header _state _reason ))

(defmethod bebop_msgs::Ardrone3PilotingStateNavigateHomeStateChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) 0)
    ((:reason __reason) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _state (round __state))
   (setq _reason (round __reason))
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
  (:reason
   (&optional __reason)
   (if __reason (setq _reason __reason)) _reason)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _state
    1
    ;; uint8 _reason
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
     ;; uint8 _reason
       (write-byte _reason s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reason
     (setq _reason (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3PilotingStateNavigateHomeStateChanged :md5sum-) "a0ed1aa9e290b08479307e09890d8141")
(setf (get bebop_msgs::Ardrone3PilotingStateNavigateHomeStateChanged :datatype-) "bebop_msgs/Ardrone3PilotingStateNavigateHomeStateChanged")
(setf (get bebop_msgs::Ardrone3PilotingStateNavigateHomeStateChanged :definition-)
      "# Ardrone3PilotingStateNavigateHomeStateChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Return home state.\\n Availability is related to gps fix, magnetometer calibration.

Header header

# State of navigate home
uint8 state_available=0  # Navigate home is available
uint8 state_inProgress=1  # Navigate home is in progress
uint8 state_unavailable=2  # Navigate home is not available
uint8 state_pending=3  # Navigate home has been received, but its process is pending
uint8 state
# Reason of the state
uint8 reason_userRequest=0  # User requested a navigate home (available-&gt;inProgress)
uint8 reason_connectionLost=1  # Connection between controller and product lost (available-&gt;inProgress)
uint8 reason_lowBattery=2  # Low battery occurred (available-&gt;inProgress)
uint8 reason_finished=3  # Navigate home is finished (inProgress-&gt;available)
uint8 reason_stopped=4  # Navigate home has been stopped (inProgress-&gt;available)
uint8 reason_disabled=5  # Navigate home disabled by product (inProgress-&gt;unavailable or available-&gt;unavailable)
uint8 reason_enabled=6  # Navigate home enabled by product (unavailable-&gt;available)
uint8 reason

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



(provide :bebop_msgs/Ardrone3PilotingStateNavigateHomeStateChanged "a0ed1aa9e290b08479307e09890d8141")


