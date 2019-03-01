;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3PilotingStateAlertStateChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3PilotingStateAlertStateChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEALERTSTATECHANGED")
  (make-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEALERTSTATECHANGED"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3PilotingStateAlertStateChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STATE_NONE*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEALERTSTATECHANGED"))
(shadow '*STATE_NONE* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEALERTSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateAlertStateChanged::*STATE_NONE* 0)
(intern "*STATE_USER*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEALERTSTATECHANGED"))
(shadow '*STATE_USER* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEALERTSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateAlertStateChanged::*STATE_USER* 1)
(intern "*STATE_CUT_OUT*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEALERTSTATECHANGED"))
(shadow '*STATE_CUT_OUT* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEALERTSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateAlertStateChanged::*STATE_CUT_OUT* 2)
(intern "*STATE_CRITICAL_BATTERY*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEALERTSTATECHANGED"))
(shadow '*STATE_CRITICAL_BATTERY* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEALERTSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateAlertStateChanged::*STATE_CRITICAL_BATTERY* 3)
(intern "*STATE_LOW_BATTERY*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEALERTSTATECHANGED"))
(shadow '*STATE_LOW_BATTERY* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEALERTSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateAlertStateChanged::*STATE_LOW_BATTERY* 4)
(intern "*STATE_TOO_MUCH_ANGLE*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEALERTSTATECHANGED"))
(shadow '*STATE_TOO_MUCH_ANGLE* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEALERTSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStateAlertStateChanged::*STATE_TOO_MUCH_ANGLE* 5)
(defclass bebop_msgs::Ardrone3PilotingStateAlertStateChanged
  :super ros::object
  :slots (_header _state ))

(defmethod bebop_msgs::Ardrone3PilotingStateAlertStateChanged
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

(setf (get bebop_msgs::Ardrone3PilotingStateAlertStateChanged :md5sum-) "c40d562736a7573efc225e24b8785de0")
(setf (get bebop_msgs::Ardrone3PilotingStateAlertStateChanged :datatype-) "bebop_msgs/Ardrone3PilotingStateAlertStateChanged")
(setf (get bebop_msgs::Ardrone3PilotingStateAlertStateChanged :definition-)
      "# Ardrone3PilotingStateAlertStateChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Alert state.

Header header

# Drone alert state
uint8 state_none=0  # No alert
uint8 state_user=1  # User emergency alert
uint8 state_cut_out=2  # Cut out alert
uint8 state_critical_battery=3  # Critical battery alert
uint8 state_low_battery=4  # Low battery alert
uint8 state_too_much_angle=5  # The angle of the drone is too high
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



(provide :bebop_msgs/Ardrone3PilotingStateAlertStateChanged "c40d562736a7573efc225e24b8785de0")


