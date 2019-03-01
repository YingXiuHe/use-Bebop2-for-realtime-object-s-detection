;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::Ardrone3PROStateFeatures)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'Ardrone3PROStateFeatures (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::ARDRONE3PROSTATEFEATURES")
  (make-package "BEBOP_MSGS::ARDRONE3PROSTATEFEATURES"))

(in-package "ROS")
;;//! \htmlinclude Ardrone3PROStateFeatures.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bebop_msgs::Ardrone3PROStateFeatures
  :super ros::object
  :slots (_header _features ))

(defmethod bebop_msgs::Ardrone3PROStateFeatures
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:features __features) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _features (round __features))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:features
   (&optional __features)
   (if __features (setq _features __features)) _features)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _features
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint64 _features
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _features (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _features) (= (length (_features . bv)) 2)) ;; bignum
              (write-long (ash (elt (_features . bv) 0) 0) s)
              (write-long (ash (elt (_features . bv) 1) -1) s))
             ((and (class _features) (= (length (_features . bv)) 1)) ;; big1
              (write-long (elt (_features . bv) 0) s)
              (write-long (if (>= _features 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _features s)(write-long (if (>= _features 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint64 _features
     
#+(or :alpha :irix6 :x86_64)
      (setf _features (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _features (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get bebop_msgs::Ardrone3PROStateFeatures :md5sum-) "46f306a2a04707d5805d22a04d72b46e")
(setf (get bebop_msgs::Ardrone3PROStateFeatures :datatype-) "bebop_msgs/Ardrone3PROStateFeatures")
(setf (get bebop_msgs::Ardrone3PROStateFeatures :definition-)
      "# Ardrone3PROStateFeatures
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Pro features.

Header header

# Bitfield representing enabled features.
uint64 features

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



(provide :bebop_msgs/Ardrone3PROStateFeatures "46f306a2a04707d5805d22a04d72b46e")


