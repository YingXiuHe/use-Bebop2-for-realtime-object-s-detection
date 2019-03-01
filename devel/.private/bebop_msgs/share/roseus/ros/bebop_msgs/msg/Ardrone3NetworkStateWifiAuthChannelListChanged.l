;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3NetworkStateWifiAuthChannelListChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3NetworkStateWifiAuthChannelListChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3NETWORKSTATEWIFIAUTHCHANNELLISTCHANGED")
  (make-package "BEBOP_MSGS::ARDRONE3NETWORKSTATEWIFIAUTHCHANNELLISTCHANGED"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3NetworkStateWifiAuthChannelListChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*BAND_2_4GHZ*" (find-package "BEBOP_MSGS::ARDRONE3NETWORKSTATEWIFIAUTHCHANNELLISTCHANGED"))
(shadow '*BAND_2_4GHZ* (find-package "BEBOP_MSGS::ARDRONE3NETWORKSTATEWIFIAUTHCHANNELLISTCHANGED"))
(defconstant bebop_msgs::Ardrone3NetworkStateWifiAuthChannelListChanged::*BAND_2_4GHZ* 0)
(intern "*BAND_5GHZ*" (find-package "BEBOP_MSGS::ARDRONE3NETWORKSTATEWIFIAUTHCHANNELLISTCHANGED"))
(shadow '*BAND_5GHZ* (find-package "BEBOP_MSGS::ARDRONE3NETWORKSTATEWIFIAUTHCHANNELLISTCHANGED"))
(defconstant bebop_msgs::Ardrone3NetworkStateWifiAuthChannelListChanged::*BAND_5GHZ* 1)
(defclass bebop_msgs::Ardrone3NetworkStateWifiAuthChannelListChanged
  :super ros::object
  :slots (_header _band _channel _in_or_out ))

(defmethod bebop_msgs::Ardrone3NetworkStateWifiAuthChannelListChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:band __band) 0)
    ((:channel __channel) 0)
    ((:in_or_out __in_or_out) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _band (round __band))
   (setq _channel (round __channel))
   (setq _in_or_out (round __in_or_out))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:band
   (&optional __band)
   (if __band (setq _band __band)) _band)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:in_or_out
   (&optional __in_or_out)
   (if __in_or_out (setq _in_or_out __in_or_out)) _in_or_out)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _band
    1
    ;; uint8 _channel
    1
    ;; uint8 _in_or_out
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _band
       (write-byte _band s)
     ;; uint8 _channel
       (write-byte _channel s)
     ;; uint8 _in_or_out
       (write-byte _in_or_out s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _band
     (setq _band (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _channel
     (setq _channel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _in_or_out
     (setq _in_or_out (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3NetworkStateWifiAuthChannelListChanged :md5sum-) "c7b1ccebf54f52f3836dbbe717c16c94")
(setf (get bebop_msgs::Ardrone3NetworkStateWifiAuthChannelListChanged :datatype-) "bebop_msgs/Ardrone3NetworkStateWifiAuthChannelListChanged")
(setf (get bebop_msgs::Ardrone3NetworkStateWifiAuthChannelListChanged :definition-)
      "# Ardrone3NetworkStateWifiAuthChannelListChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Available wifi channels.\\n Please note that the list is not complete until you receive the event [AvailableWifiChannelsCompleted](#1-14-3).

Header header

# The band of this channel : 2.4 GHz or 5 GHz
uint8 band_2_4ghz=0  # 2.4 GHz band
uint8 band_5ghz=1  # 5 GHz band
uint8 band
# The authorized channel.
uint8 channel
# Bit 0 is 1 if channel is authorized outside (0 otherwise) ; Bit 1 is 1 if channel is authorized inside (0 otherwise)
uint8 in_or_out

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



(provide :bebop_msgs/Ardrone3NetworkStateWifiAuthChannelListChanged "c7b1ccebf54f52f3836dbbe717c16c94")


