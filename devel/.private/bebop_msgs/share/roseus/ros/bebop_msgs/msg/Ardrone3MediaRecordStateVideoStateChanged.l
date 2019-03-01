;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3MediaRecordStateVideoStateChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3MediaRecordStateVideoStateChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEOSTATECHANGED")
  (make-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEOSTATECHANGED"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3MediaRecordStateVideoStateChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STATE_STOPPED*" (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEOSTATECHANGED"))
(shadow '*STATE_STOPPED* (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEOSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3MediaRecordStateVideoStateChanged::*STATE_STOPPED* 0)
(intern "*STATE_STARTED*" (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEOSTATECHANGED"))
(shadow '*STATE_STARTED* (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEOSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3MediaRecordStateVideoStateChanged::*STATE_STARTED* 1)
(intern "*STATE_FAILED*" (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEOSTATECHANGED"))
(shadow '*STATE_FAILED* (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEOSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3MediaRecordStateVideoStateChanged::*STATE_FAILED* 2)
(intern "*STATE_AUTOSTOPPED*" (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEOSTATECHANGED"))
(shadow '*STATE_AUTOSTOPPED* (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEOSTATECHANGED"))
(defconstant bebop_msgs::Ardrone3MediaRecordStateVideoStateChanged::*STATE_AUTOSTOPPED* 3)
(defclass bebop_msgs::Ardrone3MediaRecordStateVideoStateChanged
  :super ros::object
  :slots (_header _state _mass_storage_id ))

(defmethod bebop_msgs::Ardrone3MediaRecordStateVideoStateChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) 0)
    ((:mass_storage_id __mass_storage_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _state (round __state))
   (setq _mass_storage_id (round __mass_storage_id))
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
  (:mass_storage_id
   (&optional __mass_storage_id)
   (if __mass_storage_id (setq _mass_storage_id __mass_storage_id)) _mass_storage_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _state
    1
    ;; uint8 _mass_storage_id
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
     ;; uint8 _mass_storage_id
       (write-byte _mass_storage_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mass_storage_id
     (setq _mass_storage_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3MediaRecordStateVideoStateChanged :md5sum-) "367143a56607cca6e57e42c6e770ab2a")
(setf (get bebop_msgs::Ardrone3MediaRecordStateVideoStateChanged :datatype-) "bebop_msgs/Ardrone3MediaRecordStateVideoStateChanged")
(setf (get bebop_msgs::Ardrone3MediaRecordStateVideoStateChanged :definition-)
      "# Ardrone3MediaRecordStateVideoStateChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Picture record state.

Header header

# State of video
uint8 state_stopped=0  # Video was stopped
uint8 state_started=1  # Video was started
uint8 state_failed=2  # Video was failed
uint8 state_autostopped=3  # Video was auto stopped
uint8 state
# Mass storage id where the video was recorded
uint8 mass_storage_id

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



(provide :bebop_msgs/Ardrone3MediaRecordStateVideoStateChanged "367143a56607cca6e57e42c6e770ab2a")


