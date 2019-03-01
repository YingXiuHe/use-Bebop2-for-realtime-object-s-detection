;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonAccessoryStateAccessoryConfigChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonAccessoryStateAccessoryConfigChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED")
  (make-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonAccessoryStateAccessoryConfigChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*NEWACCESSORY_UNCONFIGURED*" (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))
(shadow '*NEWACCESSORY_UNCONFIGURED* (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))
(defconstant bebop_msgs::CommonAccessoryStateAccessoryConfigChanged::*NEWACCESSORY_UNCONFIGURED* 0)
(intern "*NEWACCESSORY_NO_ACCESSORY*" (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))
(shadow '*NEWACCESSORY_NO_ACCESSORY* (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))
(defconstant bebop_msgs::CommonAccessoryStateAccessoryConfigChanged::*NEWACCESSORY_NO_ACCESSORY* 1)
(intern "*NEWACCESSORY_STD_WHEELS*" (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))
(shadow '*NEWACCESSORY_STD_WHEELS* (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))
(defconstant bebop_msgs::CommonAccessoryStateAccessoryConfigChanged::*NEWACCESSORY_STD_WHEELS* 2)
(intern "*NEWACCESSORY_TRUCK_WHEELS*" (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))
(shadow '*NEWACCESSORY_TRUCK_WHEELS* (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))
(defconstant bebop_msgs::CommonAccessoryStateAccessoryConfigChanged::*NEWACCESSORY_TRUCK_WHEELS* 3)
(intern "*NEWACCESSORY_HULL*" (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))
(shadow '*NEWACCESSORY_HULL* (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))
(defconstant bebop_msgs::CommonAccessoryStateAccessoryConfigChanged::*NEWACCESSORY_HULL* 4)
(intern "*NEWACCESSORY_HYDROFOIL*" (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))
(shadow '*NEWACCESSORY_HYDROFOIL* (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))
(defconstant bebop_msgs::CommonAccessoryStateAccessoryConfigChanged::*NEWACCESSORY_HYDROFOIL* 5)
(intern "*NEWACCESSORY_IN_PROGRESS*" (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))
(shadow '*NEWACCESSORY_IN_PROGRESS* (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))
(defconstant bebop_msgs::CommonAccessoryStateAccessoryConfigChanged::*NEWACCESSORY_IN_PROGRESS* 6)
(intern "*ERROR_OK*" (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))
(shadow '*ERROR_OK* (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))
(defconstant bebop_msgs::CommonAccessoryStateAccessoryConfigChanged::*ERROR_OK* 0)
(intern "*ERROR_UNKNOWN*" (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))
(shadow '*ERROR_UNKNOWN* (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))
(defconstant bebop_msgs::CommonAccessoryStateAccessoryConfigChanged::*ERROR_UNKNOWN* 1)
(intern "*ERROR_FLYING*" (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))
(shadow '*ERROR_FLYING* (find-package "BEBOP_MSGS::COMMONACCESSORYSTATEACCESSORYCONFIGCHANGED"))
(defconstant bebop_msgs::CommonAccessoryStateAccessoryConfigChanged::*ERROR_FLYING* 2)
(defclass bebop_msgs::CommonAccessoryStateAccessoryConfigChanged
  :super ros::object
  :slots (_header _newAccessory _error ))

(defmethod bebop_msgs::CommonAccessoryStateAccessoryConfigChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:newAccessory __newAccessory) 0)
    ((:error __error) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _newAccessory (round __newAccessory))
   (setq _error (round __error))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:newAccessory
   (&optional __newAccessory)
   (if __newAccessory (setq _newAccessory __newAccessory)) _newAccessory)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _newAccessory
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
     ;; uint8 _newAccessory
       (write-byte _newAccessory s)
     ;; uint8 _error
       (write-byte _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _newAccessory
     (setq _newAccessory (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _error
     (setq _error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonAccessoryStateAccessoryConfigChanged :md5sum-) "e157f9e28ff119a959d19b46621057dd")
(setf (get bebop_msgs::CommonAccessoryStateAccessoryConfigChanged :datatype-) "bebop_msgs/CommonAccessoryStateAccessoryConfigChanged")
(setf (get bebop_msgs::CommonAccessoryStateAccessoryConfigChanged :definition-)
      "# CommonAccessoryStateAccessoryConfigChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Accessory config.

Header header

# Accessory configuration reported by firmware.
uint8 newAccessory_UNCONFIGURED=0  # No accessory configuration set. Controller needs to set one.
uint8 newAccessory_NO_ACCESSORY=1  # No accessory.
uint8 newAccessory_STD_WHEELS=2  # Standard wheels
uint8 newAccessory_TRUCK_WHEELS=3  # Truck wheels
uint8 newAccessory_HULL=4  # Hull
uint8 newAccessory_HYDROFOIL=5  # Hydrofoil
uint8 newAccessory_IN_PROGRESS=6  # Configuration in progress.
uint8 newAccessory
# Error code.
uint8 error_OK=0  # No error. Accessory config change successful.
uint8 error_UNKNOWN=1  # Cannot change accessory configuration for some reason.
uint8 error_FLYING=2  # Cannot change accessory configuration while flying.
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



(provide :bebop_msgs/CommonAccessoryStateAccessoryConfigChanged "e157f9e28ff119a959d19b46621057dd")


