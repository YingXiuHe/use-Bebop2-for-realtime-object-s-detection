;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3AccessoryStateConnectedAccessories)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3AccessoryStateConnectedAccessories (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3ACCESSORYSTATECONNECTEDACCESSORIES")
  (make-package "BEBOP_MSGS::ARDRONE3ACCESSORYSTATECONNECTEDACCESSORIES"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3AccessoryStateConnectedAccessories.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ACCESSORY_TYPE_SEQUOIA*" (find-package "BEBOP_MSGS::ARDRONE3ACCESSORYSTATECONNECTEDACCESSORIES"))
(shadow '*ACCESSORY_TYPE_SEQUOIA* (find-package "BEBOP_MSGS::ARDRONE3ACCESSORYSTATECONNECTEDACCESSORIES"))
(defconstant bebop_msgs::Ardrone3AccessoryStateConnectedAccessories::*ACCESSORY_TYPE_SEQUOIA* 0)
(intern "*ACCESSORY_TYPE_UNKNOWNACCESSORY_1*" (find-package "BEBOP_MSGS::ARDRONE3ACCESSORYSTATECONNECTEDACCESSORIES"))
(shadow '*ACCESSORY_TYPE_UNKNOWNACCESSORY_1* (find-package "BEBOP_MSGS::ARDRONE3ACCESSORYSTATECONNECTEDACCESSORIES"))
(defconstant bebop_msgs::Ardrone3AccessoryStateConnectedAccessories::*ACCESSORY_TYPE_UNKNOWNACCESSORY_1* 1)
(defclass bebop_msgs::Ardrone3AccessoryStateConnectedAccessories
  :super ros::object
  :slots (_header _id _accessory_type _uid _swVersion ))

(defmethod bebop_msgs::Ardrone3AccessoryStateConnectedAccessories
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:accessory_type __accessory_type) 0)
    ((:uid __uid) "")
    ((:swVersion __swVersion) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _accessory_type (round __accessory_type))
   (setq _uid (string __uid))
   (setq _swVersion (string __swVersion))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:accessory_type
   (&optional __accessory_type)
   (if __accessory_type (setq _accessory_type __accessory_type)) _accessory_type)
  (:uid
   (&optional __uid)
   (if __uid (setq _uid __uid)) _uid)
  (:swVersion
   (&optional __swVersion)
   (if __swVersion (setq _swVersion __swVersion)) _swVersion)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _id
    1
    ;; uint8 _accessory_type
    1
    ;; string _uid
    4 (length _uid)
    ;; string _swVersion
    4 (length _swVersion)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8 _accessory_type
       (write-byte _accessory_type s)
     ;; string _uid
       (write-long (length _uid) s) (princ _uid s)
     ;; string _swVersion
       (write-long (length _swVersion) s) (princ _swVersion s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _accessory_type
     (setq _accessory_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _uid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _swVersion
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _swVersion (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get bebop_msgs::Ardrone3AccessoryStateConnectedAccessories :md5sum-) "4c105add6586231e3d438d1252e04c7e")
(setf (get bebop_msgs::Ardrone3AccessoryStateConnectedAccessories :datatype-) "bebop_msgs/Ardrone3AccessoryStateConnectedAccessories")
(setf (get bebop_msgs::Ardrone3AccessoryStateConnectedAccessories :definition-)
      "# Ardrone3AccessoryStateConnectedAccessories
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: List of all connected accessories. This event presents the list of all connected accessories. To actually use the component, use the component dedicated feature.

Header header

# Id of the accessory for the session.
uint8 id
# Accessory type
uint8 accessory_type_sequoia=0  # Parrot Sequoia (multispectral camera for agriculture)
uint8 accessory_type_unknownaccessory_1=1  # UNKNOWNACCESSORY_1 camera (thermal+rgb camera)
uint8 accessory_type
# Unique Id of the accessory. This id is unique by accessory_type.
string uid
# Software Version of the accessory.
string swVersion

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



(provide :bebop_msgs/Ardrone3AccessoryStateConnectedAccessories "4c105add6586231e3d438d1252e04c7e")


