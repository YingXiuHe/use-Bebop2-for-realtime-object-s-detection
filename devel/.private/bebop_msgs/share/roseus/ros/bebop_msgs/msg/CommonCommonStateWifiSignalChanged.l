;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonCommonStateWifiSignalChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonCommonStateWifiSignalChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCOMMONSTATEWIFISIGNALCHANGED")
  (make-package "BEBOP_MSGS::COMMONCOMMONSTATEWIFISIGNALCHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonCommonStateWifiSignalChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonCommonStateWifiSignalChanged
  :super ros::object
  :slots (_header _rssi ))

(defmethod bebop_msgs::CommonCommonStateWifiSignalChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rssi __rssi) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _rssi (round __rssi))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rssi
   (&optional __rssi)
   (if __rssi (setq _rssi __rssi)) _rssi)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _rssi
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _rssi
       (write-word _rssi s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _rssi
     (setq _rssi (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonCommonStateWifiSignalChanged :md5sum-) "ad96f0dce593efdfb07802778d15cae9")
(setf (get bebop_msgs::CommonCommonStateWifiSignalChanged :datatype-) "bebop_msgs/CommonCommonStateWifiSignalChanged")
(setf (get bebop_msgs::CommonCommonStateWifiSignalChanged :definition-)
      "# CommonCommonStateWifiSignalChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Rssi (Wifi Signal between controller and product) changed.

Header header

# RSSI of the signal between controller and the product (in dbm)
int16 rssi

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



(provide :bebop_msgs/CommonCommonStateWifiSignalChanged "ad96f0dce593efdfb07802778d15cae9")


