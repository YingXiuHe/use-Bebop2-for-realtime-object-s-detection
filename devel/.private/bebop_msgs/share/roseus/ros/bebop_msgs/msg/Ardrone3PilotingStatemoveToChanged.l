;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3PilotingStatemoveToChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3PilotingStatemoveToChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEMOVETOCHANGED")
  (make-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEMOVETOCHANGED"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3PilotingStatemoveToChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ORIENTATION_MODE_NONE*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEMOVETOCHANGED"))
(shadow '*ORIENTATION_MODE_NONE* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEMOVETOCHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStatemoveToChanged::*ORIENTATION_MODE_NONE* 0)
(intern "*ORIENTATION_MODE_TO_TARGET*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEMOVETOCHANGED"))
(shadow '*ORIENTATION_MODE_TO_TARGET* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEMOVETOCHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStatemoveToChanged::*ORIENTATION_MODE_TO_TARGET* 1)
(intern "*ORIENTATION_MODE_HEADING_START*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEMOVETOCHANGED"))
(shadow '*ORIENTATION_MODE_HEADING_START* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEMOVETOCHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStatemoveToChanged::*ORIENTATION_MODE_HEADING_START* 2)
(intern "*ORIENTATION_MODE_HEADING_DURING*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEMOVETOCHANGED"))
(shadow '*ORIENTATION_MODE_HEADING_DURING* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEMOVETOCHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStatemoveToChanged::*ORIENTATION_MODE_HEADING_DURING* 3)
(intern "*STATUS_RUNNING*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEMOVETOCHANGED"))
(shadow '*STATUS_RUNNING* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEMOVETOCHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStatemoveToChanged::*STATUS_RUNNING* 0)
(intern "*STATUS_DONE*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEMOVETOCHANGED"))
(shadow '*STATUS_DONE* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEMOVETOCHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStatemoveToChanged::*STATUS_DONE* 1)
(intern "*STATUS_CANCELED*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEMOVETOCHANGED"))
(shadow '*STATUS_CANCELED* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEMOVETOCHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStatemoveToChanged::*STATUS_CANCELED* 2)
(intern "*STATUS_ERROR*" (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEMOVETOCHANGED"))
(shadow '*STATUS_ERROR* (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEMOVETOCHANGED"))
(defconstant bebop_msgs::Ardrone3PilotingStatemoveToChanged::*STATUS_ERROR* 3)
(defclass bebop_msgs::Ardrone3PilotingStatemoveToChanged
  :super ros::object
  :slots (_header _latitude _longitude _altitude _orientation_mode _heading _status ))

(defmethod bebop_msgs::Ardrone3PilotingStatemoveToChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:orientation_mode __orientation_mode) 0)
    ((:heading __heading) 0.0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _orientation_mode (round __orientation_mode))
   (setq _heading (float __heading))
   (setq _status (round __status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:orientation_mode
   (&optional __orientation_mode)
   (if __orientation_mode (setq _orientation_mode __orientation_mode)) _orientation_mode)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; uint8 _orientation_mode
    1
    ;; float32 _heading
    4
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _orientation_mode
       (write-byte _orientation_mode s)
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _orientation_mode
     (setq _orientation_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3PilotingStatemoveToChanged :md5sum-) "f356580a128658358cde541e12e3218b")
(setf (get bebop_msgs::Ardrone3PilotingStatemoveToChanged :datatype-) "bebop_msgs/Ardrone3PilotingStatemoveToChanged")
(setf (get bebop_msgs::Ardrone3PilotingStatemoveToChanged :definition-)
      "# Ardrone3PilotingStatemoveToChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: The drone moves or moved to a given location.

Header header

# Latitude of the location (in degrees) to reach
float64 latitude
# Longitude of the location (in degrees) to reach
float64 longitude
# Altitude above sea level (in m) to reach
float64 altitude
# Orientation mode of the move to
uint8 orientation_mode_NONE=0  # The drone wont change its orientation
uint8 orientation_mode_TO_TARGET=1  # The drone will make a rotation to look in direction of the given location
uint8 orientation_mode_HEADING_START=2  # The drone will orientate itself to the given heading before moving to the location
uint8 orientation_mode_HEADING_DURING=3  # The drone will orientate itself to the given heading while moving to the location
uint8 orientation_mode
# Heading (relative to the North in degrees). This value is only used if the orientation mode is HEADING_START or HEADING_DURING
float32 heading
# Status of the move to
uint8 status_RUNNING=0  # The drone is actually flying to the given position
uint8 status_DONE=1  # The drone has reached the target
uint8 status_CANCELED=2  # The move to has been canceled, either by a new moveTo command or by a CancelMoveTo command.
uint8 status_ERROR=3  # The move to has not been finished or started because of an error.
uint8 status

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



(provide :bebop_msgs/Ardrone3PilotingStatemoveToChanged "f356580a128658358cde541e12e3218b")


