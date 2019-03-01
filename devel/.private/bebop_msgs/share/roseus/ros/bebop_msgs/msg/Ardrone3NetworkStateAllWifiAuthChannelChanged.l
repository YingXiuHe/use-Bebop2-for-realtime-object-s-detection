;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3NetworkStateAllWifiAuthChannelChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3NetworkStateAllWifiAuthChannelChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3NETWORKSTATEALLWIFIAUTHCHANNELCHANGED")
  (make-package "BEBOP_MSGS::ARDRONE3NETWORKSTATEALLWIFIAUTHCHANNELCHANGED"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3NetworkStateAllWifiAuthChannelChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::Ardrone3NetworkStateAllWifiAuthChannelChanged
  :super ros::object
  :slots (_header ))

(defmethod bebop_msgs::Ardrone3NetworkStateAllWifiAuthChannelChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    )
   (send-super :init)
   (setq _header __header)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3NetworkStateAllWifiAuthChannelChanged :md5sum-) "d7be0bb39af8fb9129d5a76e6b63a290")
(setf (get bebop_msgs::Ardrone3NetworkStateAllWifiAuthChannelChanged :datatype-) "bebop_msgs/Ardrone3NetworkStateAllWifiAuthChannelChanged")
(setf (get bebop_msgs::Ardrone3NetworkStateAllWifiAuthChannelChanged :definition-)
      "# Ardrone3NetworkStateAllWifiAuthChannelChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Available wifi channels completed.\\n When receiving this event, the list of [AvailableWifiChannels](#1-14-2) is complete.

Header header


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



(provide :bebop_msgs/Ardrone3NetworkStateAllWifiAuthChannelChanged "d7be0bb39af8fb9129d5a76e6b63a290")


