;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3GPSStateHomeTypeAvailabilityChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3GPSStateHomeTypeAvailabilityChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3GPSSTATEHOMETYPEAVAILABILITYCHANGED")
  (make-package "BEBOP_MSGS::ARDRONE3GPSSTATEHOMETYPEAVAILABILITYCHANGED"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3GPSStateHomeTypeAvailabilityChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*TYPE_TAKEOFF*" (find-package "BEBOP_MSGS::ARDRONE3GPSSTATEHOMETYPEAVAILABILITYCHANGED"))
(shadow '*TYPE_TAKEOFF* (find-package "BEBOP_MSGS::ARDRONE3GPSSTATEHOMETYPEAVAILABILITYCHANGED"))
(defconstant bebop_msgs::Ardrone3GPSStateHomeTypeAvailabilityChanged::*TYPE_TAKEOFF* 0)
(intern "*TYPE_PILOT*" (find-package "BEBOP_MSGS::ARDRONE3GPSSTATEHOMETYPEAVAILABILITYCHANGED"))
(shadow '*TYPE_PILOT* (find-package "BEBOP_MSGS::ARDRONE3GPSSTATEHOMETYPEAVAILABILITYCHANGED"))
(defconstant bebop_msgs::Ardrone3GPSStateHomeTypeAvailabilityChanged::*TYPE_PILOT* 1)
(intern "*TYPE_FIRST_FIX*" (find-package "BEBOP_MSGS::ARDRONE3GPSSTATEHOMETYPEAVAILABILITYCHANGED"))
(shadow '*TYPE_FIRST_FIX* (find-package "BEBOP_MSGS::ARDRONE3GPSSTATEHOMETYPEAVAILABILITYCHANGED"))
(defconstant bebop_msgs::Ardrone3GPSStateHomeTypeAvailabilityChanged::*TYPE_FIRST_FIX* 2)
(intern "*TYPE_FOLLOWEE*" (find-package "BEBOP_MSGS::ARDRONE3GPSSTATEHOMETYPEAVAILABILITYCHANGED"))
(shadow '*TYPE_FOLLOWEE* (find-package "BEBOP_MSGS::ARDRONE3GPSSTATEHOMETYPEAVAILABILITYCHANGED"))
(defconstant bebop_msgs::Ardrone3GPSStateHomeTypeAvailabilityChanged::*TYPE_FOLLOWEE* 3)
(defclass bebop_msgs::Ardrone3GPSStateHomeTypeAvailabilityChanged
  :super ros::object
  :slots (_header _type _available ))

(defmethod bebop_msgs::Ardrone3GPSStateHomeTypeAvailabilityChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) 0)
    ((:available __available) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (round __type))
   (setq _available (round __available))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _type
    1
    ;; uint8 _available
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _type
       (write-byte _type s)
     ;; uint8 _available
       (write-byte _available s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3GPSStateHomeTypeAvailabilityChanged :md5sum-) "d999243a44694f8883e478c6f2492144")
(setf (get bebop_msgs::Ardrone3GPSStateHomeTypeAvailabilityChanged :datatype-) "bebop_msgs/Ardrone3GPSStateHomeTypeAvailabilityChanged")
(setf (get bebop_msgs::Ardrone3GPSStateHomeTypeAvailabilityChanged :definition-)
      "# Ardrone3GPSStateHomeTypeAvailabilityChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Home type availability.

Header header

# The type of the return home
uint8 type_TAKEOFF=0  # The drone has enough information to return to the take off position
uint8 type_PILOT=1  # The drone has enough information to return to the pilot position
uint8 type_FIRST_FIX=2  # The drone has not enough information, it will return to the first GPS fix
uint8 type_FOLLOWEE=3  # The drone has enough information to return to the target of the current (or last) follow me
uint8 type
# 1 if this type is available, 0 otherwise
uint8 available

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



(provide :bebop_msgs/Ardrone3GPSStateHomeTypeAvailabilityChanged "d999243a44694f8883e478c6f2492144")


