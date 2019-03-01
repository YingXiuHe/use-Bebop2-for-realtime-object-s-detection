;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonCommonStateSensorsStatesListChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonCommonStateSensorsStatesListChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCOMMONSTATESENSORSSTATESLISTCHANGED")
  (make-package "BEBOP_MSGS::COMMONCOMMONSTATESENSORSSTATESLISTCHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonCommonStateSensorsStatesListChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*SENSORNAME_IMU*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATESENSORSSTATESLISTCHANGED"))
(shadow '*SENSORNAME_IMU* (find-package "BEBOP_MSGS::COMMONCOMMONSTATESENSORSSTATESLISTCHANGED"))
(defconstant bebop_msgs::CommonCommonStateSensorsStatesListChanged::*SENSORNAME_IMU* 0)
(intern "*SENSORNAME_BAROMETER*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATESENSORSSTATESLISTCHANGED"))
(shadow '*SENSORNAME_BAROMETER* (find-package "BEBOP_MSGS::COMMONCOMMONSTATESENSORSSTATESLISTCHANGED"))
(defconstant bebop_msgs::CommonCommonStateSensorsStatesListChanged::*SENSORNAME_BAROMETER* 1)
(intern "*SENSORNAME_ULTRASOUND*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATESENSORSSTATESLISTCHANGED"))
(shadow '*SENSORNAME_ULTRASOUND* (find-package "BEBOP_MSGS::COMMONCOMMONSTATESENSORSSTATESLISTCHANGED"))
(defconstant bebop_msgs::CommonCommonStateSensorsStatesListChanged::*SENSORNAME_ULTRASOUND* 2)
(intern "*SENSORNAME_GPS*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATESENSORSSTATESLISTCHANGED"))
(shadow '*SENSORNAME_GPS* (find-package "BEBOP_MSGS::COMMONCOMMONSTATESENSORSSTATESLISTCHANGED"))
(defconstant bebop_msgs::CommonCommonStateSensorsStatesListChanged::*SENSORNAME_GPS* 3)
(intern "*SENSORNAME_MAGNETOMETER*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATESENSORSSTATESLISTCHANGED"))
(shadow '*SENSORNAME_MAGNETOMETER* (find-package "BEBOP_MSGS::COMMONCOMMONSTATESENSORSSTATESLISTCHANGED"))
(defconstant bebop_msgs::CommonCommonStateSensorsStatesListChanged::*SENSORNAME_MAGNETOMETER* 4)
(intern "*SENSORNAME_VERTICAL_CAMERA*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATESENSORSSTATESLISTCHANGED"))
(shadow '*SENSORNAME_VERTICAL_CAMERA* (find-package "BEBOP_MSGS::COMMONCOMMONSTATESENSORSSTATESLISTCHANGED"))
(defconstant bebop_msgs::CommonCommonStateSensorsStatesListChanged::*SENSORNAME_VERTICAL_CAMERA* 5)
(defclass bebop_msgs::CommonCommonStateSensorsStatesListChanged
  :super ros::object
  :slots (_header _sensorName _sensorState ))

(defmethod bebop_msgs::CommonCommonStateSensorsStatesListChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sensorName __sensorName) 0)
    ((:sensorState __sensorState) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _sensorName (round __sensorName))
   (setq _sensorState (round __sensorState))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sensorName
   (&optional __sensorName)
   (if __sensorName (setq _sensorName __sensorName)) _sensorName)
  (:sensorState
   (&optional __sensorState)
   (if __sensorState (setq _sensorState __sensorState)) _sensorState)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _sensorName
    1
    ;; uint8 _sensorState
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _sensorName
       (write-byte _sensorName s)
     ;; uint8 _sensorState
       (write-byte _sensorState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _sensorName
     (setq _sensorName (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sensorState
     (setq _sensorState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonCommonStateSensorsStatesListChanged :md5sum-) "21324261f7a8c1805999cb90c3c5949b")
(setf (get bebop_msgs::CommonCommonStateSensorsStatesListChanged :datatype-) "bebop_msgs/CommonCommonStateSensorsStatesListChanged")
(setf (get bebop_msgs::CommonCommonStateSensorsStatesListChanged :definition-)
      "# CommonCommonStateSensorsStatesListChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Sensors state list.

Header header

# Sensor name
uint8 sensorName_IMU=0  # Inertial Measurement Unit sensor
uint8 sensorName_barometer=1  # Barometer sensor
uint8 sensorName_ultrasound=2  # Ultrasonic sensor
uint8 sensorName_GPS=3  # GPS sensor
uint8 sensorName_magnetometer=4  # Magnetometer sensor
uint8 sensorName_vertical_camera=5  # Vertical Camera sensor
uint8 sensorName
# Sensor state (1 if the sensor is OK, 0 if the sensor is NOT OK)
uint8 sensorState

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



(provide :bebop_msgs/CommonCommonStateSensorsStatesListChanged "21324261f7a8c1805999cb90c3c5949b")


