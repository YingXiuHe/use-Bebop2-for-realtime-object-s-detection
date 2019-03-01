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

class CommonCalibrationStatePitotCalibrationStateChanged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.state = null;
      this.lastError = null;
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
      if (initObj.hasOwnProperty('lastError')) {
        this.lastError = initObj.lastError
      }
      else {
        this.lastError = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommonCalibrationStatePitotCalibrationStateChanged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    // Serialize message field [lastError]
    bufferOffset = _serializer.uint8(obj.lastError, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonCalibrationStatePitotCalibrationStateChanged
    let len;
    let data = new CommonCalibrationStatePitotCalibrationStateChanged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lastError]
    data.lastError = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/CommonCalibrationStatePitotCalibrationStateChanged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d222c31db9ca732c48a9aa11e2f3afa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CommonCalibrationStatePitotCalibrationStateChanged
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: 
    
    Header header
    
    # State of pitot calibration
    uint8 state_done=0  # Calibration is ok
    uint8 state_ready=1  # Calibration is started, waiting user action
    uint8 state_in_progress=2  # Calibration is in progress
    uint8 state_required=3  # Calibration is required
    uint8 state
    # lastError : 1 if an error occured and 0 if not
    uint8 lastError
    
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
    const resolved = new CommonCalibrationStatePitotCalibrationStateChanged(null);
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

    if (msg.lastError !== undefined) {
      resolved.lastError = msg.lastError;
    }
    else {
      resolved.lastError = 0
    }

    return resolved;
    }
};

// Constants for message
CommonCalibrationStatePitotCalibrationStateChanged.Constants = {
  STATE_DONE: 0,
  STATE_READY: 1,
  STATE_IN_PROGRESS: 2,
  STATE_REQUIRED: 3,
}

module.exports = CommonCalibrationStatePitotCalibrationStateChanged;
