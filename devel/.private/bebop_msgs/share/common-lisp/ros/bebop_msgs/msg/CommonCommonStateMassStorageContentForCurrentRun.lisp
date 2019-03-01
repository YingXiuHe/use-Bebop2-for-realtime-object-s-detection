; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonCommonStateMassStorageContentForCurrentRun.msg.html

(cl:defclass <CommonCommonStateMassStorageContentForCurrentRun> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mass_storage_id
    :reader mass_storage_id
    :initarg :mass_storage_id
    :type cl:fixnum
    :initform 0)
   (nbPhotos
    :reader nbPhotos
    :initarg :nbPhotos
    :type cl:fixnum
    :initform 0)
   (nbVideos
    :reader nbVideos
    :initarg :nbVideos
    :type cl:fixnum
    :initform 0)
   (nbRawPhotos
    :reader nbRawPhotos
    :initarg :nbRawPhotos
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonCommonStateMassStorageContentForCurrentRun (<CommonCommonStateMassStorageContentForCurrentRun>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonCommonStateMassStorageContentForCurrentRun>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonCommonStateMassStorageContentForCurrentRun)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonCommonStateMassStorageContentForCurrentRun> is deprecated: use bebop_msgs-msg:CommonCommonStateMassStorageContentForCurrentRun instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonCommonStateMassStorageContentForCurrentRun>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mass_storage_id-val :lambda-list '(m))
(cl:defmethod mass_storage_id-val ((m <CommonCommonStateMassStorageContentForCurrentRun>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:mass_storage_id-val is deprecated.  Use bebop_msgs-msg:mass_storage_id instead.")
  (mass_storage_id m))

(cl:ensure-generic-function 'nbPhotos-val :lambda-list '(m))
(cl:defmethod nbPhotos-val ((m <CommonCommonStateMassStorageContentForCurrentRun>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:nbPhotos-val is deprecated.  Use bebop_msgs-msg:nbPhotos instead.")
  (nbPhotos m))

(cl:ensure-generic-function 'nbVideos-val :lambda-list '(m))
(cl:defmethod nbVideos-val ((m <CommonCommonStateMassStorageContentForCurrentRun>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:nbVideos-val is deprecated.  Use bebop_msgs-msg:nbVideos instead.")
  (nbVideos m))

(cl:ensure-generic-function 'nbRawPhotos-val :lambda-list '(m))
(cl:defmethod nbRawPhotos-val ((m <CommonCommonStateMassStorageContentForCurrentRun>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:nbRawPhotos-val is deprecated.  Use bebop_msgs-msg:nbRawPhotos instead.")
  (nbRawPhotos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonCommonStateMassStorageContentForCurrentRun>) ostream)
  "Serializes a message object of type '<CommonCommonStateMassStorageContentForCurrentRun>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mass_storage_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nbPhotos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nbPhotos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nbVideos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nbVideos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nbRawPhotos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nbRawPhotos)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonCommonStateMassStorageContentForCurrentRun>) istream)
  "Deserializes a message object of type '<CommonCommonStateMassStorageContentForCurrentRun>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mass_storage_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nbPhotos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nbPhotos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nbVideos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nbVideos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nbRawPhotos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nbRawPhotos)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonCommonStateMassStorageContentForCurrentRun>)))
  "Returns string type for a message object of type '<CommonCommonStateMassStorageContentForCurrentRun>"
  "bebop_msgs/CommonCommonStateMassStorageContentForCurrentRun")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonCommonStateMassStorageContentForCurrentRun)))
  "Returns string type for a message object of type 'CommonCommonStateMassStorageContentForCurrentRun"
  "bebop_msgs/CommonCommonStateMassStorageContentForCurrentRun")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonCommonStateMassStorageContentForCurrentRun>)))
  "Returns md5sum for a message object of type '<CommonCommonStateMassStorageContentForCurrentRun>"
  "a6aacd7db5d55f185b1fbb8276f7019f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonCommonStateMassStorageContentForCurrentRun)))
  "Returns md5sum for a message object of type 'CommonCommonStateMassStorageContentForCurrentRun"
  "a6aacd7db5d55f185b1fbb8276f7019f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonCommonStateMassStorageContentForCurrentRun>)))
  "Returns full string definition for message of type '<CommonCommonStateMassStorageContentForCurrentRun>"
  (cl:format cl:nil "# CommonCommonStateMassStorageContentForCurrentRun~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Mass storage content for current run.\\n Only counts the files related to the current run (see [RunId](#0-30-0))~%~%Header header~%~%# Mass storage id (unique)~%uint8 mass_storage_id~%# Number of photos (does not include raw photos)~%uint16 nbPhotos~%# Number of videos~%uint16 nbVideos~%# Number of raw photos~%uint16 nbRawPhotos~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonCommonStateMassStorageContentForCurrentRun)))
  "Returns full string definition for message of type 'CommonCommonStateMassStorageContentForCurrentRun"
  (cl:format cl:nil "# CommonCommonStateMassStorageContentForCurrentRun~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Mass storage content for current run.\\n Only counts the files related to the current run (see [RunId](#0-30-0))~%~%Header header~%~%# Mass storage id (unique)~%uint8 mass_storage_id~%# Number of photos (does not include raw photos)~%uint16 nbPhotos~%# Number of videos~%uint16 nbVideos~%# Number of raw photos~%uint16 nbRawPhotos~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonCommonStateMassStorageContentForCurrentRun>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonCommonStateMassStorageContentForCurrentRun>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonCommonStateMassStorageContentForCurrentRun
    (cl:cons ':header (header msg))
    (cl:cons ':mass_storage_id (mass_storage_id msg))
    (cl:cons ':nbPhotos (nbPhotos msg))
    (cl:cons ':nbVideos (nbVideos msg))
    (cl:cons ':nbRawPhotos (nbRawPhotos msg))
))
