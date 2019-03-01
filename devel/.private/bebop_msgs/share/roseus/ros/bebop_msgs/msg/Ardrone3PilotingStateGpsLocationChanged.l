;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3PilotingStateGpsLocationChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3PilotingStateGpsLocationChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEGPSLOCATIONCHANGED")
  (make-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATEGPSLOCATIONCHANGED"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3PilotingStateGpsLocationChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::Ardrone3PilotingStateGpsLocationChanged
  :super ros::object
  :slots (_header _latitude _longitude _altitude _latitude_accuracy _longitude_accuracy _altitude_accuracy ))

(defmethod bebop_msgs::Ardrone3PilotingStateGpsLocationChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:latitude_accuracy __latitude_accuracy) 0)
    ((:longitude_accuracy __longitude_accuracy) 0)
    ((:altitude_accuracy __altitude_accuracy) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _latitude_accuracy (round __latitude_accuracy))
   (setq _longitude_accuracy (round __longitude_accuracy))
   (setq _altitude_accuracy (round __altitude_accuracy))
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
  (:latitude_accuracy
   (&optional __latitude_accuracy)
   (if __latitude_accuracy (setq _latitude_accuracy __latitude_accuracy)) _latitude_accuracy)
  (:longitude_accuracy
   (&optional __longitude_accuracy)
   (if __longitude_accuracy (setq _longitude_accuracy __longitude_accuracy)) _longitude_accuracy)
  (:altitude_accuracy
   (&optional __altitude_accuracy)
   (if __altitude_accuracy (setq _altitude_accuracy __altitude_accuracy)) _altitude_accuracy)
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
    ;; int8 _latitude_accuracy
    1
    ;; int8 _longitude_accuracy
    1
    ;; int8 _altitude_accuracy
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
     ;; int8 _latitude_accuracy
       (write-byte _latitude_accuracy s)
     ;; int8 _longitude_accuracy
       (write-byte _longitude_accuracy s)
     ;; int8 _altitude_accuracy
       (write-byte _altitude_accuracy s)
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
   ;; int8 _latitude_accuracy
     (setq _latitude_accuracy (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _latitude_accuracy 127) (setq _latitude_accuracy (- _latitude_accuracy 256)))
   ;; int8 _longitude_accuracy
     (setq _longitude_accuracy (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _longitude_accuracy 127) (setq _longitude_accuracy (- _longitude_accuracy 256)))
   ;; int8 _altitude_accuracy
     (setq _altitude_accuracy (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _altitude_accuracy 127) (setq _altitude_accuracy (- _altitude_accuracy 256)))
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3PilotingStateGpsLocationChanged :md5sum-) "ac3eedcc2193887dd8d2257bf807fbae")
(setf (get bebop_msgs::Ardrone3PilotingStateGpsLocationChanged :datatype-) "bebop_msgs/Ardrone3PilotingStateGpsLocationChanged")
(setf (get bebop_msgs::Ardrone3PilotingStateGpsLocationChanged :definition-)
      "# Ardrone3PilotingStateGpsLocationChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Drones location changed.\\n This event is meant to replace [PositionChanged](#1-4-4).

Header header

# Latitude location in decimal degrees (500.0 if not available)
float64 latitude
# Longitude location in decimal degrees (500.0 if not available)
float64 longitude
# Altitude location in meters.
float64 altitude
# Latitude location error in meters (1 sigma/standard deviation) -1 if not available.
int8 latitude_accuracy
# Longitude location error in meters (1 sigma/standard deviation) -1 if not available.
int8 longitude_accuracy
# Altitude location error in meters (1 sigma/standard deviation) -1 if not available.
int8 altitude_accuracy

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



(provide :bebop_msgs/Ardrone3PilotingStateGpsLocationChanged "ac3eedcc2193887dd8d2257bf807fbae")


