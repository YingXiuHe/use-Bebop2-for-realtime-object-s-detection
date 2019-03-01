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

class Ardrone3MediaRecordStateVideoStateChangedV2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.state = null;
      this.error = null;
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
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ardrone3MediaRecordStateVideoStateChangedV2
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.uint8(obj.error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ardrone3MediaRecordStateVideoStateChangedV2
    let len;
    let data = new Ardrone3MediaRecordStateVideoStateChangedV2(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
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
    return 'bebop_msgs/Ardrone3MediaRecordStateVideoStateChangedV2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a340391fac53d7779ead611c124980e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Ardrone3MediaRecordStateVideoStateChangedV2
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Video record state.
    
    Header header
    
    # State of device video recording
    uint8 state_stopped=0  # Video is stopped
    uint8 state_started=1  # Video is started
    uint8 state_notAvailable=2  # The video recording is not available
    uint8 state
    # Error to explain the state
    uint8 error_ok=0  # No Error
    uint8 error_unknown=1  # Unknown generic error
    uint8 error_camera_ko=2  # Video camera is out of order
    uint8 error_memoryFull=3  # Memory full ; cannot save one additional video
    uint8 error_lowBattery=4  # Battery is too low to start/keep recording.
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
    const resolved = new Ardrone3MediaRecordStateVideoStateChangedV2(null);
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
Ardrone3MediaRecordStateVideoStateChangedV2.Constants = {
  STATE_STOPPED: 0,
  STATE_STARTED: 1,
  STATE_NOTAVAILABLE: 2,
  ERROR_OK: 0,
  ERROR_UNKNOWN: 1,
  ERROR_CAMERA_KO: 2,
  ERROR_MEMORYFULL: 3,
  ERROR_LOWBATTERY: 4,
}

module.exports = Ardrone3MediaRecordStateVideoStateChangedV2;
