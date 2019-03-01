;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonCalibrationStateMagnetoCalibrationStartedChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonCalibrationStateMagnetoCalibrationStartedChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEMAGNETOCALIBRATIONSTARTEDCHANGED")
  (make-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEMAGNETOCALIBRATIONSTARTEDCHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonCalibrationStateMagnetoCalibrationStartedChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonCalibrationStateMagnetoCalibrationStartedChanged
  :super ros::object
  :slots (_header _started ))

(defmethod bebop_msgs::CommonCalibrationStateMagnetoCalibrationStartedChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:started __started) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _started (round __started))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:started
   (&optional __started)
   (if __started (setq _started __started)) _started)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _started
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _started
       (write-byte _started s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _started
     (setq _started (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonCalibrationStateMagnetoCalibrationStartedChanged :md5sum-) "2277a8a251c1c5f5970171a6e7e5eab0")
(setf (get bebop_msgs::CommonCalibrationStateMagnetoCalibrationStartedChanged :datatype-) "bebop_msgs/CommonCalibrationStateMagnetoCalibrationStartedChanged")
(setf (get bebop_msgs::CommonCalibrationStateMagnetoCalibrationStartedChanged :definition-)
      "# CommonCalibrationStateMagnetoCalibrationStartedChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Calibration process state.

Header header

# 1 if calibration has started, 0 otherwise
uint8 started

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



(provide :bebop_msgs/CommonCalibrationStateMagnetoCalibrationStartedChanged "2277a8a251c1c5f5970171a6e7e5eab0")


