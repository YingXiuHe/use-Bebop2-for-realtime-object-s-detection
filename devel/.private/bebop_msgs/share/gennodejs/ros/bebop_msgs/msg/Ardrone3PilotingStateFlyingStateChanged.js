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

class Ardrone3PilotingStateFlyingStateChanged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.state = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ardrone3PilotingStateFlyingStateChanged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ardrone3PilotingStateFlyingStateChanged
    let len;
    let data = new Ardrone3PilotingStateFlyingStateChanged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/Ardrone3PilotingStateFlyingStateChanged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f628b761a9125ace909b8b2c789eb09e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Ardrone3PilotingStateFlyingStateChanged
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Flying state.
    
    Header header
    
    # Drone flying state
    uint8 state_landed=0  # Landed state
    uint8 state_takingoff=1  # Taking off state
    uint8 state_hovering=2  # Hovering / Circling (for fixed wings) state
    uint8 state_flying=3  # Flying state
    uint8 state_landing=4  # Landing state
    uint8 state_emergency=5  # Emergency state
    uint8 state_usertakeoff=6  # User take off state. Waiting for user action to take off.
    uint8 state_motor_ramping=7  # Motor ramping state (for fixed wings).
    uint8 state_emergency_landing=8  # Emergency landing state. Drone autopilot has detected defective sensor(s). Only Yaw argument in PCMD is taken into account. All others flying commands are ignored.
    uint8 state
    
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
    const resolved = new Ardrone3PilotingStateFlyingStateChanged(null);
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

    return resolved;
    }
};

// Constants for message
Ardrone3PilotingStateFlyingStateChanged.Constants = {
  STATE_LANDED: 0,
  STATE_TAKINGOFF: 1,
  STATE_HOVERING: 2,
  STATE_FLYING: 3,
  STATE_LANDING: 4,
  STATE_EMERGENCY: 5,
  STATE_USERTAKEOFF: 6,
  STATE_MOTOR_RAMPING: 7,
  STATE_EMERGENCY_LANDING: 8,
}

module.exports = Ardrone3PilotingStateFlyingStateChanged;
