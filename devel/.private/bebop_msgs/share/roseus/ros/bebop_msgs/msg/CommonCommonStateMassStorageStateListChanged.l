;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonCommonStateMassStorageStateListChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonCommonStateMassStorageStateListChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCOMMONSTATEMASSSTORAGESTATELISTCHANGED")
  (make-package "BEBOP_MSGS::COMMONCOMMONSTATEMASSSTORAGESTATELISTCHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonCommonStateMassStorageStateListChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonCommonStateMassStorageStateListChanged
  :super ros::object
  :slots (_header _mass_storage_id _name ))

(defmethod bebop_msgs::CommonCommonStateMassStorageStateListChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mass_storage_id __mass_storage_id) 0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _mass_storage_id (round __mass_storage_id))
   (setq _name (string __name))
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
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _mass_storage_id
    1
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _mass_storage_id
       (write-byte _mass_storage_id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _mass_storage_id
     (setq _mass_storage_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get bebop_msgs::CommonCommonStateMassStorageStateListChanged :md5sum-) "61c5221f7b7aeb8bcb1cc127a775a32c")
(setf (get bebop_msgs::CommonCommonStateMassStorageStateListChanged :datatype-) "bebop_msgs/CommonCommonStateMassStorageStateListChanged")
(setf (get bebop_msgs::CommonCommonStateMassStorageStateListChanged :definition-)
      "# CommonCommonStateMassStorageStateListChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Mass storage state list.

Header header

# Mass storage id (unique)
uint8 mass_storage_id
# Mass storage name
string name

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



(provide :bebop_msgs/CommonCommonStateMassStorageStateListChanged "61c5221f7b7aeb8bcb1cc127a775a32c")


