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

class CommonCommonStateMassStorageContentForCurrentRun {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mass_storage_id = null;
      this.nbPhotos = null;
      this.nbVideos = null;
      this.nbRawPhotos = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mass_storage_id')) {
        this.mass_storage_id = initObj.mass_storage_id
      }
      else {
        this.mass_storage_id = 0;
      }
      if (initObj.hasOwnProperty('nbPhotos')) {
        this.nbPhotos = initObj.nbPhotos
      }
      else {
        this.nbPhotos = 0;
      }
      if (initObj.hasOwnProperty('nbVideos')) {
        this.nbVideos = initObj.nbVideos
      }
      else {
        this.nbVideos = 0;
      }
      if (initObj.hasOwnProperty('nbRawPhotos')) {
        this.nbRawPhotos = initObj.nbRawPhotos
      }
      else {
        this.nbRawPhotos = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommonCommonStateMassStorageContentForCurrentRun
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mass_storage_id]
    bufferOffset = _serializer.uint8(obj.mass_storage_id, buffer, bufferOffset);
    // Serialize message field [nbPhotos]
    bufferOffset = _serializer.uint16(obj.nbPhotos, buffer, bufferOffset);
    // Serialize message field [nbVideos]
    bufferOffset = _serializer.uint16(obj.nbVideos, buffer, bufferOffset);
    // Serialize message field [nbRawPhotos]
    bufferOffset = _serializer.uint16(obj.nbRawPhotos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonCommonStateMassStorageContentForCurrentRun
    let len;
    let data = new CommonCommonStateMassStorageContentForCurrentRun(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mass_storage_id]
    data.mass_storage_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [nbPhotos]
    data.nbPhotos = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [nbVideos]
    data.nbVideos = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [nbRawPhotos]
    data.nbRawPhotos = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/CommonCommonStateMassStorageContentForCurrentRun';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a6aacd7db5d55f185b1fbb8276f7019f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CommonCommonStateMassStorageContentForCurrentRun
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Mass storage content for current run.\n Only counts the files related to the current run (see [RunId](#0-30-0))
    
    Header header
    
    # Mass storage id (unique)
    uint8 mass_storage_id
    # Number of photos (does not include raw photos)
    uint16 nbPhotos
    # Number of videos
    uint16 nbVideos
    # Number of raw photos
    uint16 nbRawPhotos
    
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
    const resolved = new CommonCommonStateMassStorageContentForCurrentRun(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mass_storage_id !== undefined) {
      resolved.mass_storage_id = msg.mass_storage_id;
    }
    else {
      resolved.mass_storage_id = 0
    }

    if (msg.nbPhotos !== undefined) {
      resolved.nbPhotos = msg.nbPhotos;
    }
    else {
      resolved.nbPhotos = 0
    }

    if (msg.nbVideos !== undefined) {
      resolved.nbVideos = msg.nbVideos;
    }
    else {
      resolved.nbVideos = 0
    }

    if (msg.nbRawPhotos !== undefined) {
      resolved.nbRawPhotos = msg.nbRawPhotos;
    }
    else {
      resolved.nbRawPhotos = 0
    }

    return resolved;
    }
};

module.exports = CommonCommonStateMassStorageContentForCurrentRun;
