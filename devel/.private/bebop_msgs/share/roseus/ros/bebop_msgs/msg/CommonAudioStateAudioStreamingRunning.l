;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonAudioStateAudioStreamingRunning)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonAudioStateAudioStreamingRunning (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONAUDIOSTATEAUDIOSTREAMINGRUNNING")
  (make-package "BEBOP_MSGS::COMMONAUDIOSTATEAUDIOSTREAMINGRUNNING"))

(in-package "ROS")
;;//! \htmlinclude CommonAudioStateAudioStreamingRunning.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonAudioStateAudioStreamingRunning
  :super ros::object
  :slots (_header _running ))

(defmethod bebop_msgs::CommonAudioStateAudioStreamingRunning
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:running __running) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _running (round __running))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:running
   (&optional __running)
   (if __running (setq _running __running)) _running)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _running
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _running
       (write-byte _running s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _running
     (setq _running (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonAudioStateAudioStreamingRunning :md5sum-) "c32c9979998ec419afee553d1e1e2e03")
(setf (get bebop_msgs::CommonAudioStateAudioStreamingRunning :datatype-) "bebop_msgs/CommonAudioStateAudioStreamingRunning")
(setf (get bebop_msgs::CommonAudioStateAudioStreamingRunning :definition-)
      "# CommonAudioStateAudioStreamingRunning
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Audio stream direction.

Header header

# Bit field for TX and RX running bit 0 is 1 if Drone TX is running bit 1 is 1 if Drone RX is running
uint8 running

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



(provide :bebop_msgs/CommonAudioStateAudioStreamingRunning "c32c9979998ec419afee553d1e1e2e03")


