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

class CommonAnimationsStateList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.anim = null;
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
      if (initObj.hasOwnProperty('anim')) {
        this.anim = initObj.anim
      }
      else {
        this.anim = 0;
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
    // Serializes a message object of type CommonAnimationsStateList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [anim]
    bufferOffset = _serializer.uint8(obj.anim, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.uint8(obj.error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonAnimationsStateList
    let len;
    let data = new CommonAnimationsStateList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [anim]
    data.anim = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/CommonAnimationsStateList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c89b289a8f935a33f0451effae3f9508';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CommonAnimationsStateList
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Paramaterless animations state list.
    
    Header header
    
    # Animation type.
    uint8 anim_HEADLIGHTS_FLASH=0  # Flash headlights.
    uint8 anim_HEADLIGHTS_BLINK=1  # Blink headlights.
    uint8 anim_HEADLIGHTS_OSCILLATION=2  # Oscillating headlights.
    uint8 anim_SPIN=3  # Spin animation.
    uint8 anim_TAP=4  # Tap animation.
    uint8 anim_SLOW_SHAKE=5  # Slow shake animation.
    uint8 anim_METRONOME=6  # Metronome animation.
    uint8 anim_ONDULATION=7  # Standing dance animation.
    uint8 anim_SPIN_JUMP=8  # Spin jump animation.
    uint8 anim_SPIN_TO_POSTURE=9  # Spin that end in standing posture, or in jumper if it was standing animation.
    uint8 anim_SPIRAL=10  # Spiral animation.
    uint8 anim_SLALOM=11  # Slalom animation.
    uint8 anim_BOOST=12  # Boost animation.
    uint8 anim_LOOPING=13  # Make a looping. (Only for WingX)
    uint8 anim_BARREL_ROLL_180_RIGHT=14  # Make a barrel roll of 180 degree turning on right. (Only for WingX)
    uint8 anim_BARREL_ROLL_180_LEFT=15  # Make a barrel roll of 180 degree turning on left. (Only for WingX)
    uint8 anim_BACKSWAP=16  # Put the drone upside down. (Only for WingX)
    uint8 anim
    # State of the animation
    uint8 state_stopped=0  # animation is stopped
    uint8 state_started=1  # animation is started
    uint8 state_notAvailable=2  # The animation is not available
    uint8 state
    # Error to explain the state
    uint8 error_ok=0  # No Error
    uint8 error_unknown=1  # Unknown generic error
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
    const resolved = new CommonAnimationsStateList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.anim !== undefined) {
      resolved.anim = msg.anim;
    }
    else {
      resolved.anim = 0
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
CommonAnimationsStateList.Constants = {
  ANIM_HEADLIGHTS_FLASH: 0,
  ANIM_HEADLIGHTS_BLINK: 1,
  ANIM_HEADLIGHTS_OSCILLATION: 2,
  ANIM_SPIN: 3,
  ANIM_TAP: 4,
  ANIM_SLOW_SHAKE: 5,
  ANIM_METRONOME: 6,
  ANIM_ONDULATION: 7,
  ANIM_SPIN_JUMP: 8,
  ANIM_SPIN_TO_POSTURE: 9,
  ANIM_SPIRAL: 10,
  ANIM_SLALOM: 11,
  ANIM_BOOST: 12,
  ANIM_LOOPING: 13,
  ANIM_BARREL_ROLL_180_RIGHT: 14,
  ANIM_BARREL_ROLL_180_LEFT: 15,
  ANIM_BACKSWAP: 16,
  STATE_STOPPED: 0,
  STATE_STARTED: 1,
  STATE_NOTAVAILABLE: 2,
  ERROR_OK: 0,
  ERROR_UNKNOWN: 1,
}

module.exports = CommonAnimationsStateList;
