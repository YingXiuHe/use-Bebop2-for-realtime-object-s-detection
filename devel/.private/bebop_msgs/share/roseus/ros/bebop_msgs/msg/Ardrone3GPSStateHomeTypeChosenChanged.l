;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3GPSStateHomeTypeChosenChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3GPSStateHomeTypeChosenChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3GPSSTATEHOMETYPECHOSENCHANGED")
  (make-package "BEBOP_MSGS::ARDRONE3GPSSTATEHOMETYPECHOSENCHANGED"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3GPSStateHomeTypeChosenChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*TYPE_TAKEOFF*" (find-package "BEBOP_MSGS::ARDRONE3GPSSTATEHOMETYPECHOSENCHANGED"))
(shadow '*TYPE_TAKEOFF* (find-package "BEBOP_MSGS::ARDRONE3GPSSTATEHOMETYPECHOSENCHANGED"))
(defconstant bebop_msgs::Ardrone3GPSStateHomeTypeChosenChanged::*TYPE_TAKEOFF* 0)
(intern "*TYPE_PILOT*" (find-package "BEBOP_MSGS::ARDRONE3GPSSTATEHOMETYPECHOSENCHANGED"))
(shadow '*TYPE_PILOT* (find-package "BEBOP_MSGS::ARDRONE3GPSSTATEHOMETYPECHOSENCHANGED"))
(defconstant bebop_msgs::Ardrone3GPSStateHomeTypeChosenChanged::*TYPE_PILOT* 1)
(intern "*TYPE_FIRST_FIX*" (find-package "BEBOP_MSGS::ARDRONE3GPSSTATEHOMETYPECHOSENCHANGED"))
(shadow '*TYPE_FIRST_FIX* (find-package "BEBOP_MSGS::ARDRONE3GPSSTATEHOMETYPECHOSENCHANGED"))
(defconstant bebop_msgs::Ardrone3GPSStateHomeTypeChosenChanged::*TYPE_FIRST_FIX* 2)
(intern "*TYPE_FOLLOWEE*" (find-package "BEBOP_MSGS::ARDRONE3GPSSTATEHOMETYPECHOSENCHANGED"))
(shadow '*TYPE_FOLLOWEE* (find-package "BEBOP_MSGS::ARDRONE3GPSSTATEHOMETYPECHOSENCHANGED"))
(defconstant bebop_msgs::Ardrone3GPSStateHomeTypeChosenChanged::*TYPE_FOLLOWEE* 3)
(defclass bebop_msgs::Ardrone3GPSStateHomeTypeChosenChanged
  :super ros::object
  :slots (_header _type ))

(defmethod bebop_msgs::Ardrone3GPSStateHomeTypeChosenChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (round __type))
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
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _type
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3GPSStateHomeTypeChosenChanged :md5sum-) "399148a783deb6496d223249b9e3e911")
(setf (get bebop_msgs::Ardrone3GPSStateHomeTypeChosenChanged :datatype-) "bebop_msgs/Ardrone3GPSStateHomeTypeChosenChanged")
(setf (get bebop_msgs::Ardrone3GPSStateHomeTypeChosenChanged :definition-)
      "# Ardrone3GPSStateHomeTypeChosenChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Home type.\\n This choice is made by the drone, according to the [PreferredHomeType](#1-24-4) and the [HomeTypeAvailability](#1-31-1). The drone will choose the type matching with the user preference only if this type is available. If not, it will chose a type in this order:\\n FOLLOWEE ; TAKEOFF ; PILOT ; FIRST_FIX

Header header

# The type of the return home chosen
uint8 type_TAKEOFF=0  # The drone will return to the take off position
uint8 type_PILOT=1  # The drone will return to the pilot position In this case, the drone will use the position given by ARDrone3-SendControllerGPS
uint8 type_FIRST_FIX=2  # The drone has not enough information, it will return to the first GPS fix
uint8 type_FOLLOWEE=3  # The drone will return to the target of the current (or last) follow me In this case, the drone will use the position of the target of the followMe (given by ControllerInfo-GPS)
uint8 type

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



(provide :bebop_msgs/Ardrone3GPSStateHomeTypeChosenChanged "399148a783deb6496d223249b9e3e911")


