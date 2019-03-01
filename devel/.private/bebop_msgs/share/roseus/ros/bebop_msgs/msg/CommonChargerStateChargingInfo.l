;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonChargerStateChargingInfo)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonChargerStateChargingInfo (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO")
  (make-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))

(in-package "ROS")
;;//! \htmlinclude CommonChargerStateChargingInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*PHASE_UNKNOWN*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))
(shadow '*PHASE_UNKNOWN* (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))
(defconstant bebop_msgs::CommonChargerStateChargingInfo::*PHASE_UNKNOWN* 0)
(intern "*PHASE_CONSTANT_CURRENT_1*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))
(shadow '*PHASE_CONSTANT_CURRENT_1* (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))
(defconstant bebop_msgs::CommonChargerStateChargingInfo::*PHASE_CONSTANT_CURRENT_1* 1)
(intern "*PHASE_CONSTANT_CURRENT_2*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))
(shadow '*PHASE_CONSTANT_CURRENT_2* (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))
(defconstant bebop_msgs::CommonChargerStateChargingInfo::*PHASE_CONSTANT_CURRENT_2* 2)
(intern "*PHASE_CONSTANT_VOLTAGE*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))
(shadow '*PHASE_CONSTANT_VOLTAGE* (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))
(defconstant bebop_msgs::CommonChargerStateChargingInfo::*PHASE_CONSTANT_VOLTAGE* 3)
(intern "*PHASE_CHARGED*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))
(shadow '*PHASE_CHARGED* (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))
(defconstant bebop_msgs::CommonChargerStateChargingInfo::*PHASE_CHARGED* 4)
(intern "*PHASE_DISCHARGING*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))
(shadow '*PHASE_DISCHARGING* (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))
(defconstant bebop_msgs::CommonChargerStateChargingInfo::*PHASE_DISCHARGING* 5)
(intern "*RATE_UNKNOWN*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))
(shadow '*RATE_UNKNOWN* (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))
(defconstant bebop_msgs::CommonChargerStateChargingInfo::*RATE_UNKNOWN* 0)
(intern "*RATE_SLOW*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))
(shadow '*RATE_SLOW* (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))
(defconstant bebop_msgs::CommonChargerStateChargingInfo::*RATE_SLOW* 1)
(intern "*RATE_MODERATE*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))
(shadow '*RATE_MODERATE* (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))
(defconstant bebop_msgs::CommonChargerStateChargingInfo::*RATE_MODERATE* 2)
(intern "*RATE_FAST*" (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))
(shadow '*RATE_FAST* (find-package "BEBOP_MSGS::COMMONCHARGERSTATECHARGINGINFO"))
(defconstant bebop_msgs::CommonChargerStateChargingInfo::*RATE_FAST* 3)
(defclass bebop_msgs::CommonChargerStateChargingInfo
  :super ros::object
  :slots (_header _phase _rate _intensity _fullChargingTime ))

(defmethod bebop_msgs::CommonChargerStateChargingInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:phase __phase) 0)
    ((:rate __rate) 0)
    ((:intensity __intensity) 0)
    ((:fullChargingTime __fullChargingTime) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _phase (round __phase))
   (setq _rate (round __rate))
   (setq _intensity (round __intensity))
   (setq _fullChargingTime (round __fullChargingTime))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:phase
   (&optional __phase)
   (if __phase (setq _phase __phase)) _phase)
  (:rate
   (&optional __rate)
   (if __rate (setq _rate __rate)) _rate)
  (:intensity
   (&optional __intensity)
   (if __intensity (setq _intensity __intensity)) _intensity)
  (:fullChargingTime
   (&optional __fullChargingTime)
   (if __fullChargingTime (setq _fullChargingTime __fullChargingTime)) _fullChargingTime)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _phase
    1
    ;; uint8 _rate
    1
    ;; uint8 _intensity
    1
    ;; uint8 _fullChargingTime
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _phase
       (write-byte _phase s)
     ;; uint8 _rate
       (write-byte _rate s)
     ;; uint8 _intensity
       (write-byte _intensity s)
     ;; uint8 _fullChargingTime
       (write-byte _fullChargingTime s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _phase
     (setq _phase (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rate
     (setq _rate (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _intensity
     (setq _intensity (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _fullChargingTime
     (setq _fullChargingTime (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonChargerStateChargingInfo :md5sum-) "6cde652314f80f4da435ec6429960e6d")
(setf (get bebop_msgs::CommonChargerStateChargingInfo :datatype-) "bebop_msgs/CommonChargerStateChargingInfo")
(setf (get bebop_msgs::CommonChargerStateChargingInfo :definition-)
      "# CommonChargerStateChargingInfo
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Charging information.

Header header

# The current charging phase.
uint8 phase_UNKNOWN=0  # The charge phase is unknown or irrelevant.
uint8 phase_CONSTANT_CURRENT_1=1  # First phase of the charging process. The battery is charging with constant current.
uint8 phase_CONSTANT_CURRENT_2=2  # Second phase of the charging process. The battery is charging with constant current, with a higher voltage than the first phase.
uint8 phase_CONSTANT_VOLTAGE=3  # Last part of the charging process. The battery is charging with a constant voltage.
uint8 phase_CHARGED=4  # The battery is fully charged.
uint8 phase_DISCHARGING=5  # The battery is discharging; Other arguments refers to the last charge.
uint8 phase
# The charge rate. If phase is DISCHARGING, refers to the last charge.
uint8 rate_UNKNOWN=0  # The charge rate is not known.
uint8 rate_SLOW=1  # Slow charge rate.
uint8 rate_MODERATE=2  # Moderate charge rate.
uint8 rate_FAST=3  # Fast charge rate.
uint8 rate
# The charging intensity, in dA. (12dA = 1,2A) ; If phase is DISCHARGING, refers to the last charge. Equals to 0 if not known.
uint8 intensity
# The full charging time estimated, in minute. If phase is DISCHARGING, refers to the last charge. Equals to 0 if not known.
uint8 fullChargingTime

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



(provide :bebop_msgs/CommonChargerStateChargingInfo "6cde652314f80f4da435ec6429960e6d")


