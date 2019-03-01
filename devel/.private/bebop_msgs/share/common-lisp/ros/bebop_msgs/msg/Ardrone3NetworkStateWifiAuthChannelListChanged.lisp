; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3NetworkStateWifiAuthChannelListChanged.msg.html

(cl:defclass <Ardrone3NetworkStateWifiAuthChannelListChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (band
    :reader band
    :initarg :band
    :type cl:fixnum
    :initform 0)
   (channel
    :reader channel
    :initarg :channel
    :type cl:fixnum
    :initform 0)
   (in_or_out
    :reader in_or_out
    :initarg :in_or_out
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Ardrone3NetworkStateWifiAuthChannelListChanged (<Ardrone3NetworkStateWifiAuthChannelListChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3NetworkStateWifiAuthChannelListChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3NetworkStateWifiAuthChannelListChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3NetworkStateWifiAuthChannelListChanged> is deprecated: use bebop_msgs-msg:Ardrone3NetworkStateWifiAuthChannelListChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3NetworkStateWifiAuthChannelListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'band-val :lambda-list '(m))
(cl:defmethod band-val ((m <Ardrone3NetworkStateWifiAuthChannelListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:band-val is deprecated.  Use bebop_msgs-msg:band instead.")
  (band m))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <Ardrone3NetworkStateWifiAuthChannelListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:channel-val is deprecated.  Use bebop_msgs-msg:channel instead.")
  (channel m))

(cl:ensure-generic-function 'in_or_out-val :lambda-list '(m))
(cl:defmethod in_or_out-val ((m <Ardrone3NetworkStateWifiAuthChannelListChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:in_or_out-val is deprecated.  Use bebop_msgs-msg:in_or_out instead.")
  (in_or_out m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Ardrone3NetworkStateWifiAuthChannelListChanged>)))
    "Constants for message type '<Ardrone3NetworkStateWifiAuthChannelListChanged>"
  '((:BAND_2_4GHZ . 0)
    (:BAND_5GHZ . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Ardrone3NetworkStateWifiAuthChannelListChanged)))
    "Constants for message type 'Ardrone3NetworkStateWifiAuthChannelListChanged"
  '((:BAND_2_4GHZ . 0)
    (:BAND_5GHZ . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3NetworkStateWifiAuthChannelListChanged>) ostream)
  "Serializes a message object of type '<Ardrone3NetworkStateWifiAuthChannelListChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'band)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'in_or_out)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3NetworkStateWifiAuthChannelListChanged>) istream)
  "Deserializes a message object of type '<Ardrone3NetworkStateWifiAuthChannelListChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'band)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'in_or_out)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3NetworkStateWifiAuthChannelListChanged>)))
  "Returns string type for a message object of type '<Ardrone3NetworkStateWifiAuthChannelListChanged>"
  "bebop_msgs/Ardrone3NetworkStateWifiAuthChannelListChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3NetworkStateWifiAuthChannelListChanged)))
  "Returns string type for a message object of type 'Ardrone3NetworkStateWifiAuthChannelListChanged"
  "bebop_msgs/Ardrone3NetworkStateWifiAuthChannelListChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3NetworkStateWifiAuthChannelListChanged>)))
  "Returns md5sum for a message object of type '<Ardrone3NetworkStateWifiAuthChannelListChanged>"
  "c7b1ccebf54f52f3836dbbe717c16c94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3NetworkStateWifiAuthChannelListChanged)))
  "Returns md5sum for a message object of type 'Ardrone3NetworkStateWifiAuthChannelListChanged"
  "c7b1ccebf54f52f3836dbbe717c16c94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3NetworkStateWifiAuthChannelListChanged>)))
  "Returns full string definition for message of type '<Ardrone3NetworkStateWifiAuthChannelListChanged>"
  (cl:format cl:nil "# Ardrone3NetworkStateWifiAuthChannelListChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Available wifi channels.\\n Please note that the list is not complete until you receive the event [AvailableWifiChannelsCompleted](#1-14-3).~%~%Header header~%~%# The band of this channel : 2.4 GHz or 5 GHz~%uint8 band_2_4ghz=0  # 2.4 GHz band~%uint8 band_5ghz=1  # 5 GHz band~%uint8 band~%# The authorized channel.~%uint8 channel~%# Bit 0 is 1 if channel is authorized outside (0 otherwise) ; Bit 1 is 1 if channel is authorized inside (0 otherwise)~%uint8 in_or_out~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3NetworkStateWifiAuthChannelListChanged)))
  "Returns full string definition for message of type 'Ardrone3NetworkStateWifiAuthChannelListChanged"
  (cl:format cl:nil "# Ardrone3NetworkStateWifiAuthChannelListChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Available wifi channels.\\n Please note that the list is not complete until you receive the event [AvailableWifiChannelsCompleted](#1-14-3).~%~%Header header~%~%# The band of this channel : 2.4 GHz or 5 GHz~%uint8 band_2_4ghz=0  # 2.4 GHz band~%uint8 band_5ghz=1  # 5 GHz band~%uint8 band~%# The authorized channel.~%uint8 channel~%# Bit 0 is 1 if channel is authorized outside (0 otherwise) ; Bit 1 is 1 if channel is authorized inside (0 otherwise)~%uint8 in_or_out~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3NetworkStateWifiAuthChannelListChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3NetworkStateWifiAuthChannelListChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3NetworkStateWifiAuthChannelListChanged
    (cl:cons ':header (header msg))
    (cl:cons ':band (band msg))
    (cl:cons ':channel (channel msg))
    (cl:cons ':in_or_out (in_or_out msg))
))
