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

class CommonMavlinkStateMavlinkFilePlayingStateChanged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.state = null;
      this.filepath = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('filepath')) {
        this.filepath = initObj.filepath
      }
      else {
        this.filepath = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommonMavlinkStateMavlinkFilePlayingStateChanged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    // Serialize message field [filepath]
    bufferOffset = _serializer.string(obj.filepath, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonMavlinkStateMavlinkFilePlayingStateChanged
    let len;
    let data = new CommonMavlinkStateMavlinkFilePlayingStateChanged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [filepath]
    data.filepath = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.filepath.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/CommonMavlinkStateMavlinkFilePlayingStateChanged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1938cf62aa5e1b7b530a32681de3f4da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CommonMavlinkStateMavlinkFilePlayingStateChanged
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Playing state of a FlightPlan.
    
    Header header
    
    # State of the mavlink
    uint8 state_playing=0  # Mavlink file is playing
    uint8 state_stopped=1  # Mavlink file is stopped (arg filepath and type are useless in this state)
    uint8 state_paused=2  # Mavlink file is paused
    uint8 state_loaded=3  # Mavlink file is loaded (it will be played at take-off)
    uint8 state
    # flight plan file path from the mavlink ftp root
    string filepath
    # type of the played mavlink file
    uint8 type_flightPlan=0  # Mavlink file for FlightPlan
    uint8 type_mapMyHouse=1  # Mavlink file for MapMyHouse
    uint8 type
    
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
    const resolved = new CommonMavlinkStateMavlinkFilePlayingStateChanged(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.filepath !== undefined) {
      resolved.filepath = msg.filepath;
    }
    else {
      resolved.filepath = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

// Constants for message
CommonMavlinkStateMavlinkFilePlayingStateChanged.Constants = {
  STATE_PLAYING: 0,
  STATE_STOPPED: 1,
  STATE_PAUSED: 2,
  STATE_LOADED: 3,
  TYPE_FLIGHTPLAN: 0,
  TYPE_MAPMYHOUSE: 1,
}

module.exports = CommonMavlinkStateMavlinkFilePlayingStateChanged;
