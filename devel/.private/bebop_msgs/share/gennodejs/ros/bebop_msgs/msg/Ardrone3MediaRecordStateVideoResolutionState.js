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

class Ardrone3MediaRecordStateVideoResolutionState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.streaming = null;
      this.recording = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('streaming')) {
        this.streaming = initObj.streaming
      }
      else {
        this.streaming = 0;
      }
      if (initObj.hasOwnProperty('recording')) {
        this.recording = initObj.recording
      }
      else {
        this.recording = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ardrone3MediaRecordStateVideoResolutionState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [streaming]
    bufferOffset = _serializer.uint8(obj.streaming, buffer, bufferOffset);
    // Serialize message field [recording]
    bufferOffset = _serializer.uint8(obj.recording, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ardrone3MediaRecordStateVideoResolutionState
    let len;
    let data = new Ardrone3MediaRecordStateVideoResolutionState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [streaming]
    data.streaming = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [recording]
    data.recording = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/Ardrone3MediaRecordStateVideoResolutionState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '478002c2ec614a227f494865922fd580';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Ardrone3MediaRecordStateVideoResolutionState
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Video resolution.\n Informs about streaming and recording video resolutions.\n Note that this is only an indication about what the resolution should be. To know the real resolution, you should get it from the frame.
    
    Header header
    
    # Streaming resolution
    uint8 streaming_res360p=0  # 360p resolution.
    uint8 streaming_res480p=1  # 480p resolution.
    uint8 streaming_res720p=2  # 720p resolution.
    uint8 streaming_res1080p=3  # 1080p resolution.
    uint8 streaming
    # Recording resolution
    uint8 recording_res360p=0  # 360p resolution.
    uint8 recording_res480p=1  # 480p resolution.
    uint8 recording_res720p=2  # 720p resolution.
    uint8 recording_res1080p=3  # 1080p resolution.
    uint8 recording
    
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
    const resolved = new Ardrone3MediaRecordStateVideoResolutionState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.streaming !== undefined) {
      resolved.streaming = msg.streaming;
    }
    else {
      resolved.streaming = 0
    }

    if (msg.recording !== undefined) {
      resolved.recording = msg.recording;
    }
    else {
      resolved.recording = 0
    }

    return resolved;
    }
};

// Constants for message
Ardrone3MediaRecordStateVideoResolutionState.Constants = {
  STREAMING_RES360P: 0,
  STREAMING_RES480P: 1,
  STREAMING_RES720P: 2,
  STREAMING_RES1080P: 3,
  RECORDING_RES360P: 0,
  RECORDING_RES480P: 1,
  RECORDING_RES720P: 2,
  RECORDING_RES1080P: 3,
}

module.exports = Ardrone3MediaRecordStateVideoResolutionState;
