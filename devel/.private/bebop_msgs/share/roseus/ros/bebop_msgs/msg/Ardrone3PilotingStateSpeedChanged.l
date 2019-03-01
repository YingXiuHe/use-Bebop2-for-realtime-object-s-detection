;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3PilotingStateSpeedChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3PilotingStateSpeedChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATESPEEDCHANGED")
  (make-package "BEBOP_MSGS::ARDRONE3PILOTINGSTATESPEEDCHANGED"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3PilotingStateSpeedChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::Ardrone3PilotingStateSpeedChanged
  :super ros::object
  :slots (_header _speedX _speedY _speedZ ))

(defmethod bebop_msgs::Ardrone3PilotingStateSpeedChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:speedX __speedX) 0.0)
    ((:speedY __speedY) 0.0)
    ((:speedZ __speedZ) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _speedX (float __speedX))
   (setq _speedY (float __speedY))
   (setq _speedZ (float __speedZ))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:speedX
   (&optional __speedX)
   (if __speedX (setq _speedX __speedX)) _speedX)
  (:speedY
   (&optional __speedY)
   (if __speedY (setq _speedY __speedY)) _speedY)
  (:speedZ
   (&optional __speedZ)
   (if __speedZ (setq _speedZ __speedZ)) _speedZ)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _speedX
    4
    ;; float32 _speedY
    4
    ;; float32 _speedZ
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _speedX
       (sys::poke _speedX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speedY
       (sys::poke _speedY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speedZ
       (sys::poke _speedZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _speedX
     (setq _speedX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speedY
     (setq _speedY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speedZ
     (setq _speedZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3PilotingStateSpeedChanged :md5sum-) "a8b7ba33cedd9aff188b6d7cc81fcfab")
(setf (get bebop_msgs::Ardrone3PilotingStateSpeedChanged :datatype-) "bebop_msgs/Ardrone3PilotingStateSpeedChanged")
(setf (get bebop_msgs::Ardrone3PilotingStateSpeedChanged :definition-)
      "# Ardrone3PilotingStateSpeedChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Drones speed changed.\\n Expressed in the NED referential (North-East-Down).

Header header

# Speed relative to the North (when drone moves to the north, speed is &gt; 0) (in m/s)
float32 speedX
# Speed relative to the East (when drone moves to the east, speed is &gt; 0) (in m/s)
float32 speedY
# Speed on the z axis (when drone moves down, speed is &gt; 0) (in m/s)
float32 speedZ

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



(provide :bebop_msgs/Ardrone3PilotingStateSpeedChanged "a8b7ba33cedd9aff188b6d7cc81fcfab")


