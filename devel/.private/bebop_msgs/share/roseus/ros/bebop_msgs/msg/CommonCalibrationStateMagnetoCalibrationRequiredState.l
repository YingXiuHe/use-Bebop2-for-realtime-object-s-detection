;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonCalibrationStateMagnetoCalibrationRequiredState)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonCalibrationStateMagnetoCalibrationRequiredState (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEMAGNETOCALIBRATIONREQUIREDSTATE")
  (make-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEMAGNETOCALIBRATIONREQUIREDSTATE"))

(in-package "ROS")
;;//! \htmlinclude CommonCalibrationStateMagnetoCalibrationRequiredState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonCalibrationStateMagnetoCalibrationRequiredState
  :super ros::object
  :slots (_header _required ))

(defmethod bebop_msgs::CommonCalibrationStateMagnetoCalibrationRequiredState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:required __required) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _required (round __required))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:required
   (&optional __required)
   (if __required (setq _required __required)) _required)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _required
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _required
       (write-byte _required s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _required
     (setq _required (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonCalibrationStateMagnetoCalibrationRequiredState :md5sum-) "fec0779f61291fcb78f86989a9b9f10e")
(setf (get bebop_msgs::CommonCalibrationStateMagnetoCalibrationRequiredState :datatype-) "bebop_msgs/CommonCalibrationStateMagnetoCalibrationRequiredState")
(setf (get bebop_msgs::CommonCalibrationStateMagnetoCalibrationRequiredState :definition-)
      "# CommonCalibrationStateMagnetoCalibrationRequiredState
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Calibration required.

Header header

# 1 if calibration is required, 0 if current calibration is still valid
uint8 required

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



(provide :bebop_msgs/CommonCalibrationStateMagnetoCalibrationRequiredState "fec0779f61291fcb78f86989a9b9f10e")


