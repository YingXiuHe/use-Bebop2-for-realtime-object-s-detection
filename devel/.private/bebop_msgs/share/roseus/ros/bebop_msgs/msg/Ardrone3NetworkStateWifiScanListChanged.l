;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3NetworkStateWifiScanListChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3NetworkStateWifiScanListChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3NETWORKSTATEWIFISCANLISTCHANGED")
  (make-package "BEBOP_MSGS::ARDRONE3NETWORKSTATEWIFISCANLISTCHANGED"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3NetworkStateWifiScanListChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*BAND_2_4GHZ*" (find-package "BEBOP_MSGS::ARDRONE3NETWORKSTATEWIFISCANLISTCHANGED"))
(shadow '*BAND_2_4GHZ* (find-package "BEBOP_MSGS::ARDRONE3NETWORKSTATEWIFISCANLISTCHANGED"))
(defconstant bebop_msgs::Ardrone3NetworkStateWifiScanListChanged::*BAND_2_4GHZ* 0)
(intern "*BAND_5GHZ*" (find-package "BEBOP_MSGS::ARDRONE3NETWORKSTATEWIFISCANLISTCHANGED"))
(shadow '*BAND_5GHZ* (find-package "BEBOP_MSGS::ARDRONE3NETWORKSTATEWIFISCANLISTCHANGED"))
(defconstant bebop_msgs::Ardrone3NetworkStateWifiScanListChanged::*BAND_5GHZ* 1)
(defclass bebop_msgs::Ardrone3NetworkStateWifiScanListChanged
  :super ros::object
  :slots (_header _ssid _rssi _band _channel ))

(defmethod bebop_msgs::Ardrone3NetworkStateWifiScanListChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ssid __ssid) "")
    ((:rssi __rssi) 0)
    ((:band __band) 0)
    ((:channel __channel) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ssid (string __ssid))
   (setq _rssi (round __rssi))
   (setq _band (round __band))
   (setq _channel (round __channel))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ssid
   (&optional __ssid)
   (if __ssid (setq _ssid __ssid)) _ssid)
  (:rssi
   (&optional __rssi)
   (if __rssi (setq _rssi __rssi)) _rssi)
  (:band
   (&optional __band)
   (if __band (setq _band __band)) _band)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _ssid
    4 (length _ssid)
    ;; int16 _rssi
    2
    ;; uint8 _band
    1
    ;; uint8 _channel
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _ssid
       (write-long (length _ssid) s) (princ _ssid s)
     ;; int16 _rssi
       (write-word _rssi s)
     ;; uint8 _band
       (write-byte _band s)
     ;; uint8 _channel
       (write-byte _channel s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _ssid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ssid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _rssi
     (setq _rssi (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _band
     (setq _band (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _channel
     (setq _channel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3NetworkStateWifiScanListChanged :md5sum-) "887b79816b1cfc1c69c34200f03104a8")
(setf (get bebop_msgs::Ardrone3NetworkStateWifiScanListChanged :datatype-) "bebop_msgs/Ardrone3NetworkStateWifiScanListChanged")
(setf (get bebop_msgs::Ardrone3NetworkStateWifiScanListChanged :definition-)
      "# Ardrone3NetworkStateWifiScanListChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Wifi scan results.\\n Please note that the list is not complete until you receive the event [WifiScanEnded](#1-14-1).

Header header

# SSID of the AP
string ssid
# RSSI of the AP in dbm (negative value)
int16 rssi
# The band : 2.4 GHz or 5 GHz
uint8 band_2_4ghz=0  # 2.4 GHz band
uint8 band_5ghz=1  # 5 GHz band
uint8 band
# Channel of the AP
uint8 channel

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



(provide :bebop_msgs/Ardrone3NetworkStateWifiScanListChanged "887b79816b1cfc1c69c34200f03104a8")


