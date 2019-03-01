;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3CameraStateOrientationV2)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3CameraStateOrientationV2 (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3CAMERASTATEORIENTATIONV2")
  (make-package "BEBOP_MSGS::ARDRONE3CAMERASTATEORIENTATIONV2"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3CameraStateOrientationV2.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::Ardrone3CameraStateOrientationV2
  :super ros::object
  :slots (_header _tilt _pan ))

(defmethod bebop_msgs::Ardrone3CameraStateOrientationV2
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tilt __tilt) 0.0)
    ((:pan __pan) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _tilt (float __tilt))
   (setq _pan (float __pan))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tilt
   (&optional __tilt)
   (if __tilt (setq _tilt __tilt)) _tilt)
  (:pan
   (&optional __pan)
   (if __pan (setq _pan __pan)) _pan)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _tilt
    4
    ;; float32 _pan
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _tilt
       (sys::poke _tilt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pan
       (sys::poke _pan (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _tilt
     (setq _tilt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pan
     (setq _pan (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3CameraStateOrientationV2 :md5sum-) "8721413d79d1a8c88529f47de1a5ecb0")
(setf (get bebop_msgs::Ardrone3CameraStateOrientationV2 :datatype-) "bebop_msgs/Ardrone3CameraStateOrientationV2")
(setf (get bebop_msgs::Ardrone3CameraStateOrientationV2 :definition-)
      "# Ardrone3CameraStateOrientationV2
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Camera orientation with float arguments.

Header header

# Tilt camera consign for the drone [deg]
float32 tilt
# Pan camera consign for the drone [deg]
float32 pan

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



(provide :bebop_msgs/Ardrone3CameraStateOrientationV2 "8721413d79d1a8c88529f47de1a5ecb0")


