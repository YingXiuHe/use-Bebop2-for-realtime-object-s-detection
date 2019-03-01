; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude CommonCommonStateProductModel.msg.html

(cl:defclass <CommonCommonStateProductModel> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (model
    :reader model
    :initarg :model
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonCommonStateProductModel (<CommonCommonStateProductModel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonCommonStateProductModel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonCommonStateProductModel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<CommonCommonStateProductModel> is deprecated: use bebop_msgs-msg:CommonCommonStateProductModel instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommonCommonStateProductModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'model-val :lambda-list '(m))
(cl:defmethod model-val ((m <CommonCommonStateProductModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:model-val is deprecated.  Use bebop_msgs-msg:model instead.")
  (model m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CommonCommonStateProductModel>)))
    "Constants for message type '<CommonCommonStateProductModel>"
  '((:MODEL_RS_TRAVIS . 0)
    (:MODEL_RS_MARS . 1)
    (:MODEL_RS_SWAT . 2)
    (:MODEL_RS_MCLANE . 3)
    (:MODEL_RS_BLAZE . 4)
    (:MODEL_RS_ORAK . 5)
    (:MODEL_RS_NEWZ . 6)
    (:MODEL_JS_MARSHALL . 7)
    (:MODEL_JS_DIESEL . 8)
    (:MODEL_JS_BUZZ . 9)
    (:MODEL_JS_MAX . 10)
    (:MODEL_JS_JETT . 11)
    (:MODEL_JS_TUKTUK . 12)
    (:MODEL_SW_BLACK . 13)
    (:MODEL_SW_WHITE . 14))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CommonCommonStateProductModel)))
    "Constants for message type 'CommonCommonStateProductModel"
  '((:MODEL_RS_TRAVIS . 0)
    (:MODEL_RS_MARS . 1)
    (:MODEL_RS_SWAT . 2)
    (:MODEL_RS_MCLANE . 3)
    (:MODEL_RS_BLAZE . 4)
    (:MODEL_RS_ORAK . 5)
    (:MODEL_RS_NEWZ . 6)
    (:MODEL_JS_MARSHALL . 7)
    (:MODEL_JS_DIESEL . 8)
    (:MODEL_JS_BUZZ . 9)
    (:MODEL_JS_MAX . 10)
    (:MODEL_JS_JETT . 11)
    (:MODEL_JS_TUKTUK . 12)
    (:MODEL_SW_BLACK . 13)
    (:MODEL_SW_WHITE . 14))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonCommonStateProductModel>) ostream)
  "Serializes a message object of type '<CommonCommonStateProductModel>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'model)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonCommonStateProductModel>) istream)
  "Deserializes a message object of type '<CommonCommonStateProductModel>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'model)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonCommonStateProductModel>)))
  "Returns string type for a message object of type '<CommonCommonStateProductModel>"
  "bebop_msgs/CommonCommonStateProductModel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonCommonStateProductModel)))
  "Returns string type for a message object of type 'CommonCommonStateProductModel"
  "bebop_msgs/CommonCommonStateProductModel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonCommonStateProductModel>)))
  "Returns md5sum for a message object of type '<CommonCommonStateProductModel>"
  "5577551dc33e452626f964eb7a27a391")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonCommonStateProductModel)))
  "Returns md5sum for a message object of type 'CommonCommonStateProductModel"
  "5577551dc33e452626f964eb7a27a391")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonCommonStateProductModel>)))
  "Returns full string definition for message of type '<CommonCommonStateProductModel>"
  (cl:format cl:nil "# CommonCommonStateProductModel~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Product sub-model.\\n This can be used to customize the UI depending on the product.~%~%Header header~%~%# The Model of the product.~%uint8 model_RS_TRAVIS=0  # Travis (RS taxi) model.~%uint8 model_RS_MARS=1  # Mars (RS space) model~%uint8 model_RS_SWAT=2  # SWAT (RS SWAT) model~%uint8 model_RS_MCLANE=3  # Mc Lane (RS police) model~%uint8 model_RS_BLAZE=4  # Blaze (RS fire) model~%uint8 model_RS_ORAK=5  # Orak (RS carbon hydrofoil) model~%uint8 model_RS_NEWZ=6  # New Z (RS wooden hydrofoil) model~%uint8 model_JS_MARSHALL=7  # Marshall (JS fire) model~%uint8 model_JS_DIESEL=8  # Diesel (JS SWAT) model~%uint8 model_JS_BUZZ=9  # Buzz (JS space) model~%uint8 model_JS_MAX=10  # Max (JS F1) model~%uint8 model_JS_JETT=11  # Jett (JS flames) model~%uint8 model_JS_TUKTUK=12  # Tuk-Tuk (JS taxi) model~%uint8 model_SW_BLACK=13  # Swing black model~%uint8 model_SW_WHITE=14  # Swing white model~%uint8 model~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonCommonStateProductModel)))
  "Returns full string definition for message of type 'CommonCommonStateProductModel"
  (cl:format cl:nil "# CommonCommonStateProductModel~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Product sub-model.\\n This can be used to customize the UI depending on the product.~%~%Header header~%~%# The Model of the product.~%uint8 model_RS_TRAVIS=0  # Travis (RS taxi) model.~%uint8 model_RS_MARS=1  # Mars (RS space) model~%uint8 model_RS_SWAT=2  # SWAT (RS SWAT) model~%uint8 model_RS_MCLANE=3  # Mc Lane (RS police) model~%uint8 model_RS_BLAZE=4  # Blaze (RS fire) model~%uint8 model_RS_ORAK=5  # Orak (RS carbon hydrofoil) model~%uint8 model_RS_NEWZ=6  # New Z (RS wooden hydrofoil) model~%uint8 model_JS_MARSHALL=7  # Marshall (JS fire) model~%uint8 model_JS_DIESEL=8  # Diesel (JS SWAT) model~%uint8 model_JS_BUZZ=9  # Buzz (JS space) model~%uint8 model_JS_MAX=10  # Max (JS F1) model~%uint8 model_JS_JETT=11  # Jett (JS flames) model~%uint8 model_JS_TUKTUK=12  # Tuk-Tuk (JS taxi) model~%uint8 model_SW_BLACK=13  # Swing black model~%uint8 model_SW_WHITE=14  # Swing white model~%uint8 model~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonCommonStateProductModel>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonCommonStateProductModel>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonCommonStateProductModel
    (cl:cons ':header (header msg))
    (cl:cons ':model (model msg))
))
