;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonHeadlightsStateintensityChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonHeadlightsStateintensityChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONHEADLIGHTSSTATEINTENSITYCHANGED")
  (make-package "BEBOP_MSGS::COMMONHEADLIGHTSSTATEINTENSITYCHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonHeadlightsStateintensityChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonHeadlightsStateintensityChanged
  :super ros::object
  :slots (_header _left _right ))

(defmethod bebop_msgs::CommonHeadlightsStateintensityChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left __left) 0)
    ((:right __right) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _left (round __left))
   (setq _right (round __right))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _left
    1
    ;; uint8 _right
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _left
       (write-byte _left s)
     ;; uint8 _right
       (write-byte _right s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _left
     (setq _left (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _right
     (setq _right (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonHeadlightsStateintensityChanged :md5sum-) "467d71c05ef2257e4a6881abae5c114a")
(setf (get bebop_msgs::CommonHeadlightsStateintensityChanged :datatype-) "bebop_msgs/CommonHeadlightsStateintensityChanged")
(setf (get bebop_msgs::CommonHeadlightsStateintensityChanged :definition-)
      "# CommonHeadlightsStateintensityChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Lighting LEDs intensity.

Header header

# The intensity value for the left LED (0 through 255).
uint8 left
# The intensity value for the right LED (0 through 255).
uint8 right

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



(provide :bebop_msgs/CommonHeadlightsStateintensityChanged "467d71c05ef2257e4a6881abae5c114a")


