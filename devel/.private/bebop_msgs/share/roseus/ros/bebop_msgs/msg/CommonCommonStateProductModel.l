;; Auto-generated. Do not edit!


(when (boundp 'bebop_msgs::CommonCommonStateProductModel)
  (if (not (find-package "BEBOP_MSGS"))
    (make-package "BEBOP_MSGS"))
  (shadow 'CommonCommonStateProductModel (find-package "BEBOP_MSGS")))
(unless (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL")
  (make-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))

(in-package "ROS")
;;//! \htmlinclude CommonCommonStateProductModel.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MODEL_RS_TRAVIS*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(shadow '*MODEL_RS_TRAVIS* (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(defconstant bebop_msgs::CommonCommonStateProductModel::*MODEL_RS_TRAVIS* 0)
(intern "*MODEL_RS_MARS*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(shadow '*MODEL_RS_MARS* (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(defconstant bebop_msgs::CommonCommonStateProductModel::*MODEL_RS_MARS* 1)
(intern "*MODEL_RS_SWAT*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(shadow '*MODEL_RS_SWAT* (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(defconstant bebop_msgs::CommonCommonStateProductModel::*MODEL_RS_SWAT* 2)
(intern "*MODEL_RS_MCLANE*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(shadow '*MODEL_RS_MCLANE* (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(defconstant bebop_msgs::CommonCommonStateProductModel::*MODEL_RS_MCLANE* 3)
(intern "*MODEL_RS_BLAZE*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(shadow '*MODEL_RS_BLAZE* (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(defconstant bebop_msgs::CommonCommonStateProductModel::*MODEL_RS_BLAZE* 4)
(intern "*MODEL_RS_ORAK*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(shadow '*MODEL_RS_ORAK* (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(defconstant bebop_msgs::CommonCommonStateProductModel::*MODEL_RS_ORAK* 5)
(intern "*MODEL_RS_NEWZ*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(shadow '*MODEL_RS_NEWZ* (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(defconstant bebop_msgs::CommonCommonStateProductModel::*MODEL_RS_NEWZ* 6)
(intern "*MODEL_JS_MARSHALL*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(shadow '*MODEL_JS_MARSHALL* (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(defconstant bebop_msgs::CommonCommonStateProductModel::*MODEL_JS_MARSHALL* 7)
(intern "*MODEL_JS_DIESEL*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(shadow '*MODEL_JS_DIESEL* (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(defconstant bebop_msgs::CommonCommonStateProductModel::*MODEL_JS_DIESEL* 8)
(intern "*MODEL_JS_BUZZ*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(shadow '*MODEL_JS_BUZZ* (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(defconstant bebop_msgs::CommonCommonStateProductModel::*MODEL_JS_BUZZ* 9)
(intern "*MODEL_JS_MAX*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(shadow '*MODEL_JS_MAX* (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(defconstant bebop_msgs::CommonCommonStateProductModel::*MODEL_JS_MAX* 10)
(intern "*MODEL_JS_JETT*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(shadow '*MODEL_JS_JETT* (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(defconstant bebop_msgs::CommonCommonStateProductModel::*MODEL_JS_JETT* 11)
(intern "*MODEL_JS_TUKTUK*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(shadow '*MODEL_JS_TUKTUK* (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(defconstant bebop_msgs::CommonCommonStateProductModel::*MODEL_JS_TUKTUK* 12)
(intern "*MODEL_SW_BLACK*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(shadow '*MODEL_SW_BLACK* (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(defconstant bebop_msgs::CommonCommonStateProductModel::*MODEL_SW_BLACK* 13)
(intern "*MODEL_SW_WHITE*" (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(shadow '*MODEL_SW_WHITE* (find-package "BEBOP_MSGS::COMMONCOMMONSTATEPRODUCTMODEL"))
(defconstant bebop_msgs::CommonCommonStateProductModel::*MODEL_SW_WHITE* 14)
(defclass bebop_msgs::CommonCommonStateProductModel
  :super ros::object
  :slots (_header _model ))

(defmethod bebop_msgs::CommonCommonStateProductModel
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:model __model) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _model (round __model))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:model
   (&optional __model)
   (if __model (setq _model __model)) _model)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _model
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _model
       (write-byte _model s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _model
     (setq _model (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bebop_msgs::CommonCommonStateProductModel :md5sum-) "5577551dc33e452626f964eb7a27a391")
(setf (get bebop_msgs::CommonCommonStateProductModel :datatype-) "bebop_msgs/CommonCommonStateProductModel")
(setf (get bebop_msgs::CommonCommonStateProductModel :definition-)
      "# CommonCommonStateProductModel
# auto-generated from up stream XML files at
#   github.com/Parrot-Developers/libARCommands/tree/master/Xml
# To check upstream commit hash, refer to last_build_info file
# Do not modify this file by hand. Check scripts/meta folder for generator files.
#
# SDK Comment: Product sub-model.\\n This can be used to customize the UI depending on the product.

Header header

# The Model of the product.
uint8 model_RS_TRAVIS=0  # Travis (RS taxi) model.
uint8 model_RS_MARS=1  # Mars (RS space) model
uint8 model_RS_SWAT=2  # SWAT (RS SWAT) model
uint8 model_RS_MCLANE=3  # Mc Lane (RS police) model
uint8 model_RS_BLAZE=4  # Blaze (RS fire) model
uint8 model_RS_ORAK=5  # Orak (RS carbon hydrofoil) model
uint8 model_RS_NEWZ=6  # New Z (RS wooden hydrofoil) model
uint8 model_JS_MARSHALL=7  # Marshall (JS fire) model
uint8 model_JS_DIESEL=8  # Diesel (JS SWAT) model
uint8 model_JS_BUZZ=9  # Buzz (JS space) model
uint8 model_JS_MAX=10  # Max (JS F1) model
uint8 model_JS_JETT=11  # Jett (JS flames) model
uint8 model_JS_TUKTUK=12  # Tuk-Tuk (JS taxi) model
uint8 model_SW_BLACK=13  # Swing black model
uint8 model_SW_WHITE=14  # Swing white model
uint8 model

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



(provide :bebop_msgs/CommonCommonStateProductModel "5577551dc33e452626f964eb7a27a391")


