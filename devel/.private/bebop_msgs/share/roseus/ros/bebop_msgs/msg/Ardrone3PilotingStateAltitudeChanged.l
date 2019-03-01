;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3PilotingStateAltitudeChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3PilotingStateAltitudeChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEALTITUDECHANGED")
  (make-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEALTITUDECHANGED"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3PilotingStateAltitudeChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::Ardrone3PilotingStateAltitudeChanged
  :super ros::object
  :slots (_header _altitude ))

(defmethod bebop_msgs::Ardrone3PilotingStateAltitudeChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:altitude __altitude) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _altitude (float __altitude))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _altitude
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3PilotingStateAltitudeChanged :md5sum-) "5073f650d09c8192d358641b48a0204b")
(setf (get bebop_msgs::Ardrone3PilotingStateAltitudeChanged :datatype-) "bebop_msgs/Ardrone3PilotingStateAltitudeChanged")
(setf (get bebop_msgs::Ardrone3PilotingStateAltitudeChanged :definition-)
      "# Ardrone3PilotingStateAltitudeChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Drones altitude changed.\\n The altitude reported is the altitude above the take off point.\\n To get the altitude above sea level, see [PositionChanged](#1-4-4).

Header header

# Altitude in meters
float64 altitude

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



(provide :bebop_msgs/Ardrone3PilotingStateAltitudeChanged "5073f650d09c8192d358641b48a0204b")


