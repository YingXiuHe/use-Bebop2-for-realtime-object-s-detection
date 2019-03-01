;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonRunStateRunIdChanged)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonRunStateRunIdChanged (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONRUNSTATERUNIDCHANGED")
  (make-package "BEBOP_MSGS::COMMONRUNSTATERUNIDCHANGED"))

(in-package "ROS")
;;//! \htmlinclude CommonRunStateRunIdChanged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonRunStateRunIdChanged
  :super ros::object
  :slots (_header _runId ))

(defmethod bebop_msgs::CommonRunStateRunIdChanged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:runId __runId) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _runId (string __runId))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:runId
   (&optional __runId)
   (if __runId (setq _runId __runId)) _runId)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _runId
    4 (length _runId)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _runId
       (write-long (length _runId) s) (princ _runId s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _runId
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _runId (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get bebop_msgs::CommonRunStateRunIdChanged :md5sum-) "b7ac1570fb76100e35b4cf4959b304cb")
(setf (get bebop_msgs::CommonRunStateRunIdChanged :datatype-) "bebop_msgs/CommonRunStateRunIdChanged")
(setf (get bebop_msgs::CommonRunStateRunIdChanged :definition-)
      "# CommonRunStateRunIdChanged
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Current run id.\\n A run id is uniquely identifying a run or a flight.\\n For each run is generated on the drone a file which can be used by Academy to sum up the run.\\n Also, each medias taken during a run has a filename containing the run id.

Header header

# Id of the run
string runId

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



(provide :bebop_msgs/CommonRunStateRunIdChanged "b7ac1570fb76100e35b4cf4959b304cb")


