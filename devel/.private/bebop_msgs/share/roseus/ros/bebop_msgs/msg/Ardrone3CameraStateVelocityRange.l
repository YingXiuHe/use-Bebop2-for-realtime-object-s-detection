;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3CameraStateVelocityRange)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3CameraStateVelocityRange (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3CAMERASTATEVELOCITYRANGE")
  (make-package "BEBOP_MSGS::ARDRONE3CAMERASTATEVELOCITYRANGE"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3CameraStateVelocityRange.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::Ardrone3CameraStateVelocityRange
  :super ros::object
  :slots (_header _max_tilt _max_pan ))

(defmethod bebop_msgs::Ardrone3CameraStateVelocityRange
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:max_tilt __max_tilt) 0.0)
    ((:max_pan __max_pan) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _max_tilt (float __max_tilt))
   (setq _max_pan (float __max_pan))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:max_tilt
   (&optional __max_tilt)
   (if __max_tilt (setq _max_tilt __max_tilt)) _max_tilt)
  (:max_pan
   (&optional __max_pan)
   (if __max_pan (setq _max_pan __max_pan)) _max_pan)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _max_tilt
    4
    ;; float32 _max_pan
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _max_tilt
       (sys::poke _max_tilt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_pan
       (sys::poke _max_pan (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _max_tilt
     (setq _max_tilt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_pan
     (setq _max_pan (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3CameraStateVelocityRange :md5sum-) "cda98074fc63d3bb789505d7a068cced")
(setf (get bebop_msgs::Ardrone3CameraStateVelocityRange :datatype-) "bebop_msgs/Ardrone3CameraStateVelocityRange")
(setf (get bebop_msgs::Ardrone3CameraStateVelocityRange :definition-)
      "# Ardrone3CameraStateVelocityRange
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Camera Orientation velocity limits.

Header header

# Absolute max tilt velocity [deg/s]
float32 max_tilt
# Absolute max pan velocity [deg/s]
float32 max_pan

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



(provide :bebop_msgs/Ardrone3CameraStateVelocityRange "cda98074fc63d3bb789505d7a068cced")


