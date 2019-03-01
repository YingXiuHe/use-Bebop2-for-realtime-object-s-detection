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

class Ardrone3AntiflickeringStateelectricFrequencyChanged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.frequency = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ardrone3AntiflickeringStateelectricFrequencyChanged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [frequency]
    bufferOffset = _serializer.uint8(obj.frequency, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ardrone3AntiflickeringStateelectricFrequencyChanged
    let len;
    let data = new Ardrone3AntiflickeringStateelectricFrequencyChanged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [frequency]
    data.frequency = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/Ardrone3AntiflickeringStateelectricFrequencyChanged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca3c0e18079a24e9b39ce000c8d70806';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Ardrone3AntiflickeringStateelectricFrequencyChanged
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Electric frequency.\n This piece of information is used for the antiflickering when the [AntiflickeringMode](#1-30-1) is set to *auto*.
    
    Header header
    
    # Type of the electric frequency
    uint8 frequency_fiftyHertz=0  # Electric frequency of the country is 50hz
    uint8 frequency_sixtyHertz=1  # Electric frequency of the country is 60hz
    uint8 frequency
    
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
    const resolved = new Ardrone3AntiflickeringStateelectricFrequencyChanged(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.frequency !== undefined) {
      resolved.frequency = msg.frequency;
    }
    else {
      resolved.frequency = 0
    }

    return resolved;
    }
};

// Constants for message
Ardrone3AntiflickeringStateelectricFrequencyChanged.Constants = {
  FREQUENCY_FIFTYHERTZ: 0,
  FREQUENCY_SIXTYHERTZ: 1,
}

module.exports = Ardrone3AntiflickeringStateelectricFrequencyChanged;
