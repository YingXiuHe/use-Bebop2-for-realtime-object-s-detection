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

class Ardrone3NetworkStateWifiAuthChannelListChanged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.band = null;
      this.channel = null;
      this.in_or_out = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('band')) {
        this.band = initObj.band
      }
      else {
        this.band = 0;
      }
      if (initObj.hasOwnProperty('channel')) {
        this.channel = initObj.channel
      }
      else {
        this.channel = 0;
      }
      if (initObj.hasOwnProperty('in_or_out')) {
        this.in_or_out = initObj.in_or_out
      }
      else {
        this.in_or_out = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ardrone3NetworkStateWifiAuthChannelListChanged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [band]
    bufferOffset = _serializer.uint8(obj.band, buffer, bufferOffset);
    // Serialize message field [channel]
    bufferOffset = _serializer.uint8(obj.channel, buffer, bufferOffset);
    // Serialize message field [in_or_out]
    bufferOffset = _serializer.uint8(obj.in_or_out, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ardrone3NetworkStateWifiAuthChannelListChanged
    let len;
    let data = new Ardrone3NetworkStateWifiAuthChannelListChanged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [band]
    data.band = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [channel]
    data.channel = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [in_or_out]
    data.in_or_out = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/Ardrone3NetworkStateWifiAuthChannelListChanged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c7b1ccebf54f52f3836dbbe717c16c94';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Ardrone3NetworkStateWifiAuthChannelListChanged
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Available wifi channels.\n Please note that the list is not complete until you receive the event [AvailableWifiChannelsCompleted](#1-14-3).
    
    Header header
    
    # The band of this channel : 2.4 GHz or 5 GHz
    uint8 band_2_4ghz=0  # 2.4 GHz band
    uint8 band_5ghz=1  # 5 GHz band
    uint8 band
    # The authorized channel.
    uint8 channel
    # Bit 0 is 1 if channel is authorized outside (0 otherwise) ; Bit 1 is 1 if channel is authorized inside (0 otherwise)
    uint8 in_or_out
    
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
    const resolved = new Ardrone3NetworkStateWifiAuthChannelListChanged(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.band !== undefined) {
      resolved.band = msg.band;
    }
    else {
      resolved.band = 0
    }

    if (msg.channel !== undefined) {
      resolved.channel = msg.channel;
    }
    else {
      resolved.channel = 0
    }

    if (msg.in_or_out !== undefined) {
      resolved.in_or_out = msg.in_or_out;
    }
    else {
      resolved.in_or_out = 0
    }

    return resolved;
    }
};

// Constants for message
Ardrone3NetworkStateWifiAuthChannelListChanged.Constants = {
  BAND_2_4GHZ: 0,
  BAND_5GHZ: 1,
}

module.exports = Ardrone3NetworkStateWifiAuthChannelListChanged;
