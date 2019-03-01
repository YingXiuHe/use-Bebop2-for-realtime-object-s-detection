;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEMAGNETOCALIBRATIONAXISTOCALIBRATECHANGED")
  (make-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEMAGNETOCALIBRATIONAXISTOCALIBRATECHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*AXIS_XAXIS*" (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEMAGNETOCALIBRATIONAXISTOCALIBRATECHANGED"))
(shadow '*AXIS_XAXIS* (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEMAGNETOCALIBRATIONAXISTOCALIBRATECHANGED"))
(defconstant bebop_msgs::CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged::*AXIS_XAXIS* 0)
(intern "*AXIS_YAXIS*" (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEMAGNETOCALIBRATIONAXISTOCALIBRATECHANGED"))
(shadow '*AXIS_YAXIS* (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEMAGNETOCALIBRATIONAXISTOCALIBRATECHANGED"))
(defconstant bebop_msgs::CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged::*AXIS_YAXIS* 1)
(intern "*AXIS_ZAXIS*" (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEMAGNETOCALIBRATIONAXISTOCALIBRATECHANGED"))
(shadow '*AXIS_ZAXIS* (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEMAGNETOCALIBRATIONAXISTOCALIBRATECHANGED"))
(defconstant bebop_msgs::CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged::*AXIS_ZAXIS* 2)
(intern "*AXIS_NONE*" (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEMAGNETOCALIBRATIONAXISTOCALIBRATECHANGED"))
(shadow '*AXIS_NONE* (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEMAGNETOCALIBRATIONAXISTOCALIBRATECHANGED"))
(defconstant bebop_msgs::CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged::*AXIS_NONE* 3)
(defclass bebop_msgs::CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged
  :super ros::object
  :slots (_header _axis ))

(defmethod bebop_msgs::CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:axis __axis) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _axis (round __axis))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:axis
   (&optional __axis)
   (if __axis (setq _axis __axis)) _axis)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _axis
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _axis
       (write-byte _axis s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _axis
     (setq _axis (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged :md5sum-) "ad3a0a9ecffc26cb8ac4221cda1c0e54")
(setf (get bebop_msgs::CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged :datatype-) "bebop_msgs/CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged")
(setf (get bebop_msgs::CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged :definition-)
      "# CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Axis to calibrate during calibration process.

Header header

# The axis to calibrate
uint8 axis_xAxis=0  # If the current calibration axis should be the x axis
uint8 axis_yAxis=1  # If the current calibration axis should be the y axis
uint8 axis_zAxis=2  # If the current calibration axis should be the z axis
uint8 axis_none=3  # If none of the axis should be calibrated
uint8 axis

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



(provide :bebop_msgs/CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged "ad3a0a9ecffc26cb8ac4221cda1c0e54")


