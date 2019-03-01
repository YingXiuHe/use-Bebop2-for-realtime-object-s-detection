; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3MediaRecordStatePictureStateChanged.msg.html

(cl:defclass <Ardrone3MediaRecordStatePictureStateChanged> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (mass_storage_id
    :reader mass_storage_id
    :initarg :mass_storage_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Ardrone3MediaRecordStatePictureStateChanged (<Ardrone3MediaRecordStatePictureStateChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3MediaRecordStatePictureStateChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3MediaRecordStatePictureStateChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3MediaRecordStatePictureStateChanged> is deprecated: use bebop_msgs-msg:Ardrone3MediaRecordStatePictureStateChanged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3MediaRecordStatePictureStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Ardrone3MediaRecordStatePictureStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:state-val is deprecated.  Use bebop_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'mass_storage_id-val :lambda-list '(m))
(cl:defmethod mass_storage_id-val ((m <Ardrone3MediaRecordStatePictureStateChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:mass_storage_id-val is deprecated.  Use bebop_msgs-msg:mass_storage_id instead.")
  (mass_storage_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3MediaRecordStatePictureStateChanged>) ostream)
  "Serializes a message object of type '<Ardrone3MediaRecordStatePictureStateChanged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mass_storage_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3MediaRecordStatePictureStateChanged>) istream)
  "Deserializes a message object of type '<Ardrone3MediaRecordStatePictureStateChanged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mass_storage_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3MediaRecordStatePictureStateChanged>)))
  "Returns string type for a message object of type '<Ardrone3MediaRecordStatePictureStateChanged>"
  "bebop_msgs/Ardrone3MediaRecordStatePictureStateChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3MediaRecordStatePictureStateChanged)))
  "Returns string type for a message object of type 'Ardrone3MediaRecordStatePictureStateChanged"
  "bebop_msgs/Ardrone3MediaRecordStatePictureStateChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3MediaRecordStatePictureStateChanged>)))
  "Returns md5sum for a message object of type '<Ardrone3MediaRecordStatePictureStateChanged>"
  "2f111b238d7065d202c5d0de1746940a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3MediaRecordStatePictureStateChanged)))
  "Returns md5sum for a message object of type 'Ardrone3MediaRecordStatePictureStateChanged"
  "2f111b238d7065d202c5d0de1746940a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3MediaRecordStatePictureStateChanged>)))
  "Returns full string definition for message of type '<Ardrone3MediaRecordStatePictureStateChanged>"
  (cl:format cl:nil "# Ardrone3MediaRecordStatePictureStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Picture state.~%~%Header header~%~%# 1 if picture has been taken, 0 otherwise~%uint8 state~%# Mass storage id where the picture was recorded~%uint8 mass_storage_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3MediaRecordStatePictureStateChanged)))
  "Returns full string definition for message of type 'Ardrone3MediaRecordStatePictureStateChanged"
  (cl:format cl:nil "# Ardrone3MediaRecordStatePictureStateChanged~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Picture state.~%~%Header header~%~%# 1 if picture has been taken, 0 otherwise~%uint8 state~%# Mass storage id where the picture was recorded~%uint8 mass_storage_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3MediaRecordStatePictureStateChanged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3MediaRecordStatePictureStateChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3MediaRecordStatePictureStateChanged
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
    (cl:cons ':mass_storage_id (mass_storage_id msg))
))
