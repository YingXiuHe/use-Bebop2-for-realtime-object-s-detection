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

class Ardrone3PilotingStateNavigateHomeStateChanged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.state = null;
      this.reason = null;
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
      if (initObj.hasOwnProperty('reason')) {
        this.reason = initObj.reason
      }
      else {
        this.reason = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ardrone3PilotingStateNavigateHomeStateChanged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    // Serialize message field [reason]
    bufferOffset = _serializer.uint8(obj.reason, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ardrone3PilotingStateNavigateHomeStateChanged
    let len;
    let data = new Ardrone3PilotingStateNavigateHomeStateChanged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reason]
    data.reason = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/Ardrone3PilotingStateNavigateHomeStateChanged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a0ed1aa9e290b08479307e09890d8141';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Ardrone3PilotingStateNavigateHomeStateChanged
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Return home state.\n Availability is related to gps fix, magnetometer calibration.
    
    Header header
    
    # State of navigate home
    uint8 state_available=0  # Navigate home is available
    uint8 state_inProgress=1  # Navigate home is in progress
    uint8 state_unavailable=2  # Navigate home is not available
    uint8 state_pending=3  # Navigate home has been received, but its process is pending
    uint8 state
    # Reason of the state
    uint8 reason_userRequest=0  # User requested a navigate home (available-&gt;inProgress)
    uint8 reason_connectionLost=1  # Connection between controller and product lost (available-&gt;inProgress)
    uint8 reason_lowBattery=2  # Low battery occurred (available-&gt;inProgress)
    uint8 reason_finished=3  # Navigate home is finished (inProgress-&gt;available)
    uint8 reason_stopped=4  # Navigate home has been stopped (inProgress-&gt;available)
    uint8 reason_disabled=5  # Navigate home disabled by product (inProgress-&gt;unavailable or available-&gt;unavailable)
    uint8 reason_enabled=6  # Navigate home enabled by product (unavailable-&gt;available)
    uint8 reason
    
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
    const resolved = new Ardrone3PilotingStateNavigateHomeStateChanged(null);
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

    if (msg.reason !== undefined) {
      resolved.reason = msg.reason;
    }
    else {
      resolved.reason = 0
    }

    return resolved;
    }
};

// Constants for message
Ardrone3PilotingStateNavigateHomeStateChanged.Constants = {
  STATE_AVAILABLE: 0,
  STATE_INPROGRESS: 1,
  STATE_UNAVAILABLE: 2,
  STATE_PENDING: 3,
  REASON_USERREQUEST: 0,
  REASON_CONNECTIONLOST: 1,
  REASON_LOWBATTERY: 2,
  REASON_FINISHED: 3,
  REASON_STOPPED: 4,
  REASON_DISABLED: 5,
  REASON_ENABLED: 6,
}

module.exports = Ardrone3PilotingStateNavigateHomeStateChanged;
