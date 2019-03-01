;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonAnimationsStateList)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonAnimationsStateList (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST")
  (make-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))

(in-package "ROS")
;;//! \htmlinclude CommonAnimationsStateList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ANIM_HEADLIGHTS_FLASH*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*ANIM_HEADLIGHTS_FLASH* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*ANIM_HEADLIGHTS_FLASH* 0)
(intern "*ANIM_HEADLIGHTS_BLINK*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*ANIM_HEADLIGHTS_BLINK* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*ANIM_HEADLIGHTS_BLINK* 1)
(intern "*ANIM_HEADLIGHTS_OSCILLATION*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*ANIM_HEADLIGHTS_OSCILLATION* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*ANIM_HEADLIGHTS_OSCILLATION* 2)
(intern "*ANIM_SPIN*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*ANIM_SPIN* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*ANIM_SPIN* 3)
(intern "*ANIM_TAP*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*ANIM_TAP* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*ANIM_TAP* 4)
(intern "*ANIM_SLOW_SHAKE*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*ANIM_SLOW_SHAKE* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*ANIM_SLOW_SHAKE* 5)
(intern "*ANIM_METRONOME*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*ANIM_METRONOME* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*ANIM_METRONOME* 6)
(intern "*ANIM_ONDULATION*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*ANIM_ONDULATION* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*ANIM_ONDULATION* 7)
(intern "*ANIM_SPIN_JUMP*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*ANIM_SPIN_JUMP* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*ANIM_SPIN_JUMP* 8)
(intern "*ANIM_SPIN_TO_POSTURE*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*ANIM_SPIN_TO_POSTURE* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*ANIM_SPIN_TO_POSTURE* 9)
(intern "*ANIM_SPIRAL*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*ANIM_SPIRAL* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*ANIM_SPIRAL* 10)
(intern "*ANIM_SLALOM*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*ANIM_SLALOM* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*ANIM_SLALOM* 11)
(intern "*ANIM_BOOST*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*ANIM_BOOST* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*ANIM_BOOST* 12)
(intern "*ANIM_LOOPING*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*ANIM_LOOPING* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*ANIM_LOOPING* 13)
(intern "*ANIM_BARREL_ROLL_180_RIGHT*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*ANIM_BARREL_ROLL_180_RIGHT* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*ANIM_BARREL_ROLL_180_RIGHT* 14)
(intern "*ANIM_BARREL_ROLL_180_LEFT*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*ANIM_BARREL_ROLL_180_LEFT* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*ANIM_BARREL_ROLL_180_LEFT* 15)
(intern "*ANIM_BACKSWAP*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*ANIM_BACKSWAP* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*ANIM_BACKSWAP* 16)
(intern "*STATE_STOPPED*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*STATE_STOPPED* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*STATE_STOPPED* 0)
(intern "*STATE_STARTED*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*STATE_STARTED* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*STATE_STARTED* 1)
(intern "*STATE_NOTAVAILABLE*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*STATE_NOTAVAILABLE* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*STATE_NOTAVAILABLE* 2)
(intern "*ERROR_OK*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*ERROR_OK* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*ERROR_OK* 0)
(intern "*ERROR_UNKNOWN*" (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(shadow '*ERROR_UNKNOWN* (find-package "BEBOP_MSGS::COMMONANIMATIONSSTATELIST"))
(defconstant bebop_msgs::CommonAnimationsStateList::*ERROR_UNKNOWN* 1)
(defclass bebop_msgs::CommonAnimationsStateList
  :super ros::object
  :slots (_header _anim _state _error ))

(defmethod bebop_msgs::CommonAnimationsStateList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:anim __anim) 0)
    ((:state __state) 0)
    ((:error __error) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _anim (round __anim))
   (setq _state (round __state))
   (setq _error (round __error))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:anim
   (&optional __anim)
   (if __anim (setq _anim __anim)) _anim)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _anim
    1
    ;; uint8 _state
    1
    ;; uint8 _error
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _anim
       (write-byte _anim s)
     ;; uint8 _state
       (write-byte _state s)
     ;; uint8 _error
       (write-byte _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _anim
     (setq _anim (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _error
     (setq _error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonAnimationsStateList :md5sum-) "c89b289a8f935a33f0451effae3f9508")
(setf (get bebop_msgs::CommonAnimationsStateList :datatype-) "bebop_msgs/CommonAnimationsStateList")
(setf (get bebop_msgs::CommonAnimationsStateList :definition-)
      "# CommonAnimationsStateList
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Paramaterless animations state list.

Header header

# Animation type.
uint8 anim_HEADLIGHTS_FLASH=0  # Flash headlights.
uint8 anim_HEADLIGHTS_BLINK=1  # Blink headlights.
uint8 anim_HEADLIGHTS_OSCILLATION=2  # Oscillating headlights.
uint8 anim_SPIN=3  # Spin animation.
uint8 anim_TAP=4  # Tap animation.
uint8 anim_SLOW_SHAKE=5  # Slow shake animation.
uint8 anim_METRONOME=6  # Metronome animation.
uint8 anim_ONDULATION=7  # Standing dance animation.
uint8 anim_SPIN_JUMP=8  # Spin jump animation.
uint8 anim_SPIN_TO_POSTURE=9  # Spin that end in standing posture, or in jumper if it was standing animation.
uint8 anim_SPIRAL=10  # Spiral animation.
uint8 anim_SLALOM=11  # Slalom animation.
uint8 anim_BOOST=12  # Boost animation.
uint8 anim_LOOPING=13  # Make a looping. (Only for WingX)
uint8 anim_BARREL_ROLL_180_RIGHT=14  # Make a barrel roll of 180 degree turning on right. (Only for WingX)
uint8 anim_BARREL_ROLL_180_LEFT=15  # Make a barrel roll of 180 degree turning on left. (Only for WingX)
uint8 anim_BACKSWAP=16  # Put the drone upside down. (Only for WingX)
uint8 anim
# State of the animation
uint8 state_stopped=0  # animation is stopped
uint8 state_started=1  # animation is started
uint8 state_notAvailable=2  # The animation is not available
uint8 state
# Error to explain the state
uint8 error_ok=0  # No Error
uint8 error_unknown=1  # Unknown generic error
uint8 error

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



(provide :bebop_msgs/CommonAnimationsStateList "c89b289a8f935a33f0451effae3f9508")


