;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonCommonStateMassStorageContentForCurrentRun)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonCommonStateMassStorageContentForCurrentRun (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCOMMONSTATEMASSSTORAGECONTENTFORCURRENTRUN")
  (make-package "BEBOP_MSGS::COMMONCOMMONSTATEMASSSTORAGECONTENTFORCURRENTRUN"))

(in-package "ROS")
;;//! \htmlinclude CommonCommonStateMassStorageContentForCurrentRun.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonCommonStateMassStorageContentForCurrentRun
  :super ros::object
  :slots (_header _mass_storage_id _nbPhotos _nbVideos _nbRawPhotos ))

(defmethod bebop_msgs::CommonCommonStateMassStorageContentForCurrentRun
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mass_storage_id __mass_storage_id) 0)
    ((:nbPhotos __nbPhotos) 0)
    ((:nbVideos __nbVideos) 0)
    ((:nbRawPhotos __nbRawPhotos) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mass_storage_id (round __mass_storage_id))
   (setq _nbPhotos (round __nbPhotos))
   (setq _nbVideos (round __nbVideos))
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
   ;; uint16 _nbRawPhotos
     (setq _nbRawPhotos (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonCommonStateMassStorageContentForCurrentRun :md5sum-) "a6aacd7db5d55f185b1fbb8276f7019f")
(setf (get bebop_msgs::CommonCommonStateMassStorageContentForCurrentRun :datatype-) "bebop_msgs/CommonCommonStateMassStorageContentForCurrentRun")
(setf (get bebop_msgs::CommonCommonStateMassStorageContentForCurrentRun :definition-)
      "# CommonCommonStateMassStorageContentForCurrentRun
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Mass storage content for current run.\\n Only counts the files related to the current run (see [RunId](#0-30-0))

Header header

# Mass storage id (unique)
uint8 mass_storage_id
# Number of photos (does not include raw photos)
uint16 nbPhotos
# Number of videos
uint16 nbVideos
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



(provide :bebop_msgs/CommonCommonStateMassStorageContentForCurrentRun "a6aacd7db5d55f185b1fbb8276f7019f")


