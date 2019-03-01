// Auto-generated. Do not edit!

// (in-package bebop_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CommonCommonStateProductModel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.model = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('model')) {
        this.model = initObj.model
      }
      else {
        this.model = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommonCommonStateProductModel
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [model]
    bufferOffset = _serializer.uint8(obj.model, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonCommonStateProductModel
    let len;
    let data = new CommonCommonStateProductModel(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [model]
    data.model = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/CommonCommonStateProductModel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5577551dc33e452626f964eb7a27a391';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CommonCommonStateProductModel
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Product sub-model.\n This can be used to customize the UI depending on the product.
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CommonCommonStateProductModel(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.model !== undefined) {
      resolved.model = msg.model;
    }
    else {
      resolved.model = 0
    }

    return resolved;
    }
};

// Constants for message
CommonCommonStateProductModel.Constants = {
  MODEL_RS_TRAVIS: 0,
  MODEL_RS_MARS: 1,
  MODEL_RS_SWAT: 2,
  MODEL_RS_MCLANE: 3,
  MODEL_RS_BLAZE: 4,
  MODEL_RS_ORAK: 5,
  MODEL_RS_NEWZ: 6,
  MODEL_JS_MARSHALL: 7,
  MODEL_JS_DIESEL: 8,
  MODEL_JS_BUZZ: 9,
  MODEL_JS_MAX: 10,
  MODEL_JS_JETT: 11,
  MODEL_JS_TUKTUK: 12,
  MODEL_SW_BLACK: 13,
  MODEL_SW_WHITE: 14,
}

module.exports = CommonCommonStateProductModel;
