; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3NetworkStateWifiScanListChanged.msg.html

(cl:defclass <Ardrone3NetworkStateWifiScanListChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ssid
    :reader ssid
    :initarg :ssid
    :type cl:string
    :initform "")
   (rssi
    :reader rssi
    :initarg :rssi
    :type cl:fixnum
    :initform 0)
   (band
    :reader band
    :initarg :band
    :type cl:fixnum
    :initform 0)
   (channel
    :reader channel
    :initarg :channel
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Ardrone3NetworkStateWifiScanListChanged (<Ardrone3NetworkStateWifiScanListChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3NetworkStateWifiScanListChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3NetworkStateWifiScanListChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3NetworkStateWifiScanListChanged> is deprecated: use bebop_msgs-msg:Ardrone3NetworkStateWifiScanListChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3NetworkStateWifiScanListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ssid-val :lambda-list '(m))
(cl:defmethod ssid-val ((m <Ardrone3NetworkStateWifiScanListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:ssid-val is deprecated.  Use bebop_msgs-msg:ssid instead.")
  (ssid m))

(cl:ensure-generic-function 'rssi-val :lambda-list '(m))
(cl:defmethod rssi-val ((m <Ardrone3NetworkStateWifiScanListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:rssi-val is deprecated.  Use bebop_msgs-msg:rssi instead.")
  (rssi m))

(cl:ensure-generic-function 'band-val :lambda-list '(m))
(cl:defmethod band-val ((m <Ardrone3NetworkStateWifiScanListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:band-val is deprecated.  Use bebop_msgs-msg:band instead.")
  (band m))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <Ardrone3NetworkStateWifiScanListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:channel-val is deprecated.  Use bebop_msgs-msg:channel instead.")
  (channel m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Ardrone3NetworkStateWifiScanListChanged>)))
    "Constants for message type '<Ardrone3NetworkStateWifiScanListChanged>"
  '((:BAND_2_4GHZ . 0)
    (:BAND_5GHZ . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Ardrone3NetworkStateWifiScanListChanged)))
    "Constants for message type 'Ardrone3NetworkStateWifiScanListChanged"
  '((:BAND_2_4GHZ . 0)
    (:BAND_5GHZ . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3NetworkStateWifiScanListChanged>) ostream)
  "Serializes a message object of type '<Ardrone3NetworkStateWifiScanListChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ssid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ssid))
  (cl:let* ((signed (cl:slot-value msg 'rssi)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'band)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3NetworkStateWifiScanListChanged>) istream)
  "Deserializes a message object of type '<Ardrone3NetworkStateWifiScanListChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ssid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ssid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rssi) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'band)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3NetworkStateWifiScanListChanged>)))
  "Returns string type for a message object of type '<Ardrone3NetworkStateWifiScanListChanged>"
  "bebop_msgs/Ardrone3NetworkStateWifiScanListChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3NetworkStateWifiScanListChanged)))
  "Returns string type for a message object of type 'Ardrone3NetworkStateWifiScanListChanged"
  "bebop_msgs/Ardrone3NetworkStateWifiScanListChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3NetworkStateWifiScanListChanged>)))
  "Returns md5sum for a message object of type '<Ardrone3NetworkStateWifiScanListChanged>"
  "887b79816b1cfc1c69c34200f03104a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3NetworkStateWifiScanListChanged)))
  "Returns md5sum for a message object of type 'Ardrone3NetworkStateWifiScanListChanged"
  "887b79816b1cfc1c69c34200f03104a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3NetworkStateWifiScanListChanged>)))
  "Returns full string definition for message of type '<Ardrone3NetworkStateWifiScanListChanged>"
  (cl:format cl:nil "# Ardrone3NetworkStateWifiScanListChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Wifi scan results.\\n Please note that the list is not complete until you receive the event [WifiScanEnded](#1-14-1).~%~%Header header~%~%# SSID of the AP~%string ssid~%# RSSI of the AP in dbm (negative value)~%int16 rssi~%# The band : 2.4 GHz or 5 GHz~%uint8 band_2_4ghz=0  # 2.4 GHz band~%uint8 band_5ghz=1  # 5 GHz band~%uint8 band~%# Channel of the AP~%uint8 channel~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3NetworkStateWifiScanListChanged)))
  "Returns full string definition for message of type 'Ardrone3NetworkStateWifiScanListChanged"
  (cl:format cl:nil "# Ardrone3NetworkStateWifiScanListChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Wifi scan results.\\n Please note that the list is not complete until you receive the event [WifiScanEnded](#1-14-1).~%~%Header header~%~%# SSID of the AP~%string ssid~%# RSSI of the AP in dbm (negative value)~%int16 rssi~%# The band : 2.4 GHz or 5 GHz~%uint8 band_2_4ghz=0  # 2.4 GHz band~%uint8 band_5ghz=1  # 5 GHz band~%uint8 band~%# Channel of the AP~%uint8 channel~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3NetworkStateWifiScanListChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'ssid))
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3NetworkStateWifiScanListChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3NetworkStateWifiScanListChanged
    (cl:cons ':header (header msg))
    (cl:cons ':ssid (ssid msg))
    (cl:cons ':rssi (rssi msg))
    (cl:cons ':band (band msg))
    (cl:cons ':channel (channel msg))
))
