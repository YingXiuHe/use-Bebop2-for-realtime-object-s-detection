;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonCalibrationStatePitotCalibrationStateChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonCalibrationStatePitotCalibrationStateChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEPITOTCALIBRATIONSTATECHANGED")
  (make-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEPITOTCALIBRATIONSTATECHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonCalibrationStatePitotCalibrationStateChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STATE_DONE*" (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEPITOTCALIBRATIONSTATECHANGED"))
(shadow '*STATE_DONE* (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEPITOTCALIBRATIONSTATECHANGED"))
(defconstant bebop_msgs::CommonCalibrationStatePitotCalibrationStateChanged::*STATE_DONE* 0)
(intern "*STATE_READY*" (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEPITOTCALIBRATIONSTATECHANGED"))
(shadow '*STATE_READY* (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEPITOTCALIBRATIONSTATECHANGED"))
(defconstant bebop_msgs::CommonCalibrationStatePitotCalibrationStateChanged::*STATE_READY* 1)
(intern "*STATE_IN_PROGRESS*" (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEPITOTCALIBRATIONSTATECHANGED"))
(shadow '*STATE_IN_PROGRESS* (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEPITOTCALIBRATIONSTATECHANGED"))
(defconstant bebop_msgs::CommonCalibrationStatePitotCalibrationStateChanged::*STATE_IN_PROGRESS* 2)
(intern "*STATE_REQUIRED*" (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEPITOTCALIBRATIONSTATECHANGED"))
(shadow '*STATE_REQUIRED* (find-package "BEBOP_MSGS::COMMONCALIBRATIONSTATEPITOTCALIBRATIONSTATECHANGED"))
(defconstant bebop_msgs::CommonCalibrationStatePitotCalibrationStateChanged::*STATE_REQUIRED* 3)
(defclass bebop_msgs::CommonCalibrationStatePitotCalibrationStateChanged
  :super ros::object
  :slots (_header _state _lastError ))

(defmethod bebop_msgs::CommonCalibrationStatePitotCalibrationStateChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) 0)
    ((:lastError __lastError) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _state (round __state))
   (setq _lastError (round __lastError))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:lastError
   (&optional __lastError)
   (if __lastError (setq _lastError __lastError)) _lastError)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _state
    1
    ;; uint8 _lastError
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _state
       (write-byte _state s)
     ;; uint8 _lastError
       (write-byte _lastError s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lastError
     (setq _lastError (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonCalibrationStatePitotCalibrationStateChanged :md5sum-) "1d222c31db9ca732c48a9aa11e2f3afa")
(setf (get bebop_msgs::CommonCalibrationStatePitotCalibrationStateChanged :datatype-) "bebop_msgs/CommonCalibrationStatePitotCalibrationStateChanged")
(setf (get bebop_msgs::CommonCalibrationStatePitotCalibrationStateChanged :definition-)
      "# CommonCalibrationStatePitotCalibrationStateChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: 

Header header

# State of pitot calibration
uint8 state_done=0  # Calibration is ok
uint8 state_ready=1  # Calibration is started, waiting user action
uint8 state_in_progress=2  # Calibration is in progress
uint8 state_required=3  # Calibration is required
uint8 state
# lastError : 1 if an error occured and 0 if not
uint8 lastError

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



(provide :bebop_msgs/CommonCalibrationStatePitotCalibrationStateChanged "1d222c31db9ca732c48a9aa11e2f3afa")


