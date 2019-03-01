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

class Ardrone3CameraStateVelocityRange {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.max_tilt = null;
      this.max_pan = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('max_tilt')) {
        this.max_tilt = initObj.max_tilt
      }
      else {
        this.max_tilt = 0.0;
      }
      if (initObj.hasOwnProperty('max_pan')) {
        this.max_pan = initObj.max_pan
      }
      else {
        this.max_pan = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ardrone3CameraStateVelocityRange
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [max_tilt]
    bufferOffset = _serializer.float32(obj.max_tilt, buffer, bufferOffset);
    // Serialize message field [max_pan]
    bufferOffset = _serializer.float32(obj.max_pan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ardrone3CameraStateVelocityRange
    let len;
    let data = new Ardrone3CameraStateVelocityRange(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_tilt]
    data.max_tilt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_pan]
    data.max_pan = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/Ardrone3CameraStateVelocityRange';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cda98074fc63d3bb789505d7a068cced';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Ardrone3CameraStateVelocityRange
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Camera Orientation velocity limits.
    
    Header header
    
    # Absolute max tilt velocity [deg/s]
    float32 max_tilt
    # Absolute max pan velocity [deg/s]
    float32 max_pan
    
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
    const resolved = new Ardrone3CameraStateVelocityRange(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.max_tilt !== undefined) {
      resolved.max_tilt = msg.max_tilt;
    }
    else {
      resolved.max_tilt = 0.0
    }

    if (msg.max_pan !== undefined) {
      resolved.max_pan = msg.max_pan;
    }
    else {
      resolved.max_pan = 0.0
    }

    return resolved;
    }
};

module.exports = Ardrone3CameraStateVelocityRange;
