;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3MediaStreamingStateVideoStreamModeChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3MediaStreamingStateVideoStreamModeChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3MEDIASTREAMINGSTATEVIDEOSTREAMMODECHANGED")
  (make-package "BEBOP_MSGS::ARDRONE3MEDIASTREAMINGSTATEVIDEOSTREAMMODECHANGED"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3MediaStreamingStateVideoStreamModeChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MODE_LOW_LATENCY*" (find-package "BEBOP_MSGS::ARDRONE3MEDIASTREAMINGSTATEVIDEOSTREAMMODECHANGED"))
(shadow '*MODE_LOW_LATENCY* (find-package "BEBOP_MSGS::ARDRONE3MEDIASTREAMINGSTATEVIDEOSTREAMMODECHANGED"))
(defconstant bebop_msgs::Ardrone3MediaStreamingStateVideoStreamModeChanged::*MODE_LOW_LATENCY* 0)
(intern "*MODE_HIGH_RELIABILITY*" (find-package "BEBOP_MSGS::ARDRONE3MEDIASTREAMINGSTATEVIDEOSTREAMMODECHANGED"))
(shadow '*MODE_HIGH_RELIABILITY* (find-package "BEBOP_MSGS::ARDRONE3MEDIASTREAMINGSTATEVIDEOSTREAMMODECHANGED"))
(defconstant bebop_msgs::Ardrone3MediaStreamingStateVideoStreamModeChanged::*MODE_HIGH_RELIABILITY* 1)
(intern "*MODE_HIGH_RELIABILITY_LOW_FRAMERATE*" (find-package "BEBOP_MSGS::ARDRONE3MEDIASTREAMINGSTATEVIDEOSTREAMMODECHANGED"))
(shadow '*MODE_HIGH_RELIABILITY_LOW_FRAMERATE* (find-package "BEBOP_MSGS::ARDRONE3MEDIASTREAMINGSTATEVIDEOSTREAMMODECHANGED"))
(defconstant bebop_msgs::Ardrone3MediaStreamingStateVideoStreamModeChanged::*MODE_HIGH_RELIABILITY_LOW_FRAMERATE* 2)
(defclass bebop_msgs::Ardrone3MediaStreamingStateVideoStreamModeChanged
  :super ros::object
  :slots (_header _mode ))

(defmethod bebop_msgs::Ardrone3MediaStreamingStateVideoStreamModeChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode (round __mode))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3MediaStreamingStateVideoStreamModeChanged :md5sum-) "4a2bbaab0b63209c90ee07d53c0c62d1")
(setf (get bebop_msgs::Ardrone3MediaStreamingStateVideoStreamModeChanged :datatype-) "bebop_msgs/Ardrone3MediaStreamingStateVideoStreamModeChanged")
(setf (get bebop_msgs::Ardrone3MediaStreamingStateVideoStreamModeChanged :definition-)
      "# Ardrone3MediaStreamingStateVideoStreamModeChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: 

Header header

# stream mode
uint8 mode_low_latency=0  # Minimize latency with average reliability (best for piloting).
uint8 mode_high_reliability=1  # Maximize the reliability with an average latency (best when streaming quality is important but not the latency).
uint8 mode_high_reliability_low_framerate=2  # Maximize the reliability using a framerate decimation with an average latency (best when streaming quality is important but not the latency).
uint8 mode

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



(provide :bebop_msgs/Ardrone3MediaStreamingStateVideoStreamModeChanged "4a2bbaab0b63209c90ee07d53c0c62d1")


