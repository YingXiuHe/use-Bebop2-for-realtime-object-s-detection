; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonCommonStateMassStorageContent.msg.html

(cl:defclass <CommonCommonStateMassStorageContent> (roslisp-msg-protocol:ros-message)
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
   (nbPuds
    :reader nbPuds
    :initarg :nbPuds
    :type cl:fixnum
    :initform 0)
   (nbCrashLogs
    :reader nbCrashLogs
    :initarg :nbCrashLogs
    :type cl:fixnum
    :initform 0)
   (nbRawPhotos
    :reader nbRawPhotos
    :initarg :nbRawPhotos
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonCommonStateMassStorageContent (<CommonCommonStateMassStorageContent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonCommonStateMassStorageContent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonCommonStateMassStorageContent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonCommonStateMassStorageContent> is deprecated: use bebop_msgs-msg:CommonCommonStateMassStorageContent instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonCommonStateMassStorageContent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mass_storage_id-val :lambda-list '(m))
(cl:defmethod mass_storage_id-val ((m <CommonCommonStateMassStorageContent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:mass_storage_id-val is deprecated.  Use bebop_msgs-msg:mass_storage_id instead.")
  (mass_storage_id m))

(cl:ensure-generic-function 'nbPhotos-val :lambda-list '(m))
(cl:defmethod nbPhotos-val ((m <CommonCommonStateMassStorageContent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:nbPhotos-val is deprecated.  Use bebop_msgs-msg:nbPhotos instead.")
  (nbPhotos m))

(cl:ensure-generic-function 'nbVideos-val :lambda-list '(m))
(cl:defmethod nbVideos-val ((m <CommonCommonStateMassStorageContent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:nbVideos-val is deprecated.  Use bebop_msgs-msg:nbVideos instead.")
  (nbVideos m))

(cl:ensure-generic-function 'nbPuds-val :lambda-list '(m))
(cl:defmethod nbPuds-val ((m <CommonCommonStateMassStorageContent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:nbPuds-val is deprecated.  Use bebop_msgs-msg:nbPuds instead.")
  (nbPuds m))

(cl:ensure-generic-function 'nbCrashLogs-val :lambda-list '(m))
(cl:defmethod nbCrashLogs-val ((m <CommonCommonStateMassStorageContent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:nbCrashLogs-val is deprecated.  Use bebop_msgs-msg:nbCrashLogs instead.")
  (nbCrashLogs m))

(cl:ensure-generic-function 'nbRawPhotos-val :lambda-list '(m))
(cl:defmethod nbRawPhotos-val ((m <CommonCommonStateMassStorageContent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:nbRawPhotos-val is deprecated.  Use bebop_msgs-msg:nbRawPhotos instead.")
  (nbRawPhotos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonCommonStateMassStorageContent>) ostream)
  "Serializes a message object of type '<CommonCommonStateMassStorageContent>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mass_storage_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nbPhotos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nbPhotos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nbVideos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nbVideos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nbPuds)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nbPuds)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nbCrashLogs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nbCrashLogs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nbRawPhotos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nbRawPhotos)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonCommonStateMassStorageContent>) istream)
  "Deserializes a message object of type '<CommonCommonStateMassStorageContent>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mass_storage_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nbPhotos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nbPhotos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nbVideos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nbVideos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nbPuds)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nbPuds)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nbCrashLogs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nbCrashLogs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nbRawPhotos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nbRawPhotos)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonCommonStateMassStorageContent>)))
  "Returns string type for a message object of type '<CommonCommonStateMassStorageContent>"
  "bebop_msgs/CommonCommonStateMassStorageContent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonCommonStateMassStorageContent)))
  "Returns string type for a message object of type 'CommonCommonStateMassStorageContent"
  "bebop_msgs/CommonCommonStateMassStorageContent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonCommonStateMassStorageContent>)))
  "Returns md5sum for a message object of type '<CommonCommonStateMassStorageContent>"
  "a6f27bb44bd06f7e0a5be4f3c064ceea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonCommonStateMassStorageContent)))
  "Returns md5sum for a message object of type 'CommonCommonStateMassStorageContent"
  "a6f27bb44bd06f7e0a5be4f3c064ceea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonCommonStateMassStorageContent>)))
  "Returns full string definition for message of type '<CommonCommonStateMassStorageContent>"
  (cl:format cl:nil "# CommonCommonStateMassStorageContent~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Mass storage content.~%~%Header header~%~%# Mass storage id (unique)~%uint8 mass_storage_id~%# Number of photos (does not include raw photos)~%uint16 nbPhotos~%# Number of videos~%uint16 nbVideos~%# Number of puds~%uint16 nbPuds~%# Number of crash logs~%uint16 nbCrashLogs~%# Number of raw photos~%uint16 nbRawPhotos~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonCommonStateMassStorageContent)))
  "Returns full string definition for message of type 'CommonCommonStateMassStorageContent"
  (cl:format cl:nil "# CommonCommonStateMassStorageContent~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Mass storage content.~%~%Header header~%~%# Mass storage id (unique)~%uint8 mass_storage_id~%# Number of photos (does not include raw photos)~%uint16 nbPhotos~%# Number of videos~%uint16 nbVideos~%# Number of puds~%uint16 nbPuds~%# Number of crash logs~%uint16 nbCrashLogs~%# Number of raw photos~%uint16 nbRawPhotos~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonCommonStateMassStorageContent>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonCommonStateMassStorageContent>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonCommonStateMassStorageContent
    (cl:cons ':header (header msg))
    (cl:cons ':mass_storage_id (mass_storage_id msg))
    (cl:cons ':nbPhotos (nbPhotos msg))
    (cl:cons ':nbVideos (nbVideos msg))
    (cl:cons ':nbPuds (nbPuds msg))
    (cl:cons ':nbCrashLogs (nbCrashLogs msg))
    (cl:cons ':nbRawPhotos (nbRawPhotos msg))
))
