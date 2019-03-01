;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonCommonStateMassStorageInfoRemainingListChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonCommonStateMassStorageInfoRemainingListChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCOMMONSTATEMASSSTORAGEINFOREMAININGLISTCHANGED")
  (make-package "BEBOP_MSGS::COMMONCOMMONSTATEMASSSTORAGEINFOREMAININGLISTCHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonCommonStateMassStorageInfoRemainingListChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonCommonStateMassStorageInfoRemainingListChanged
  :super ros::object
  :slots (_header _free_space _rec_time _photo_remaining ))

(defmethod bebop_msgs::CommonCommonStateMassStorageInfoRemainingListChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:free_space __free_space) 0)
    ((:rec_time __rec_time) 0)
    ((:photo_remaining __photo_remaining) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _free_space (round __free_space))
   (setq _rec_time (round __rec_time))
   (setq _photo_remaining (round __photo_remaining))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:free_space
   (&optional __free_space)
   (if __free_space (setq _free_space __free_space)) _free_space)
  (:rec_time
   (&optional __rec_time)
   (if __rec_time (setq _rec_time __rec_time)) _rec_time)
  (:photo_remaining
   (&optional __photo_remaining)
   (if __photo_remaining (setq _photo_remaining __photo_remaining)) _photo_remaining)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _free_space
    4
    ;; uint16 _rec_time
    2
    ;; uint32 _photo_remaining
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _free_space
       (write-long _free_space s)
     ;; uint16 _rec_time
       (write-word _rec_time s)
     ;; uint32 _photo_remaining
       (write-long _photo_remaining s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _free_space
     (setq _free_space (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _rec_time
     (setq _rec_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _photo_remaining
     (setq _photo_remaining (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonCommonStateMassStorageInfoRemainingListChanged :md5sum-) "2749dbbf018a8a51c35552e6e0aac2ff")
(setf (get bebop_msgs::CommonCommonStateMassStorageInfoRemainingListChanged :datatype-) "bebop_msgs/CommonCommonStateMassStorageInfoRemainingListChanged")
(setf (get bebop_msgs::CommonCommonStateMassStorageInfoRemainingListChanged :definition-)
      "# CommonCommonStateMassStorageInfoRemainingListChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Mass storage remaining data list.

Header header

# Mass storage free space in MBytes
uint32 free_space
# Mass storage record time reamining in minute
uint16 rec_time
# Mass storage photo remaining
uint32 photo_remaining

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



(provide :bebop_msgs/CommonCommonStateMassStorageInfoRemainingListChanged "2749dbbf018a8a51c35552e6e0aac2ff")


