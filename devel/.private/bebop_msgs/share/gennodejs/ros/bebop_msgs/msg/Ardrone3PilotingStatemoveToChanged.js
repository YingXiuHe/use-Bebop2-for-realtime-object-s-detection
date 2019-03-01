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

class Ardrone3PilotingStatemoveToChanged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.latitude = null;
      this.longitude = null;
      this.altitude = null;
      this.orientation_mode = null;
      this.heading = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('orientation_mode')) {
        this.orientation_mode = initObj.orientation_mode
      }
      else {
        this.orientation_mode = 0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ardrone3PilotingStatemoveToChanged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [orientation_mode]
    bufferOffset = _serializer.uint8(obj.orientation_mode, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float32(obj.heading, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ardrone3PilotingStatemoveToChanged
    let len;
    let data = new Ardrone3PilotingStatemoveToChanged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [orientation_mode]
    data.orientation_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/Ardrone3PilotingStatemoveToChanged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f356580a128658358cde541e12e3218b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Ardrone3PilotingStatemoveToChanged
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: The drone moves or moved to a given location.
    
    Header header
    
    # Latitude of the location (in degrees) to reach
    float64 latitude
    # Longitude of the location (in degrees) to reach
    float64 longitude
    # Altitude above sea level (in m) to reach
    float64 altitude
    # Orientation mode of the move to
    uint8 orientation_mode_NONE=0  # The drone wont change its orientation
    uint8 orientation_mode_TO_TARGET=1  # The drone will make a rotation to look in direction of the given location
    uint8 orientation_mode_HEADING_START=2  # The drone will orientate itself to the given heading before moving to the location
    uint8 orientation_mode_HEADING_DURING=3  # The drone will orientate itself to the given heading while moving to the location
    uint8 orientation_mode
    # Heading (relative to the North in degrees). This value is only used if the orientation mode is HEADING_START or HEADING_DURING
    float32 heading
    # Status of the move to
    uint8 status_RUNNING=0  # The drone is actually flying to the given position
    uint8 status_DONE=1  # The drone has reached the target
    uint8 status_CANCELED=2  # The move to has been canceled, either by a new moveTo command or by a CancelMoveTo command.
    uint8 status_ERROR=3  # The move to has not been finished or started because of an error.
    uint8 status
    
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
    const resolved = new Ardrone3PilotingStatemoveToChanged(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.orientation_mode !== undefined) {
      resolved.orientation_mode = msg.orientation_mode;
    }
    else {
      resolved.orientation_mode = 0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

// Constants for message
Ardrone3PilotingStatemoveToChanged.Constants = {
  ORIENTATION_MODE_NONE: 0,
  ORIENTATION_MODE_TO_TARGET: 1,
  ORIENTATION_MODE_HEADING_START: 2,
  ORIENTATION_MODE_HEADING_DURING: 3,
  STATUS_RUNNING: 0,
  STATUS_DONE: 1,
  STATUS_CANCELED: 2,
  STATUS_ERROR: 3,
}

module.exports = Ardrone3PilotingStatemoveToChanged;
