;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3MediaRecordStatePictureStateChangedV2)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3MediaRecordStatePictureStateChangedV2 (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEPICTURESTATECHANGEDV2")
  (make-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEPICTURESTATECHANGEDV2"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3MediaRecordStatePictureStateChangedV2.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STATE_READY*" (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEPICTURESTATECHANGEDV2"))
(shadow '*STATE_READY* (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEPICTURESTATECHANGEDV2"))
(defconstant bebop_msgs::Ardrone3MediaRecordStatePictureStateChangedV2::*STATE_READY* 0)
(intern "*STATE_BUSY*" (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEPICTURESTATECHANGEDV2"))
(shadow '*STATE_BUSY* (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEPICTURESTATECHANGEDV2"))
(defconstant bebop_msgs::Ardrone3MediaRecordStatePictureStateChangedV2::*STATE_BUSY* 1)
(intern "*STATE_NOTAVAILABLE*" (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEPICTURESTATECHANGEDV2"))
(shadow '*STATE_NOTAVAILABLE* (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEPICTURESTATECHANGEDV2"))
(defconstant bebop_msgs::Ardrone3MediaRecordStatePictureStateChangedV2::*STATE_NOTAVAILABLE* 2)
(intern "*ERROR_OK*" (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEPICTURESTATECHANGEDV2"))
(shadow '*ERROR_OK* (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEPICTURESTATECHANGEDV2"))
(defconstant bebop_msgs::Ardrone3MediaRecordStatePictureStateChangedV2::*ERROR_OK* 0)
(intern "*ERROR_UNKNOWN*" (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEPICTURESTATECHANGEDV2"))
(shadow '*ERROR_UNKNOWN* (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEPICTURESTATECHANGEDV2"))
(defconstant bebop_msgs::Ardrone3MediaRecordStatePictureStateChangedV2::*ERROR_UNKNOWN* 1)
(intern "*ERROR_CAMERA_KO*" (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEPICTURESTATECHANGEDV2"))
(shadow '*ERROR_CAMERA_KO* (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEPICTURESTATECHANGEDV2"))
(defconstant bebop_msgs::Ardrone3MediaRecordStatePictureStateChangedV2::*ERROR_CAMERA_KO* 2)
(intern "*ERROR_MEMORYFULL*" (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEPICTURESTATECHANGEDV2"))
(shadow '*ERROR_MEMORYFULL* (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEPICTURESTATECHANGEDV2"))
(defconstant bebop_msgs::Ardrone3MediaRecordStatePictureStateChangedV2::*ERROR_MEMORYFULL* 3)
(intern "*ERROR_LOWBATTERY*" (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEPICTURESTATECHANGEDV2"))
(shadow '*ERROR_LOWBATTERY* (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEPICTURESTATECHANGEDV2"))
(defconstant bebop_msgs::Ardrone3MediaRecordStatePictureStateChangedV2::*ERROR_LOWBATTERY* 4)
(defclass bebop_msgs::Ardrone3MediaRecordStatePictureStateChangedV2
  :super ros::object
  :slots (_header _state _error ))

(defmethod bebop_msgs::Ardrone3MediaRecordStatePictureStateChangedV2
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) 0)
    ((:error __error) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _state (round __state))
   (setq _error (round __error))
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
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _state
    1
    ;; uint8 _error
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
     ;; uint8 _error
       (write-byte _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _error
     (setq _error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3MediaRecordStatePictureStateChangedV2 :md5sum-) "d598a8e443dfa3a713d5b12b036e41a5")
(setf (get bebop_msgs::Ardrone3MediaRecordStatePictureStateChangedV2 :datatype-) "bebop_msgs/Ardrone3MediaRecordStatePictureStateChangedV2")
(setf (get bebop_msgs::Ardrone3MediaRecordStatePictureStateChangedV2 :definition-)
      "# Ardrone3MediaRecordStatePictureStateChangedV2
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Picture state.

Header header

# State of device picture recording
uint8 state_ready=0  # The picture recording is ready
uint8 state_busy=1  # The picture recording is busy
uint8 state_notAvailable=2  # The picture recording is not available
uint8 state
# Error to explain the state
uint8 error_ok=0  # No Error
uint8 error_unknown=1  # Unknown generic error
uint8 error_camera_ko=2  # Picture camera is out of order
uint8 error_memoryFull=3  # Memory full ; cannot save one additional picture
uint8 error_lowBattery=4  # Battery is too low to start/keep recording.
uint8 error

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



(provide :bebop_msgs/Ardrone3MediaRecordStatePictureStateChangedV2 "d598a8e443dfa3a713d5b12b036e41a5")


