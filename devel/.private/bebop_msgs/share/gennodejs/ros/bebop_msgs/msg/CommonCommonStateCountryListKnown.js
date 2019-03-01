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

class CommonCommonStateCountryListKnown {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.listFlags = null;
      this.countryCodes = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('listFlags')) {
        this.listFlags = initObj.listFlags
      }
      else {
        this.listFlags = 0;
      }
      if (initObj.hasOwnProperty('countryCodes')) {
        this.countryCodes = initObj.countryCodes
      }
      else {
        this.countryCodes = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommonCommonStateCountryListKnown
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [listFlags]
    bufferOffset = _serializer.uint8(obj.listFlags, buffer, bufferOffset);
    // Serialize message field [countryCodes]
    bufferOffset = _serializer.string(obj.countryCodes, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonCommonStateCountryListKnown
    let len;
    let data = new CommonCommonStateCountryListKnown(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [listFlags]
    data.listFlags = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [countryCodes]
    data.countryCodes = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.countryCodes.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/CommonCommonStateCountryListKnown';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86539e5f9157f2f0855dd0d95cb534f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CommonCommonStateCountryListKnown
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: List of countries known by the drone.
    
    Header header
    
    # List entry attribute Bitfield. 0x01: First: indicate its the first element of the list. 0x02: Last: indicate its the last element of the list. 0x04: Empty: indicate the list is empty (implies First/Last). All other arguments should be ignored.
    uint8 listFlags
    # Following of country code with ISO 3166 format, separated by ;. Be careful of the command size allowed by the network used. If necessary, split the list in several commands.
    string countryCodes
    
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
    const resolved = new CommonCommonStateCountryListKnown(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.listFlags !== undefined) {
      resolved.listFlags = msg.listFlags;
    }
    else {
      resolved.listFlags = 0
    }

    if (msg.countryCodes !== undefined) {
      resolved.countryCodes = msg.countryCodes;
    }
    else {
      resolved.countryCodes = ''
    }

    return resolved;
    }
};

module.exports = CommonCommonStateCountryListKnown;
