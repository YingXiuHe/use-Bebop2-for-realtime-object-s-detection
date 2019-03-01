;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonAccessoryStateSupportedAccessoriesListChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonAccessoryStateSupportedAccessoriesListChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONACCESSORYSTATESUPPORTEDACCESSORIESLISTCHANGED")
  (make-package "BEBOP_MSGS::COMMONACCESSORYSTATESUPPORTEDACCESSORIESLISTCHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonAccessoryStateSupportedAccessoriesListChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ACCESSORY_NO_ACCESSORY*" (find-package "BEBOP_MSGS::COMMONACCESSORYSTATESUPPORTEDACCESSORIESLISTCHANGED"))
(shadow '*ACCESSORY_NO_ACCESSORY* (find-package "BEBOP_MSGS::COMMONACCESSORYSTATESUPPORTEDACCESSORIESLISTCHANGED"))
(defconstant bebop_msgs::CommonAccessoryStateSupportedAccessoriesListChanged::*ACCESSORY_NO_ACCESSORY* 0)
(intern "*ACCESSORY_STD_WHEELS*" (find-package "BEBOP_MSGS::COMMONACCESSORYSTATESUPPORTEDACCESSORIESLISTCHANGED"))
(shadow '*ACCESSORY_STD_WHEELS* (find-package "BEBOP_MSGS::COMMONACCESSORYSTATESUPPORTEDACCESSORIESLISTCHANGED"))
(defconstant bebop_msgs::CommonAccessoryStateSupportedAccessoriesListChanged::*ACCESSORY_STD_WHEELS* 1)
(intern "*ACCESSORY_TRUCK_WHEELS*" (find-package "BEBOP_MSGS::COMMONACCESSORYSTATESUPPORTEDACCESSORIESLISTCHANGED"))
(shadow '*ACCESSORY_TRUCK_WHEELS* (find-package "BEBOP_MSGS::COMMONACCESSORYSTATESUPPORTEDACCESSORIESLISTCHANGED"))
(defconstant bebop_msgs::CommonAccessoryStateSupportedAccessoriesListChanged::*ACCESSORY_TRUCK_WHEELS* 2)
(intern "*ACCESSORY_HULL*" (find-package "BEBOP_MSGS::COMMONACCESSORYSTATESUPPORTEDACCESSORIESLISTCHANGED"))
(shadow '*ACCESSORY_HULL* (find-package "BEBOP_MSGS::COMMONACCESSORYSTATESUPPORTEDACCESSORIESLISTCHANGED"))
(defconstant bebop_msgs::CommonAccessoryStateSupportedAccessoriesListChanged::*ACCESSORY_HULL* 3)
(intern "*ACCESSORY_HYDROFOIL*" (find-package "BEBOP_MSGS::COMMONACCESSORYSTATESUPPORTEDACCESSORIESLISTCHANGED"))
(shadow '*ACCESSORY_HYDROFOIL* (find-package "BEBOP_MSGS::COMMONACCESSORYSTATESUPPORTEDACCESSORIESLISTCHANGED"))
(defconstant bebop_msgs::CommonAccessoryStateSupportedAccessoriesListChanged::*ACCESSORY_HYDROFOIL* 4)
(defclass bebop_msgs::CommonAccessoryStateSupportedAccessoriesListChanged
  :super ros::object
  :slots (_header _accessory ))

(defmethod bebop_msgs::CommonAccessoryStateSupportedAccessoriesListChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:accessory __accessory) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _accessory (round __accessory))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:accessory
   (&optional __accessory)
   (if __accessory (setq _accessory __accessory)) _accessory)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _accessory
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _accessory
       (write-byte _accessory s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _accessory
     (setq _accessory (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonAccessoryStateSupportedAccessoriesListChanged :md5sum-) "5c5ca2fc44e5f348a92c49ef9e03b7d2")
(setf (get bebop_msgs::CommonAccessoryStateSupportedAccessoriesListChanged :datatype-) "bebop_msgs/CommonAccessoryStateSupportedAccessoriesListChanged")
(setf (get bebop_msgs::CommonAccessoryStateSupportedAccessoriesListChanged :definition-)
      "# CommonAccessoryStateSupportedAccessoriesListChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Supported accessories list.

Header header

# Accessory configurations supported by the product.
uint8 accessory_NO_ACCESSORY=0  # No accessory.
uint8 accessory_STD_WHEELS=1  # Standard wheels
uint8 accessory_TRUCK_WHEELS=2  # Truck wheels
uint8 accessory_HULL=3  # Hull
uint8 accessory_HYDROFOIL=4  # Hydrofoil
uint8 accessory

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



(provide :bebop_msgs/CommonAccessoryStateSupportedAccessoriesListChanged "5c5ca2fc44e5f348a92c49ef9e03b7d2")


