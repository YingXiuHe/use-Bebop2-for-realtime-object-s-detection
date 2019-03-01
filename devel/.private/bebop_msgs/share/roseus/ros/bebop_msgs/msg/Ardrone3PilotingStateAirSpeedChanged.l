;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3PilotingStateAirSpeedChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3PilotingStateAirSpeedChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEAIRSPEEDCHANGED")
  (make-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEAIRSPEEDCHANGED"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3PilotingStateAirSpeedChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::Ardrone3PilotingStateAirSpeedChanged
  :super ros::object
  :slots (_header _airSpeed ))

(defmethod bebop_msgs::Ardrone3PilotingStateAirSpeedChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:airSpeed __airSpeed) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _airSpeed (float __airSpeed))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:airSpeed
   (&optional __airSpeed)
   (if __airSpeed (setq _airSpeed __airSpeed)) _airSpeed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _airSpeed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _airSpeed
       (sys::poke _airSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _airSpeed
     (setq _airSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3PilotingStateAirSpeedChanged :md5sum-) "35ac9dc6b6c80598705871c83379a4f9")
(setf (get bebop_msgs::Ardrone3PilotingStateAirSpeedChanged :datatype-) "bebop_msgs/Ardrone3PilotingStateAirSpeedChanged")
(setf (get bebop_msgs::Ardrone3PilotingStateAirSpeedChanged :definition-)
      "# Ardrone3PilotingStateAirSpeedChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Drones air speed changed\\n Expressed in the drones referential.

Header header

# Speed relative to air on x axis (speed is always &gt; 0) (in m/s)
float32 airSpeed

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



(provide :bebop_msgs/Ardrone3PilotingStateAirSpeedChanged "35ac9dc6b6c80598705871c83379a4f9")


