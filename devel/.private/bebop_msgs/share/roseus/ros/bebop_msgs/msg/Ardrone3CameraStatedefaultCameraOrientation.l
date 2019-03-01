;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3CameraStatedefaultCameraOrientation)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3CameraStatedefaultCameraOrientation (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3CAMERASTATEDEFAULTCAMERAORIENTATION")
  (make-package "BEBOP_MSGS::ARDRONE3CAMERASTATEDEFAULTCAMERAORIENTATION"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3CameraStatedefaultCameraOrientation.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::Ardrone3CameraStatedefaultCameraOrientation
  :super ros::object
  :slots (_header _tilt _pan ))

(defmethod bebop_msgs::Ardrone3CameraStatedefaultCameraOrientation
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tilt __tilt) 0)
    ((:pan __pan) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _tilt (round __tilt))
   (setq _pan (round __pan))
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
    ;; int8 _tilt
    1
    ;; int8 _pan
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _tilt
       (write-byte _tilt s)
     ;; int8 _pan
       (write-byte _pan s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _tilt
     (setq _tilt (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _tilt 127) (setq _tilt (- _tilt 256)))
   ;; int8 _pan
     (setq _pan (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pan 127) (setq _pan (- _pan 256)))
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3CameraStatedefaultCameraOrientation :md5sum-) "56079118c93b004f0ffa8a6f3b67bbf9")
(setf (get bebop_msgs::Ardrone3CameraStatedefaultCameraOrientation :datatype-) "bebop_msgs/Ardrone3CameraStatedefaultCameraOrientation")
(setf (get bebop_msgs::Ardrone3CameraStatedefaultCameraOrientation :definition-)
      "# Ardrone3CameraStatedefaultCameraOrientation
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Orientation of the center of the camera.\\n This is the value to send when you want to center the camera.

Header header

# Tilt value (in degree)
int8 tilt
# Pan value (in degree)
int8 pan

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



(provide :bebop_msgs/Ardrone3CameraStatedefaultCameraOrientation "56079118c93b004f0ffa8a6f3b67bbf9")


