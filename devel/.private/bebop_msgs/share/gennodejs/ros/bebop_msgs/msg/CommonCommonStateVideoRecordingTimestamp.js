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

class CommonCommonStateVideoRecordingTimestamp {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.startTimestamp = null;
      this.stopTimestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('startTimestamp')) {
        this.startTimestamp = initObj.startTimestamp
      }
      else {
        this.startTimestamp = 0;
      }
      if (initObj.hasOwnProperty('stopTimestamp')) {
        this.stopTimestamp = initObj.stopTimestamp
      }
      else {
        this.stopTimestamp = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommonCommonStateVideoRecordingTimestamp
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [startTimestamp]
    bufferOffset = _serializer.uint64(obj.startTimestamp, buffer, bufferOffset);
    // Serialize message field [stopTimestamp]
    bufferOffset = _serializer.uint64(obj.stopTimestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonCommonStateVideoRecordingTimestamp
    let len;
    let data = new CommonCommonStateVideoRecordingTimestamp(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [startTimestamp]
    data.startTimestamp = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [stopTimestamp]
    data.stopTimestamp = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/CommonCommonStateVideoRecordingTimestamp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2af0a016042e73c407f0fbf66360342c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CommonCommonStateVideoRecordingTimestamp
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Current or last video recording timestamp.\n Timestamp in milliseconds since 00:00:00 UTC on 1 January 1970.\n **Please note that values dont persist after drone reboot**
    
    Header header
    
    # Timestamp in milliseconds since 00:00:00 UTC on 1 January 1970.
    uint64 startTimestamp
    # Timestamp in milliseconds since 00:00:00 UTC on 1 January 1970. 0 mean that video is still recording.
    uint64 stopTimestamp
    
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
    const resolved = new CommonCommonStateVideoRecordingTimestamp(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.startTimestamp !== undefined) {
      resolved.startTimestamp = msg.startTimestamp;
    }
    else {
      resolved.startTimestamp = 0
    }

    if (msg.stopTimestamp !== undefined) {
      resolved.stopTimestamp = msg.stopTimestamp;
    }
    else {
      resolved.stopTimestamp = 0
    }

    return resolved;
    }
};

module.exports = CommonCommonStateVideoRecordingTimestamp;
