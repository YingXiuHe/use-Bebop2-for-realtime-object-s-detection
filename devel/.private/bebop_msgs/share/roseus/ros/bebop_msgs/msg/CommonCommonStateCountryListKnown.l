;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonCommonStateCountryListKnown)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonCommonStateCountryListKnown (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCOMMONSTATECOUNTRYLISTKNOWN")
  (make-package "BEBOP_MSGS::COMMONCOMMONSTATECOUNTRYLISTKNOWN"))

(in-package "ROS")
;;//! \htmlinclude CommonCommonStateCountryListKnown.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonCommonStateCountryListKnown
  :super ros::object
  :slots (_header _listFlags _countryCodes ))

(defmethod bebop_msgs::CommonCommonStateCountryListKnown
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:listFlags __listFlags) 0)
    ((:countryCodes __countryCodes) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _listFlags (round __listFlags))
   (setq _countryCodes (string __countryCodes))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:listFlags
   (&optional __listFlags)
   (if __listFlags (setq _listFlags __listFlags)) _listFlags)
  (:countryCodes
   (&optional __countryCodes)
   (if __countryCodes (setq _countryCodes __countryCodes)) _countryCodes)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _listFlags
    1
    ;; string _countryCodes
    4 (length _countryCodes)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _listFlags
       (write-byte _listFlags s)
     ;; string _countryCodes
       (write-long (length _countryCodes) s) (princ _countryCodes s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _listFlags
     (setq _listFlags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _countryCodes
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _countryCodes (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get bebop_msgs::CommonCommonStateCountryListKnown :md5sum-) "86539e5f9157f2f0855dd0d95cb534f2")
(setf (get bebop_msgs::CommonCommonStateCountryListKnown :datatype-) "bebop_msgs/CommonCommonStateCountryListKnown")
(setf (get bebop_msgs::CommonCommonStateCountryListKnown :definition-)
      "# CommonCommonStateCountryListKnown
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: List of countries known by the drone.

Header header

# List entry attribute Bitfield. 0x01: First: indicate its the first element of the list. 0x02: Last: indicate its the last element of the list. 0x04: Empty: indicate the list is empty (implies First/Last). All other arguments should be ignored.
uint8 listFlags
# Following of country code with ISO 3166 format, separated by ;. Be careful of the command size allowed by the network used. If necessary, split the list in several commands.
string countryCodes

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



(provide :bebop_msgs/CommonCommonStateCountryListKnown "86539e5f9157f2f0855dd0d95cb534f2")


