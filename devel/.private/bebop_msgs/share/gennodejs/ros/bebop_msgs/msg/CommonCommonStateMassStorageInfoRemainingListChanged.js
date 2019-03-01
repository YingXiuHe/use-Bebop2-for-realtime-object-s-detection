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

class CommonCommonStateMassStorageInfoRemainingListChanged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.free_space = null;
      this.rec_time = null;
      this.photo_remaining = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('free_space')) {
        this.free_space = initObj.free_space
      }
      else {
        this.free_space = 0;
      }
      if (initObj.hasOwnProperty('rec_time')) {
        this.rec_time = initObj.rec_time
      }
      else {
        this.rec_time = 0;
      }
      if (initObj.hasOwnProperty('photo_remaining')) {
        this.photo_remaining = initObj.photo_remaining
      }
      else {
        this.photo_remaining = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommonCommonStateMassStorageInfoRemainingListChanged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [free_space]
    bufferOffset = _serializer.uint32(obj.free_space, buffer, bufferOffset);
    // Serialize message field [rec_time]
    bufferOffset = _serializer.uint16(obj.rec_time, buffer, bufferOffset);
    // Serialize message field [photo_remaining]
    bufferOffset = _serializer.uint32(obj.photo_remaining, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonCommonStateMassStorageInfoRemainingListChanged
    let len;
    let data = new CommonCommonStateMassStorageInfoRemainingListChanged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [free_space]
    data.free_space = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [rec_time]
    data.rec_time = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [photo_remaining]
    data.photo_remaining = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/CommonCommonStateMassStorageInfoRemainingListChanged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2749dbbf018a8a51c35552e6e0aac2ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CommonCommonStateMassStorageInfoRemainingListChanged
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Mass storage remaining data list.
    
    Header header
    
    # Mass storage free space in MBytes
    uint32 free_space
    # Mass storage record time reamining in minute
    uint16 rec_time
    # Mass storage photo remaining
    uint32 photo_remaining
    
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
    const resolved = new CommonCommonStateMassStorageInfoRemainingListChanged(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.free_space !== undefined) {
      resolved.free_space = msg.free_space;
    }
    else {
      resolved.free_space = 0
    }

    if (msg.rec_time !== undefined) {
      resolved.rec_time = msg.rec_time;
    }
    else {
      resolved.rec_time = 0
    }

    if (msg.photo_remaining !== undefined) {
      resolved.photo_remaining = msg.photo_remaining;
    }
    else {
      resolved.photo_remaining = 0
    }

    return resolved;
    }
};

module.exports = CommonCommonStateMassStorageInfoRemainingListChanged;
