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

class Ardrone3PilotingStateSpeedChanged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.speedX = null;
      this.speedY = null;
      this.speedZ = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('speedX')) {
        this.speedX = initObj.speedX
      }
      else {
        this.speedX = 0.0;
      }
      if (initObj.hasOwnProperty('speedY')) {
        this.speedY = initObj.speedY
      }
      else {
        this.speedY = 0.0;
      }
      if (initObj.hasOwnProperty('speedZ')) {
        this.speedZ = initObj.speedZ
      }
      else {
        this.speedZ = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ardrone3PilotingStateSpeedChanged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [speedX]
    bufferOffset = _serializer.float32(obj.speedX, buffer, bufferOffset);
    // Serialize message field [speedY]
    bufferOffset = _serializer.float32(obj.speedY, buffer, bufferOffset);
    // Serialize message field [speedZ]
    bufferOffset = _serializer.float32(obj.speedZ, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ardrone3PilotingStateSpeedChanged
    let len;
    let data = new Ardrone3PilotingStateSpeedChanged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [speedX]
    data.speedX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speedY]
    data.speedY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speedZ]
    data.speedZ = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/Ardrone3PilotingStateSpeedChanged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a8b7ba33cedd9aff188b6d7cc81fcfab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Ardrone3PilotingStateSpeedChanged
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Drones speed changed.\n Expressed in the NED referential (North-East-Down).
    
    Header header
    
    # Speed relative to the North (when drone moves to the north, speed is &gt; 0) (in m/s)
    float32 speedX
    # Speed relative to the East (when drone moves to the east, speed is &gt; 0) (in m/s)
    float32 speedY
    # Speed on the z axis (when drone moves down, speed is &gt; 0) (in m/s)
    float32 speedZ
    
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
    const resolved = new Ardrone3PilotingStateSpeedChanged(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.speedX !== undefined) {
      resolved.speedX = msg.speedX;
    }
    else {
      resolved.speedX = 0.0
    }

    if (msg.speedY !== undefined) {
      resolved.speedY = msg.speedY;
    }
    else {
      resolved.speedY = 0.0
    }

    if (msg.speedZ !== undefined) {
      resolved.speedZ = msg.speedZ;
    }
    else {
      resolved.speedZ = 0.0
    }

    return resolved;
    }
};

module.exports = Ardrone3PilotingStateSpeedChanged;
