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

class CommonCommonStateMassStorageInfoStateListChanged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mass_storage_id = null;
      this.size = null;
      this.used_size = null;
      this.plugged = null;
      this.full = null;
      this.internal = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mass_storage_id')) {
        this.mass_storage_id = initObj.mass_storage_id
      }
      else {
        this.mass_storage_id = 0;
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
      if (initObj.hasOwnProperty('used_size')) {
        this.used_size = initObj.used_size
      }
      else {
        this.used_size = 0;
      }
      if (initObj.hasOwnProperty('plugged')) {
        this.plugged = initObj.plugged
      }
      else {
        this.plugged = 0;
      }
      if (initObj.hasOwnProperty('full')) {
        this.full = initObj.full
      }
      else {
        this.full = 0;
      }
      if (initObj.hasOwnProperty('internal')) {
        this.internal = initObj.internal
      }
      else {
        this.internal = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommonCommonStateMassStorageInfoStateListChanged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mass_storage_id]
    bufferOffset = _serializer.uint8(obj.mass_storage_id, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.uint32(obj.size, buffer, bufferOffset);
    // Serialize message field [used_size]
    bufferOffset = _serializer.uint32(obj.used_size, buffer, bufferOffset);
    // Serialize message field [plugged]
    bufferOffset = _serializer.uint8(obj.plugged, buffer, bufferOffset);
    // Serialize message field [full]
    bufferOffset = _serializer.uint8(obj.full, buffer, bufferOffset);
    // Serialize message field [internal]
    bufferOffset = _serializer.uint8(obj.internal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonCommonStateMassStorageInfoStateListChanged
    let len;
    let data = new CommonCommonStateMassStorageInfoStateListChanged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mass_storage_id]
    data.mass_storage_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [used_size]
    data.used_size = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [plugged]
    data.plugged = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [full]
    data.full = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [internal]
    data.internal = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/CommonCommonStateMassStorageInfoStateListChanged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ca92d7dc2cd357b6c1f89b1084ed001';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CommonCommonStateMassStorageInfoStateListChanged
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Mass storage info state list.
    
    Header header
    
    # Mass storage state id (unique)
    uint8 mass_storage_id
    # Mass storage size in MBytes
    uint32 size
    # Mass storage used size in MBytes
    uint32 used_size
    # Mass storage plugged (1 if mass storage is plugged, otherwise 0)
    uint8 plugged
    # Mass storage full information state (1 if mass storage full, 0 otherwise).
    uint8 full
    # Mass storage internal type state (1 if mass storage is internal, 0 otherwise)
    uint8 internal
    
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
    const resolved = new CommonCommonStateMassStorageInfoStateListChanged(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mass_storage_id !== undefined) {
      resolved.mass_storage_id = msg.mass_storage_id;
    }
    else {
      resolved.mass_storage_id = 0
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    if (msg.used_size !== undefined) {
      resolved.used_size = msg.used_size;
    }
    else {
      resolved.used_size = 0
    }

    if (msg.plugged !== undefined) {
      resolved.plugged = msg.plugged;
    }
    else {
      resolved.plugged = 0
    }

    if (msg.full !== undefined) {
      resolved.full = msg.full;
    }
    else {
      resolved.full = 0
    }

    if (msg.internal !== undefined) {
      resolved.internal = msg.internal;
    }
    else {
      resolved.internal = 0
    }

    return resolved;
    }
};

module.exports = CommonCommonStateMassStorageInfoStateListChanged;
