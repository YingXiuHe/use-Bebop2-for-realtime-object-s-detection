;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonChargerStateCurrentChargeStateChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonChargerStateCurrentChargeStateChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED")
  (make-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonChargerStateCurrentChargeStateChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STATUS_DISCHARGING*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))
(shadow '*STATUS_DISCHARGING* (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))
(defconstant bebop_msgs::CommonChargerStateCurrentChargeStateChanged::*STATUS_DISCHARGING* 0)
(intern "*STATUS_CHARGING_SLOW*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))
(shadow '*STATUS_CHARGING_SLOW* (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))
(defconstant bebop_msgs::CommonChargerStateCurrentChargeStateChanged::*STATUS_CHARGING_SLOW* 1)
(intern "*STATUS_CHARGING_MODERATE*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))
(shadow '*STATUS_CHARGING_MODERATE* (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))
(defconstant bebop_msgs::CommonChargerStateCurrentChargeStateChanged::*STATUS_CHARGING_MODERATE* 2)
(intern "*STATUS_CHARGING_FAST*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))
(shadow '*STATUS_CHARGING_FAST* (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))
(defconstant bebop_msgs::CommonChargerStateCurrentChargeStateChanged::*STATUS_CHARGING_FAST* 3)
(intern "*STATUS_BATTERY_FULL*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))
(shadow '*STATUS_BATTERY_FULL* (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))
(defconstant bebop_msgs::CommonChargerStateCurrentChargeStateChanged::*STATUS_BATTERY_FULL* 4)
(intern "*PHASE_UNKNOWN*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))
(shadow '*PHASE_UNKNOWN* (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))
(defconstant bebop_msgs::CommonChargerStateCurrentChargeStateChanged::*PHASE_UNKNOWN* 0)
(intern "*PHASE_CONSTANT_CURRENT_1*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))
(shadow '*PHASE_CONSTANT_CURRENT_1* (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))
(defconstant bebop_msgs::CommonChargerStateCurrentChargeStateChanged::*PHASE_CONSTANT_CURRENT_1* 1)
(intern "*PHASE_CONSTANT_CURRENT_2*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))
(shadow '*PHASE_CONSTANT_CURRENT_2* (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))
(defconstant bebop_msgs::CommonChargerStateCurrentChargeStateChanged::*PHASE_CONSTANT_CURRENT_2* 2)
(intern "*PHASE_CONSTANT_VOLTAGE*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))
(shadow '*PHASE_CONSTANT_VOLTAGE* (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))
(defconstant bebop_msgs::CommonChargerStateCurrentChargeStateChanged::*PHASE_CONSTANT_VOLTAGE* 3)
(intern "*PHASE_CHARGED*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))
(shadow '*PHASE_CHARGED* (find-package "BEBOP_MSGS::COMMONCHARGERSTATECURRENTCHARGESTATECHANGED"))
(defconstant bebop_msgs::CommonChargerStateCurrentChargeStateChanged::*PHASE_CHARGED* 4)
(defclass bebop_msgs::CommonChargerStateCurrentChargeStateChanged
  :super ros::object
  :slots (_header _status _phase ))

(defmethod bebop_msgs::CommonChargerStateCurrentChargeStateChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) 0)
    ((:phase __phase) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _status (round __status))
   (setq _phase (round __phase))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:phase
   (&optional __phase)
   (if __phase (setq _phase __phase)) _phase)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _status
    1
    ;; uint8 _phase
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _status
       (write-byte _status s)
     ;; uint8 _phase
       (write-byte _phase s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _phase
     (setq _phase (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonChargerStateCurrentChargeStateChanged :md5sum-) "18629b25e8e73562aa089390b0f02505")
(setf (get bebop_msgs::CommonChargerStateCurrentChargeStateChanged :datatype-) "bebop_msgs/CommonChargerStateCurrentChargeStateChanged")
(setf (get bebop_msgs::CommonChargerStateCurrentChargeStateChanged :definition-)
      "# CommonChargerStateCurrentChargeStateChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Current charge state.

Header header

# Charger status.
uint8 status_DISCHARGING=0  # The battery is discharging.
uint8 status_CHARGING_SLOW=1  # The battery is charging at a slow rate about 512 mA.
uint8 status_CHARGING_MODERATE=2  # The battery is charging at a moderate rate (&gt; 512 mA) but slower than the fastest rate.
uint8 status_CHARGING_FAST=3  # The battery is charging at a the fastest rate.
uint8 status_BATTERY_FULL=4  # The charger is plugged and the battery is fully charged.
uint8 status
# The current charging phase.
uint8 phase_UNKNOWN=0  # The charge phase is unknown or irrelevant.
uint8 phase_CONSTANT_CURRENT_1=1  # First phase of the charging process. The battery is charging with constant current.
uint8 phase_CONSTANT_CURRENT_2=2  # Second phase of the charging process. The battery is charging with constant current, with a higher voltage than the first phase.
uint8 phase_CONSTANT_VOLTAGE=3  # Last part of the charging process. The battery is charging with a constant voltage.
uint8 phase_CHARGED=4  # The battery is fully charged.
uint8 phase

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



(provide :bebop_msgs/CommonChargerStateCurrentChargeStateChanged "18629b25e8e73562aa089390b0f02505")


