;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3MediaStreamingStateVideoEnableChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3MediaStreamingStateVideoEnableChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3MEDIASTREAMINGSTATEVIDEOENABLECHANGED")
  (make-package "BEBOP_MSGS::ARDRONE3MEDIASTREAMINGSTATEVIDEOENABLECHANGED"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3MediaStreamingStateVideoEnableChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ENABLED_ENABLED*" (find-package "BEBOP_MSGS::ARDRONE3MEDIASTREAMINGSTATEVIDEOENABLECHANGED"))
(shadow '*ENABLED_ENABLED* (find-package "BEBOP_MSGS::ARDRONE3MEDIASTREAMINGSTATEVIDEOENABLECHANGED"))
(defconstant bebop_msgs::Ardrone3MediaStreamingStateVideoEnableChanged::*ENABLED_ENABLED* 0)
(intern "*ENABLED_DISABLED*" (find-package "BEBOP_MSGS::ARDRONE3MEDIASTREAMINGSTATEVIDEOENABLECHANGED"))
(shadow '*ENABLED_DISABLED* (find-package "BEBOP_MSGS::ARDRONE3MEDIASTREAMINGSTATEVIDEOENABLECHANGED"))
(defconstant bebop_msgs::Ardrone3MediaStreamingStateVideoEnableChanged::*ENABLED_DISABLED* 1)
(intern "*ENABLED_ERROR*" (find-package "BEBOP_MSGS::ARDRONE3MEDIASTREAMINGSTATEVIDEOENABLECHANGED"))
(shadow '*ENABLED_ERROR* (find-package "BEBOP_MSGS::ARDRONE3MEDIASTREAMINGSTATEVIDEOENABLECHANGED"))
(defconstant bebop_msgs::Ardrone3MediaStreamingStateVideoEnableChanged::*ENABLED_ERROR* 2)
(defclass bebop_msgs::Ardrone3MediaStreamingStateVideoEnableChanged
  :super ros::object
  :slots (_header _enabled ))

(defmethod bebop_msgs::Ardrone3MediaStreamingStateVideoEnableChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:enabled __enabled) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _enabled (round __enabled))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:enabled
   (&optional __enabled)
   (if __enabled (setq _enabled __enabled)) _enabled)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _enabled
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _enabled
       (write-byte _enabled s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _enabled
     (setq _enabled (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3MediaStreamingStateVideoEnableChanged :md5sum-) "4647d465f8e97fd2dcb5f7341b70a007")
(setf (get bebop_msgs::Ardrone3MediaStreamingStateVideoEnableChanged :datatype-) "bebop_msgs/Ardrone3MediaStreamingStateVideoEnableChanged")
(setf (get bebop_msgs::Ardrone3MediaStreamingStateVideoEnableChanged :definition-)
      "# Ardrone3MediaStreamingStateVideoEnableChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Video stream state.

Header header

# Current video streaming status.
uint8 enabled_enabled=0  # Video streaming is enabled.
uint8 enabled_disabled=1  # Video streaming is disabled.
uint8 enabled_error=2  # Video streaming failed to start.
uint8 enabled

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



(provide :bebop_msgs/Ardrone3MediaStreamingStateVideoEnableChanged "4647d465f8e97fd2dcb5f7341b70a007")


