;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonMavlinkStateMavlinkFilePlayingStateChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonMavlinkStateMavlinkFilePlayingStateChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKFILEPLAYINGSTATECHANGED")
  (make-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKFILEPLAYINGSTATECHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonMavlinkStateMavlinkFilePlayingStateChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STATE_PLAYING*" (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKFILEPLAYINGSTATECHANGED"))
(shadow '*STATE_PLAYING* (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKFILEPLAYINGSTATECHANGED"))
(defconstant bebop_msgs::CommonMavlinkStateMavlinkFilePlayingStateChanged::*STATE_PLAYING* 0)
(intern "*STATE_STOPPED*" (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKFILEPLAYINGSTATECHANGED"))
(shadow '*STATE_STOPPED* (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKFILEPLAYINGSTATECHANGED"))
(defconstant bebop_msgs::CommonMavlinkStateMavlinkFilePlayingStateChanged::*STATE_STOPPED* 1)
(intern "*STATE_PAUSED*" (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKFILEPLAYINGSTATECHANGED"))
(shadow '*STATE_PAUSED* (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKFILEPLAYINGSTATECHANGED"))
(defconstant bebop_msgs::CommonMavlinkStateMavlinkFilePlayingStateChanged::*STATE_PAUSED* 2)
(intern "*STATE_LOADED*" (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKFILEPLAYINGSTATECHANGED"))
(shadow '*STATE_LOADED* (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKFILEPLAYINGSTATECHANGED"))
(defconstant bebop_msgs::CommonMavlinkStateMavlinkFilePlayingStateChanged::*STATE_LOADED* 3)
(intern "*TYPE_FLIGHTPLAN*" (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKFILEPLAYINGSTATECHANGED"))
(shadow '*TYPE_FLIGHTPLAN* (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKFILEPLAYINGSTATECHANGED"))
(defconstant bebop_msgs::CommonMavlinkStateMavlinkFilePlayingStateChanged::*TYPE_FLIGHTPLAN* 0)
(intern "*TYPE_MAPMYHOUSE*" (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKFILEPLAYINGSTATECHANGED"))
(shadow '*TYPE_MAPMYHOUSE* (find-package "BEBOP_MSGS::COMMONMAVLINKSTATEMAVLINKFILEPLAYINGSTATECHANGED"))
(defconstant bebop_msgs::CommonMavlinkStateMavlinkFilePlayingStateChanged::*TYPE_MAPMYHOUSE* 1)
(defclass bebop_msgs::CommonMavlinkStateMavlinkFilePlayingStateChanged
  :super ros::object
  :slots (_header _state _filepath _type ))

(defmethod bebop_msgs::CommonMavlinkStateMavlinkFilePlayingStateChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) 0)
    ((:filepath __filepath) "")
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _state (round __state))
   (setq _filepath (string __filepath))
   (setq _type (round __type))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:filepath
   (&optional __filepath)
   (if __filepath (setq _filepath __filepath)) _filepath)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _state
    1
    ;; string _filepath
    4 (length _filepath)
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _state
       (write-byte _state s)
     ;; string _filepath
       (write-long (length _filepath) s) (princ _filepath s)
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _filepath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filepath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonMavlinkStateMavlinkFilePlayingStateChanged :md5sum-) "1938cf62aa5e1b7b530a32681de3f4da")
(setf (get bebop_msgs::CommonMavlinkStateMavlinkFilePlayingStateChanged :datatype-) "bebop_msgs/CommonMavlinkStateMavlinkFilePlayingStateChanged")
(setf (get bebop_msgs::CommonMavlinkStateMavlinkFilePlayingStateChanged :definition-)
      "# CommonMavlinkStateMavlinkFilePlayingStateChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Playing state of a FlightPlan.

Header header

# State of the mavlink
uint8 state_playing=0  # Mavlink file is playing
uint8 state_stopped=1  # Mavlink file is stopped (arg filepath and type are useless in this state)
uint8 state_paused=2  # Mavlink file is paused
uint8 state_loaded=3  # Mavlink file is loaded (it will be played at take-off)
uint8 state
# flight plan file path from the mavlink ftp root
string filepath
# type of the played mavlink file
uint8 type_flightPlan=0  # Mavlink file for FlightPlan
uint8 type_mapMyHouse=1  # Mavlink file for MapMyHouse
uint8 type

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



(provide :bebop_msgs/CommonMavlinkStateMavlinkFilePlayingStateChanged "1938cf62aa5e1b7b530a32681de3f4da")


