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

class Ardrone3AccessoryStateConnectedAccessories {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.accessory_type = null;
      this.uid = null;
      this.swVersion = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('accessory_type')) {
        this.accessory_type = initObj.accessory_type
      }
      else {
        this.accessory_type = 0;
      }
      if (initObj.hasOwnProperty('uid')) {
        this.uid = initObj.uid
      }
      else {
        this.uid = '';
      }
      if (initObj.hasOwnProperty('swVersion')) {
        this.swVersion = initObj.swVersion
      }
      else {
        this.swVersion = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ardrone3AccessoryStateConnectedAccessories
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [accessory_type]
    bufferOffset = _serializer.uint8(obj.accessory_type, buffer, bufferOffset);
    // Serialize message field [uid]
    bufferOffset = _serializer.string(obj.uid, buffer, bufferOffset);
    // Serialize message field [swVersion]
    bufferOffset = _serializer.string(obj.swVersion, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ardrone3AccessoryStateConnectedAccessories
    let len;
    let data = new Ardrone3AccessoryStateConnectedAccessories(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [accessory_type]
    data.accessory_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [uid]
    data.uid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [swVersion]
    data.swVersion = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.uid.length;
    length += object.swVersion.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/Ardrone3AccessoryStateConnectedAccessories';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c105add6586231e3d438d1252e04c7e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Ardrone3AccessoryStateConnectedAccessories
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: List of all connected accessories. This event presents the list of all connected accessories. To actually use the component, use the component dedicated feature.
    
    Header header
    
    # Id of the accessory for the session.
    uint8 id
    # Accessory type
    uint8 accessory_type_sequoia=0  # Parrot Sequoia (multispectral camera for agriculture)
    uint8 accessory_type_unknownaccessory_1=1  # UNKNOWNACCESSORY_1 camera (thermal+rgb camera)
    uint8 accessory_type
    # Unique Id of the accessory. This id is unique by accessory_type.
    string uid
    # Software Version of the accessory.
    string swVersion
    
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
    const resolved = new Ardrone3AccessoryStateConnectedAccessories(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.accessory_type !== undefined) {
      resolved.accessory_type = msg.accessory_type;
    }
    else {
      resolved.accessory_type = 0
    }

    if (msg.uid !== undefined) {
      resolved.uid = msg.uid;
    }
    else {
      resolved.uid = ''
    }

    if (msg.swVersion !== undefined) {
      resolved.swVersion = msg.swVersion;
    }
    else {
      resolved.swVersion = ''
    }

    return resolved;
    }
};

// Constants for message
Ardrone3AccessoryStateConnectedAccessories.Constants = {
  ACCESSORY_TYPE_SEQUOIA: 0,
  ACCESSORY_TYPE_UNKNOWNACCESSORY_1: 1,
}

module.exports = Ardrone3AccessoryStateConnectedAccessories;
