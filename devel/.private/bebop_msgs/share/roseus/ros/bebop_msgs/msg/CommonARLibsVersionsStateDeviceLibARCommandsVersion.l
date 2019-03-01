;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonARLibsVersionsStateDeviceLibARCommandsVersion)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonARLibsVersionsStateDeviceLibARCommandsVersion (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONARLIBSVERSIONSSTATEDEVICELIBARCOMMANDSVERSION")
  (make-package "BEBOP_MSGS::COMMONARLIBSVERSIONSSTATEDEVICELIBARCOMMANDSVERSION"))

(in-package "ROS")
;;//! \htmlinclude CommonARLibsVersionsStateDeviceLibARCommandsVersion.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonARLibsVersionsStateDeviceLibARCommandsVersion
  :super ros::object
  :slots (_header _version ))

(defmethod bebop_msgs::CommonARLibsVersionsStateDeviceLibARCommandsVersion
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:version __version) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _version (string __version))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _version
    4 (length _version)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _version
       (write-long (length _version) s) (princ _version s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get bebop_msgs::CommonARLibsVersionsStateDeviceLibARCommandsVersion :md5sum-) "5c334c4f3ab8d1ba8b608eeadaa52a06")
(setf (get bebop_msgs::CommonARLibsVersionsStateDeviceLibARCommandsVersion :datatype-) "bebop_msgs/CommonARLibsVersionsStateDeviceLibARCommandsVersion")
(setf (get bebop_msgs::CommonARLibsVersionsStateDeviceLibARCommandsVersion :definition-)
      "# CommonARLibsVersionsStateDeviceLibARCommandsVersion
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: 

Header header

# version of libARCommands (1.2.3.4 format)
string version

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



(provide :bebop_msgs/CommonARLibsVersionsStateDeviceLibARCommandsVersion "5c334c4f3ab8d1ba8b608eeadaa52a06")


