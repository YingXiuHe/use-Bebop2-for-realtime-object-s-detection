;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3AntiflickeringStateelectricFrequencyChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3AntiflickeringStateelectricFrequencyChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3ANTIFLICKERINGSTATEELECTRICFREQUENCYCHANGED")
  (make-package "BEBOP_MSGS::ARDRONE3ANTIFLICKERINGSTATEELECTRICFREQUENCYCHANGED"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3AntiflickeringStateelectricFrequencyChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*FREQUENCY_FIFTYHERTZ*" (find-package "BEBOP_MSGS::ARDRONE3ANTIFLICKERINGSTATEELECTRICFREQUENCYCHANGED"))
(shadow '*FREQUENCY_FIFTYHERTZ* (find-package "BEBOP_MSGS::ARDRONE3ANTIFLICKERINGSTATEELECTRICFREQUENCYCHANGED"))
(defconstant bebop_msgs::Ardrone3AntiflickeringStateelectricFrequencyChanged::*FREQUENCY_FIFTYHERTZ* 0)
(intern "*FREQUENCY_SIXTYHERTZ*" (find-package "BEBOP_MSGS::ARDRONE3ANTIFLICKERINGSTATEELECTRICFREQUENCYCHANGED"))
(shadow '*FREQUENCY_SIXTYHERTZ* (find-package "BEBOP_MSGS::ARDRONE3ANTIFLICKERINGSTATEELECTRICFREQUENCYCHANGED"))
(defconstant bebop_msgs::Ardrone3AntiflickeringStateelectricFrequencyChanged::*FREQUENCY_SIXTYHERTZ* 1)
(defclass bebop_msgs::Ardrone3AntiflickeringStateelectricFrequencyChanged
  :super ros::object
  :slots (_header _frequency ))

(defmethod bebop_msgs::Ardrone3AntiflickeringStateelectricFrequencyChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:frequency __frequency) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _frequency (round __frequency))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _frequency
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _frequency
       (write-byte _frequency s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _frequency
     (setq _frequency (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3AntiflickeringStateelectricFrequencyChanged :md5sum-) "ca3c0e18079a24e9b39ce000c8d70806")
(setf (get bebop_msgs::Ardrone3AntiflickeringStateelectricFrequencyChanged :datatype-) "bebop_msgs/Ardrone3AntiflickeringStateelectricFrequencyChanged")
(setf (get bebop_msgs::Ardrone3AntiflickeringStateelectricFrequencyChanged :definition-)
      "# Ardrone3AntiflickeringStateelectricFrequencyChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Electric frequency.\\n This piece of information is used for the antiflickering when the [AntiflickeringMode](#1-30-1) is set to *auto*.

Header header

# Type of the electric frequency
uint8 frequency_fiftyHertz=0  # Electric frequency of the country is 50hz
uint8 frequency_sixtyHertz=1  # Electric frequency of the country is 60hz
uint8 frequency

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



(provide :bebop_msgs/Ardrone3AntiflickeringStateelectricFrequencyChanged "ca3c0e18079a24e9b39ce000c8d70806")


