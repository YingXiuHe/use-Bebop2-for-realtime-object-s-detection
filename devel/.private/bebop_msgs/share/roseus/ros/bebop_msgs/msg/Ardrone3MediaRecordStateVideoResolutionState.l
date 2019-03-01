;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3MediaRecordStateVideoResolutionState)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3MediaRecordStateVideoResolutionState (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEORESOLUTIONSTATE")
  (make-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEORESOLUTIONSTATE"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3MediaRecordStateVideoResolutionState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STREAMING_RES360P*" (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEORESOLUTIONSTATE"))
(shadow '*STREAMING_RES360P* (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEORESOLUTIONSTATE"))
(defconstant bebop_msgs::Ardrone3MediaRecordStateVideoResolutionState::*STREAMING_RES360P* 0)
(intern "*STREAMING_RES480P*" (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEORESOLUTIONSTATE"))
(shadow '*STREAMING_RES480P* (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEORESOLUTIONSTATE"))
(defconstant bebop_msgs::Ardrone3MediaRecordStateVideoResolutionState::*STREAMING_RES480P* 1)
(intern "*STREAMING_RES720P*" (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEORESOLUTIONSTATE"))
(shadow '*STREAMING_RES720P* (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEORESOLUTIONSTATE"))
(defconstant bebop_msgs::Ardrone3MediaRecordStateVideoResolutionState::*STREAMING_RES720P* 2)
(intern "*STREAMING_RES1080P*" (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEORESOLUTIONSTATE"))
(shadow '*STREAMING_RES1080P* (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEORESOLUTIONSTATE"))
(defconstant bebop_msgs::Ardrone3MediaRecordStateVideoResolutionState::*STREAMING_RES1080P* 3)
(intern "*RECORDING_RES360P*" (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEORESOLUTIONSTATE"))
(shadow '*RECORDING_RES360P* (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEORESOLUTIONSTATE"))
(defconstant bebop_msgs::Ardrone3MediaRecordStateVideoResolutionState::*RECORDING_RES360P* 0)
(intern "*RECORDING_RES480P*" (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEORESOLUTIONSTATE"))
(shadow '*RECORDING_RES480P* (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEORESOLUTIONSTATE"))
(defconstant bebop_msgs::Ardrone3MediaRecordStateVideoResolutionState::*RECORDING_RES480P* 1)
(intern "*RECORDING_RES720P*" (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEORESOLUTIONSTATE"))
(shadow '*RECORDING_RES720P* (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEORESOLUTIONSTATE"))
(defconstant bebop_msgs::Ardrone3MediaRecordStateVideoResolutionState::*RECORDING_RES720P* 2)
(intern "*RECORDING_RES1080P*" (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEORESOLUTIONSTATE"))
(shadow '*RECORDING_RES1080P* (find-package "BEBOP_MSGS::ARDRONE3MEDIARECORDSTATEVIDEORESOLUTIONSTATE"))
(defconstant bebop_msgs::Ardrone3MediaRecordStateVideoResolutionState::*RECORDING_RES1080P* 3)
(defclass bebop_msgs::Ardrone3MediaRecordStateVideoResolutionState
  :super ros::object
  :slots (_header _streaming _recording ))

(defmethod bebop_msgs::Ardrone3MediaRecordStateVideoResolutionState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:streaming __streaming) 0)
    ((:recording __recording) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _streaming (round __streaming))
   (setq _recording (round __recording))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:streaming
   (&optional __streaming)
   (if __streaming (setq _streaming __streaming)) _streaming)
  (:recording
   (&optional __recording)
   (if __recording (setq _recording __recording)) _recording)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _streaming
    1
    ;; uint8 _recording
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _streaming
       (write-byte _streaming s)
     ;; uint8 _recording
       (write-byte _recording s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _streaming
     (setq _streaming (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _recording
     (setq _recording (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3MediaRecordStateVideoResolutionState :md5sum-) "478002c2ec614a227f494865922fd580")
(setf (get bebop_msgs::Ardrone3MediaRecordStateVideoResolutionState :datatype-) "bebop_msgs/Ardrone3MediaRecordStateVideoResolutionState")
(setf (get bebop_msgs::Ardrone3MediaRecordStateVideoResolutionState :definition-)
      "# Ardrone3MediaRecordStateVideoResolutionState
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Video resolution.\\n Informs about streaming and recording video resolutions.\\n Note that this is only an indication about what the resolution should be. To know the real resolution, you should get it from the frame.

Header header

# Streaming resolution
uint8 streaming_res360p=0  # 360p resolution.
uint8 streaming_res480p=1  # 480p resolution.
uint8 streaming_res720p=2  # 720p resolution.
uint8 streaming_res1080p=3  # 1080p resolution.
uint8 streaming
# Recording resolution
uint8 recording_res360p=0  # 360p resolution.
uint8 recording_res480p=1  # 480p resolution.
uint8 recording_res720p=2  # 720p resolution.
uint8 recording_res1080p=3  # 1080p resolution.
uint8 recording

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



(provide :bebop_msgs/Ardrone3MediaRecordStateVideoResolutionState "478002c2ec614a227f494865922fd580")


