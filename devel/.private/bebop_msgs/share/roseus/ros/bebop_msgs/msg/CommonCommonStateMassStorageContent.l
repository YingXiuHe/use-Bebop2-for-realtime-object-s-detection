;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonCommonStateMassStorageContent)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonCommonStateMassStorageContent (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCOMMONSTATEMASSSTORAGECONTENT")
  (make-package "BEBOP_MSGS::COMMONCOMMONSTATEMASSSTORAGECONTENT"))

(in-package "ROS")
;;//! \htmlinclude CommonCommonStateMassStorageContent.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonCommonStateMassStorageContent
  :super ros::object
  :slots (_header _mass_storage_id _nbPhotos _nbVideos _nbPuds _nbCrashLogs _nbRawPhotos ))

(defmethod bebop_msgs::CommonCommonStateMassStorageContent
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mass_storage_id __mass_storage_id) 0)
    ((:nbPhotos __nbPhotos) 0)
    ((:nbVideos __nbVideos) 0)
    ((:nbPuds __nbPuds) 0)
    ((:nbCrashLogs __nbCrashLogs) 0)
    ((:nbRawPhotos __nbRawPhotos) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mass_storage_id (round __mass_storage_id))
   (setq _nbPhotos (round __nbPhotos))
   (setq _nbVideos (round __nbVideos))
   (setq _nbPuds (round __nbPuds))
   (setq _nbCrashLogs (round __nbCrashLogs))
   (setq _nbRawPhotos (round __nbRawPhotos))
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
  (:nbPhotos
   (&optional __nbPhotos)
   (if __nbPhotos (setq _nbPhotos __nbPhotos)) _nbPhotos)
  (:nbVideos
   (&optional __nbVideos)
   (if __nbVideos (setq _nbVideos __nbVideos)) _nbVideos)
  (:nbPuds
   (&optional __nbPuds)
   (if __nbPuds (setq _nbPuds __nbPuds)) _nbPuds)
  (:nbCrashLogs
   (&optional __nbCrashLogs)
   (if __nbCrashLogs (setq _nbCrashLogs __nbCrashLogs)) _nbCrashLogs)
  (:nbRawPhotos
   (&optional __nbRawPhotos)
   (if __nbRawPhotos (setq _nbRawPhotos __nbRawPhotos)) _nbRawPhotos)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _mass_storage_id
    1
    ;; uint16 _nbPhotos
    2
    ;; uint16 _nbVideos
    2
    ;; uint16 _nbPuds
    2
    ;; uint16 _nbCrashLogs
    2
    ;; uint16 _nbRawPhotos
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _mass_storage_id
       (write-byte _mass_storage_id s)
     ;; uint16 _nbPhotos
       (write-word _nbPhotos s)
     ;; uint16 _nbVideos
       (write-word _nbVideos s)
     ;; uint16 _nbPuds
       (write-word _nbPuds s)
     ;; uint16 _nbCrashLogs
       (write-word _nbCrashLogs s)
     ;; uint16 _nbRawPhotos
       (write-word _nbRawPhotos s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _mass_storage_id
     (setq _mass_storage_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _nbPhotos
     (setq _nbPhotos (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _nbVideos
     (setq _nbVideos (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _nbPuds
     (setq _nbPuds (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _nbCrashLogs
     (setq _nbCrashLogs (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _nbRawPhotos
     (setq _nbRawPhotos (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonCommonStateMassStorageContent :md5sum-) "a6f27bb44bd06f7e0a5be4f3c064ceea")
(setf (get bebop_msgs::CommonCommonStateMassStorageContent :datatype-) "bebop_msgs/CommonCommonStateMassStorageContent")
(setf (get bebop_msgs::CommonCommonStateMassStorageContent :definition-)
      "# CommonCommonStateMassStorageContent
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Mass storage content.

Header header

# Mass storage id (unique)
uint8 mass_storage_id
# Number of photos (does not include raw photos)
uint16 nbPhotos
# Number of videos
uint16 nbVideos
# Number of puds
uint16 nbPuds
# Number of crash logs
uint16 nbCrashLogs
# Number of raw photos
uint16 nbRawPhotos

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



(provide :bebop_msgs/CommonCommonStateMassStorageContent "a6f27bb44bd06f7e0a5be4f3c064ceea")


