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

class CommonAccessoryStateSupportedAccessoriesListChanged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.accessory = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('accessory')) {
        this.accessory = initObj.accessory
      }
      else {
        this.accessory = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommonAccessoryStateSupportedAccessoriesListChanged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [accessory]
    bufferOffset = _serializer.uint8(obj.accessory, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonAccessoryStateSupportedAccessoriesListChanged
    let len;
    let data = new CommonAccessoryStateSupportedAccessoriesListChanged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [accessory]
    data.accessory = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/CommonAccessoryStateSupportedAccessoriesListChanged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c5ca2fc44e5f348a92c49ef9e03b7d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CommonAccessoryStateSupportedAccessoriesListChanged
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Supported accessories list.
    
    Header header
    
    # Accessory configurations supported by the product.
    uint8 accessory_NO_ACCESSORY=0  # No accessory.
    uint8 accessory_STD_WHEELS=1  # Standard wheels
    uint8 accessory_TRUCK_WHEELS=2  # Truck wheels
    uint8 accessory_HULL=3  # Hull
    uint8 accessory_HYDROFOIL=4  # Hydrofoil
    uint8 accessory
    
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
    const resolved = new CommonAccessoryStateSupportedAccessoriesListChanged(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.accessory !== undefined) {
      resolved.accessory = msg.accessory;
    }
    else {
      resolved.accessory = 0
    }

    return resolved;
    }
};

// Constants for message
CommonAccessoryStateSupportedAccessoriesListChanged.Constants = {
  ACCESSORY_NO_ACCESSORY: 0,
  ACCESSORY_STD_WHEELS: 1,
  ACCESSORY_TRUCK_WHEELS: 2,
  ACCESSORY_HULL: 3,
  ACCESSORY_HYDROFOIL: 4,
}

module.exports = CommonAccessoryStateSupportedAccessoriesListChanged;
