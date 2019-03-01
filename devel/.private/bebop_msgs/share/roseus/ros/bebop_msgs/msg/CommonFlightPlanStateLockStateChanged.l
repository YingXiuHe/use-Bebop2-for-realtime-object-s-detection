;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonFlightPlanStateLockStateChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonFlightPlanStateLockStateChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONFLIGHTPLANSTATELOCKSTATECHANGED")
  (make-package "BEBOP_MSGS::COMMONFLIGHTPLANSTATELOCKSTATECHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonFlightPlanStateLockStateChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonFlightPlanStateLockStateChanged
  :super ros::object
  :slots (_header _LockState ))

(defmethod bebop_msgs::CommonFlightPlanStateLockStateChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:LockState __LockState) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _LockState (round __LockState))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:LockState
   (&optional __LockState)
   (if __LockState (setq _LockState __LockState)) _LockState)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _LockState
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _LockState
       (write-byte _LockState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _LockState
     (setq _LockState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonFlightPlanStateLockStateChanged :md5sum-) "589c834fe271c4b4d92bfc1fd4d150a2")
(setf (get bebop_msgs::CommonFlightPlanStateLockStateChanged :datatype-) "bebop_msgs/CommonFlightPlanStateLockStateChanged")
(setf (get bebop_msgs::CommonFlightPlanStateLockStateChanged :definition-)
      "# CommonFlightPlanStateLockStateChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: FlightPlan lock state.\\n Represents the fact that the controller is able or not to stop or pause a playing FlightPlan

Header header

# 1 if FlightPlan is locked: cant pause or stop FlightPlan. 0 if FlightPlan is unlocked: pause or stop available.
uint8 LockState

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



(provide :bebop_msgs/CommonFlightPlanStateLockStateChanged "589c834fe271c4b4d92bfc1fd4d150a2")


