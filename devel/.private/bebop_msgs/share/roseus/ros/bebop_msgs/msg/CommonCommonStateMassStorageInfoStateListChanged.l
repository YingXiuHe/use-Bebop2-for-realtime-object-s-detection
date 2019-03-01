;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonCommonStateMassStorageInfoStateListChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonCommonStateMassStorageInfoStateListChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCOMMONSTATEMASSSTORAGEINFOSTATELISTCHANGED")
  (make-package "BEBOP_MSGS::COMMONCOMMONSTATEMASSSTORAGEINFOSTATELISTCHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonCommonStateMassStorageInfoStateListChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonCommonStateMassStorageInfoStateListChanged
  :super ros::object
  :slots (_header _mass_storage_id _size _used_size _plugged _full _internal ))

(defmethod bebop_msgs::CommonCommonStateMassStorageInfoStateListChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mass_storage_id __mass_storage_id) 0)
    ((:size __size) 0)
    ((:used_size __used_size) 0)
    ((:plugged __plugged) 0)
    ((:full __full) 0)
    ((:internal __internal) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mass_storage_id (round __mass_storage_id))
   (setq _size (round __size))
   (setq _used_size (round __used_size))
   (setq _plugged (round __plugged))
   (setq _full (round __full))
   (setq _internal (round __internal))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mass_storage_id
   (&optional __mass_storage_id)
   (if __mass_storage_id (setq _mass_storage_id __mass_storage_id)) _mass_storage_id)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:used_size
   (&optional __used_size)
   (if __used_size (setq _used_size __used_size)) _used_size)
  (:plugged
   (&optional __plugged)
   (if __plugged (setq _plugged __plugged)) _plugged)
  (:full
   (&optional __full)
   (if __full (setq _full __full)) _full)
  (:internal
   (&optional __internal)
   (if __internal (setq _internal __internal)) _internal)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _mass_storage_id
    1
    ;; uint32 _size
    4
    ;; uint32 _used_size
    4
    ;; uint8 _plugged
    1
    ;; uint8 _full
    1
    ;; uint8 _internal
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _mass_storage_id
       (write-byte _mass_storage_id s)
     ;; uint32 _size
       (write-long _size s)
     ;; uint32 _used_size
       (write-long _used_size s)
     ;; uint8 _plugged
       (write-byte _plugged s)
     ;; uint8 _full
       (write-byte _full s)
     ;; uint8 _internal
       (write-byte _internal s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _mass_storage_id
     (setq _mass_storage_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _used_size
     (setq _used_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _plugged
     (setq _plugged (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _full
     (setq _full (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _internal
     (setq _internal (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonCommonStateMassStorageInfoStateListChanged :md5sum-) "2ca92d7dc2cd357b6c1f89b1084ed001")
(setf (get bebop_msgs::CommonCommonStateMassStorageInfoStateListChanged :datatype-) "bebop_msgs/CommonCommonStateMassStorageInfoStateListChanged")
(setf (get bebop_msgs::CommonCommonStateMassStorageInfoStateListChanged :definition-)
      "# CommonCommonStateMassStorageInfoStateListChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Mass storage info state list.

Header header

# Mass storage state id (unique)
uint8 mass_storage_id
# Mass storage size in MBytes
uint32 size
# Mass storage used size in MBytes
uint32 used_size
# Mass storage plugged (1 if mass storage is plugged, otherwise 0)
uint8 plugged
# Mass storage full information state (1 if mass storage full, 0 otherwise).
uint8 full
# Mass storage internal type state (1 if mass storage is internal, 0 otherwise)
uint8 internal

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



(provide :bebop_msgs/CommonCommonStateMassStorageInfoStateListChanged "2ca92d7dc2cd357b6c1f89b1084ed001")


