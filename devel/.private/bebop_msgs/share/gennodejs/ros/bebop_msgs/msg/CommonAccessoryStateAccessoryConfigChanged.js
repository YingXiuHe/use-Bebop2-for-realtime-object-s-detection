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

class CommonAccessoryStateAccessoryConfigChanged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.newAccessory = null;
      this.error = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('newAccessory')) {
        this.newAccessory = initObj.newAccessory
      }
      else {
        this.newAccessory = 0;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommonAccessoryStateAccessoryConfigChanged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [newAccessory]
    bufferOffset = _serializer.uint8(obj.newAccessory, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.uint8(obj.error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonAccessoryStateAccessoryConfigChanged
    let len;
    let data = new CommonAccessoryStateAccessoryConfigChanged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [newAccessory]
    data.newAccessory = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/CommonAccessoryStateAccessoryConfigChanged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e157f9e28ff119a959d19b46621057dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CommonAccessoryStateAccessoryConfigChanged
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Accessory config.
    
    Header header
    
    # Accessory configuration reported by firmware.
    uint8 newAccessory_UNCONFIGURED=0  # No accessory configuration set. Controller needs to set one.
    uint8 newAccessory_NO_ACCESSORY=1  # No accessory.
    uint8 newAccessory_STD_WHEELS=2  # Standard wheels
    uint8 newAccessory_TRUCK_WHEELS=3  # Truck wheels
    uint8 newAccessory_HULL=4  # Hull
    uint8 newAccessory_HYDROFOIL=5  # Hydrofoil
    uint8 newAccessory_IN_PROGRESS=6  # Configuration in progress.
    uint8 newAccessory
    # Error code.
    uint8 error_OK=0  # No error. Accessory config change successful.
    uint8 error_UNKNOWN=1  # Cannot change accessory configuration for some reason.
    uint8 error_FLYING=2  # Cannot change accessory configuration while flying.
    uint8 error
    
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
    const resolved = new CommonAccessoryStateAccessoryConfigChanged(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.newAccessory !== undefined) {
      resolved.newAccessory = msg.newAccessory;
    }
    else {
      resolved.newAccessory = 0
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0
    }

    return resolved;
    }
};

// Constants for message
CommonAccessoryStateAccessoryConfigChanged.Constants = {
  NEWACCESSORY_UNCONFIGURED: 0,
  NEWACCESSORY_NO_ACCESSORY: 1,
  NEWACCESSORY_STD_WHEELS: 2,
  NEWACCESSORY_TRUCK_WHEELS: 3,
  NEWACCESSORY_HULL: 4,
  NEWACCESSORY_HYDROFOIL: 5,
  NEWACCESSORY_IN_PROGRESS: 6,
  ERROR_OK: 0,
  ERROR_UNKNOWN: 1,
  ERROR_FLYING: 2,
}

module.exports = CommonAccessoryStateAccessoryConfigChanged;
