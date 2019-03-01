;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3GPSStateNumberOfSatelliteChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3GPSStateNumberOfSatelliteChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3GPSSTATENUMBEROFSATELLITECHANGED")
  (make-package "BEBOP_MSGS::ARDRONE3GPSSTATENUMBEROFSATELLITECHANGED"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3GPSStateNumberOfSatelliteChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::Ardrone3GPSStateNumberOfSatelliteChanged
  :super ros::object
  :slots (_header _numberOfSatellite ))

(defmethod bebop_msgs::Ardrone3GPSStateNumberOfSatelliteChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:numberOfSatellite __numberOfSatellite) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _numberOfSatellite (round __numberOfSatellite))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:numberOfSatellite
   (&optional __numberOfSatellite)
   (if __numberOfSatellite (setq _numberOfSatellite __numberOfSatellite)) _numberOfSatellite)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _numberOfSatellite
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _numberOfSatellite
       (write-byte _numberOfSatellite s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _numberOfSatellite
     (setq _numberOfSatellite (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3GPSStateNumberOfSatelliteChanged :md5sum-) "07100adadfd4e952508665bf499f7945")
(setf (get bebop_msgs::Ardrone3GPSStateNumberOfSatelliteChanged :datatype-) "bebop_msgs/Ardrone3GPSStateNumberOfSatelliteChanged")
(setf (get bebop_msgs::Ardrone3GPSStateNumberOfSatelliteChanged :definition-)
      "# Ardrone3GPSStateNumberOfSatelliteChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Number of GPS satellites.

Header header

# The number of satellite
uint8 numberOfSatellite

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



(provide :bebop_msgs/Ardrone3GPSStateNumberOfSatelliteChanged "07100adadfd4e952508665bf499f7945")


