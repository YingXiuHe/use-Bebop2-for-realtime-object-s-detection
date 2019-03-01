;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonCalibrationStateMagnetoCalibrationStateChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonCalibrationStateMagnetoCalibrationStateChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEMAGNETOCALIBRATIONSTATECHANGED")
  (make-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEMAGNETOCALIBRATIONSTATECHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonCalibrationStateMagnetoCalibrationStateChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonCalibrationStateMagnetoCalibrationStateChanged
  :super ros::object
  :slots (_header _xAxisCalibration _yAxisCalibration _zAxisCalibration _calibrationFailed ))

(defmethod bebop_msgs::CommonCalibrationStateMagnetoCalibrationStateChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:xAxisCalibration __xAxisCalibration) 0)
    ((:yAxisCalibration __yAxisCalibration) 0)
    ((:zAxisCalibration __zAxisCalibration) 0)
    ((:calibrationFailed __calibrationFailed) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _xAxisCalibration (round __xAxisCalibration))
   (setq _yAxisCalibration (round __yAxisCalibration))
   (setq _zAxisCalibration (round __zAxisCalibration))
   (setq _calibrationFailed (round __calibrationFailed))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:xAxisCalibration
   (&optional __xAxisCalibration)
   (if __xAxisCalibration (setq _xAxisCalibration __xAxisCalibration)) _xAxisCalibration)
  (:yAxisCalibration
   (&optional __yAxisCalibration)
   (if __yAxisCalibration (setq _yAxisCalibration __yAxisCalibration)) _yAxisCalibration)
  (:zAxisCalibration
   (&optional __zAxisCalibration)
   (if __zAxisCalibration (setq _zAxisCalibration __zAxisCalibration)) _zAxisCalibration)
  (:calibrationFailed
   (&optional __calibrationFailed)
   (if __calibrationFailed (setq _calibrationFailed __calibrationFailed)) _calibrationFailed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _xAxisCalibration
    1
    ;; uint8 _yAxisCalibration
    1
    ;; uint8 _zAxisCalibration
    1
    ;; uint8 _calibrationFailed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _xAxisCalibration
       (write-byte _xAxisCalibration s)
     ;; uint8 _yAxisCalibration
       (write-byte _yAxisCalibration s)
     ;; uint8 _zAxisCalibration
       (write-byte _zAxisCalibration s)
     ;; uint8 _calibrationFailed
       (write-byte _calibrationFailed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _xAxisCalibration
     (setq _xAxisCalibration (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _yAxisCalibration
     (setq _yAxisCalibration (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _zAxisCalibration
     (setq _zAxisCalibration (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _calibrationFailed
     (setq _calibrationFailed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonCalibrationStateMagnetoCalibrationStateChanged :md5sum-) "89c04aa89f066c20fb00b541abd28d8c")
(setf (get bebop_msgs::CommonCalibrationStateMagnetoCalibrationStateChanged :datatype-) "bebop_msgs/CommonCalibrationStateMagnetoCalibrationStateChanged")
(setf (get bebop_msgs::CommonCalibrationStateMagnetoCalibrationStateChanged :definition-)
      "# CommonCalibrationStateMagnetoCalibrationStateChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Magneto calib process axis state.

Header header

# State of the x axis (roll) calibration : 1 if calibration is done, 0 otherwise
uint8 xAxisCalibration
# State of the y axis (pitch) calibration : 1 if calibration is done, 0 otherwise
uint8 yAxisCalibration
# State of the z axis (yaw) calibration : 1 if calibration is done, 0 otherwise
uint8 zAxisCalibration
# 1 if calibration has failed, 0 otherwise. If this arg is 1, consider all previous arg as 0
uint8 calibrationFailed

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



(provide :bebop_msgs/CommonCalibrationStateMagnetoCalibrationStateChanged "89c04aa89f066c20fb00b541abd28d8c")


