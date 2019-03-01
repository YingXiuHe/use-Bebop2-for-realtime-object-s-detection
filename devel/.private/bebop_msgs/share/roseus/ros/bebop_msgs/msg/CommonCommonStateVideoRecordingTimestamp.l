;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonCommonStateVideoRecordingTimestamp)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonCommonStateVideoRecordingTimestamp (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCOMMONSTATEVIDEORECORDINGTIMESTAMP")
  (make-package "BEBOP_MSGS::COMMONCOMMONSTATEVIDEORECORDINGTIMESTAMP"))

(in-package "ROS")
;;//! \htmlinclude CommonCommonStateVideoRecordingTimestamp.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::CommonCommonStateVideoRecordingTimestamp
  :super ros::object
  :slots (_header _startTimestamp _stopTimestamp ))

(defmethod bebop_msgs::CommonCommonStateVideoRecordingTimestamp
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:startTimestamp __startTimestamp) 0)
    ((:stopTimestamp __stopTimestamp) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _startTimestamp (round __startTimestamp))
   (setq _stopTimestamp (round __stopTimestamp))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:startTimestamp
   (&optional __startTimestamp)
   (if __startTimestamp (setq _startTimestamp __startTimestamp)) _startTimestamp)
  (:stopTimestamp
   (&optional __stopTimestamp)
   (if __stopTimestamp (setq _stopTimestamp __stopTimestamp)) _stopTimestamp)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _startTimestamp
    8
    ;; uint64 _stopTimestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint64 _startTimestamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _startTimestamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _startTimestamp) (= (length (_startTimestamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_startTimestamp . bv) 0) 0) s)
              (write-long (ash (elt (_startTimestamp . bv) 1) -1) s))
             ((and (class _startTimestamp) (= (length (_startTimestamp . bv)) 1)) ;; big1
              (write-long (elt (_startTimestamp . bv) 0) s)
              (write-long (if (>= _startTimestamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _startTimestamp s)(write-long (if (>= _startTimestamp 0) 0 #xffffffff) s)))
     ;; uint64 _stopTimestamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _stopTimestamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _stopTimestamp) (= (length (_stopTimestamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_stopTimestamp . bv) 0) 0) s)
              (write-long (ash (elt (_stopTimestamp . bv) 1) -1) s))
             ((and (class _stopTimestamp) (= (length (_stopTimestamp . bv)) 1)) ;; big1
              (write-long (elt (_stopTimestamp . bv) 0) s)
              (write-long (if (>= _stopTimestamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _stopTimestamp s)(write-long (if (>= _stopTimestamp 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint64 _startTimestamp
     
#+(or :alpha :irix6 :x86_64)
      (setf _startTimestamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _startTimestamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _stopTimestamp
     
#+(or :alpha :irix6 :x86_64)
      (setf _stopTimestamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _stopTimestamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get bebop_msgs::CommonCommonStateVideoRecordingTimestamp :md5sum-) "2af0a016042e73c407f0fbf66360342c")
(setf (get bebop_msgs::CommonCommonStateVideoRecordingTimestamp :datatype-) "bebop_msgs/CommonCommonStateVideoRecordingTimestamp")
(setf (get bebop_msgs::CommonCommonStateVideoRecordingTimestamp :definition-)
      "# CommonCommonStateVideoRecordingTimestamp
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Current or last video recording timestamp.\\n Timestamp in milliseconds since 00:00:00 UTC on 1 January 1970.\\n **Please note that values dont persist after drone reboot**

Header header

# Timestamp in milliseconds since 00:00:00 UTC on 1 January 1970.
uint64 startTimestamp
# Timestamp in milliseconds since 00:00:00 UTC on 1 January 1970. 0 mean that video is still recording.
uint64 stopTimestamp

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



(provide :bebop_msgs/CommonCommonStateVideoRecordingTimestamp "2af0a016042e73c407f0fbf66360342c")


