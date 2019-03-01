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

class Ardrone3NetworkStateWifiScanListChanged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ssid = null;
      this.rssi = null;
      this.band = null;
      this.channel = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ssid')) {
        this.ssid = initObj.ssid
      }
      else {
        this.ssid = '';
      }
      if (initObj.hasOwnProperty('rssi')) {
        this.rssi = initObj.rssi
      }
      else {
        this.rssi = 0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ardrone3NetworkStateWifiScanListChanged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ssid]
    bufferOffset = _serializer.string(obj.ssid, buffer, bufferOffset);
    // Serialize message field [rssi]
    bufferOffset = _serializer.int16(obj.rssi, buffer, bufferOffset);
    // Serialize message field [band]
    bufferOffset = _serializer.uint8(obj.band, buffer, bufferOffset);
    // Serialize message field [channel]
    bufferOffset = _serializer.uint8(obj.channel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ardrone3NetworkStateWifiScanListChanged
    let len;
    let data = new Ardrone3NetworkStateWifiScanListChanged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ssid]
    data.ssid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rssi]
    data.rssi = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [band]
    data.band = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [channel]
    data.channel = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.ssid.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/Ardrone3NetworkStateWifiScanListChanged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '887b79816b1cfc1c69c34200f03104a8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Ardrone3NetworkStateWifiScanListChanged
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Wifi scan results.\n Please note that the list is not complete until you receive the event [WifiScanEnded](#1-14-1).
    
    Header header
    
    # SSID of the AP
    string ssid
    # RSSI of the AP in dbm (negative value)
    int16 rssi
    # The band : 2.4 GHz or 5 GHz
    uint8 band_2_4ghz=0  # 2.4 GHz band
    uint8 band_5ghz=1  # 5 GHz band
    uint8 band
    # Channel of the AP
    uint8 channel
    
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
    const resolved = new Ardrone3NetworkStateWifiScanListChanged(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ssid !== undefined) {
      resolved.ssid = msg.ssid;
    }
    else {
      resolved.ssid = ''
    }

    if (msg.rssi !== undefined) {
      resolved.rssi = msg.rssi;
    }
    else {
      resolved.rssi = 0
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

    return resolved;
    }
};

// Constants for message
Ardrone3NetworkStateWifiScanListChanged.Constants = {
  BAND_2_4GHZ: 0,
  BAND_5GHZ: 1,
}

module.exports = Ardrone3NetworkStateWifiScanListChanged;
