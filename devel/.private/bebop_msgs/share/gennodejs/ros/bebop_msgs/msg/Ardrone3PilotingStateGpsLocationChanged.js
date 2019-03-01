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

class Ardrone3PilotingStateGpsLocationChanged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.latitude = null;
      this.longitude = null;
      this.altitude = null;
      this.latitude_accuracy = null;
      this.longitude_accuracy = null;
      this.altitude_accuracy = null;
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
      if (initObj.hasOwnProperty('latitude_accuracy')) {
        this.latitude_accuracy = initObj.latitude_accuracy
      }
      else {
        this.latitude_accuracy = 0;
      }
      if (initObj.hasOwnProperty('longitude_accuracy')) {
        this.longitude_accuracy = initObj.longitude_accuracy
      }
      else {
        this.longitude_accuracy = 0;
      }
      if (initObj.hasOwnProperty('altitude_accuracy')) {
        this.altitude_accuracy = initObj.altitude_accuracy
      }
      else {
        this.altitude_accuracy = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ardrone3PilotingStateGpsLocationChanged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [latitude_accuracy]
    bufferOffset = _serializer.int8(obj.latitude_accuracy, buffer, bufferOffset);
    // Serialize message field [longitude_accuracy]
    bufferOffset = _serializer.int8(obj.longitude_accuracy, buffer, bufferOffset);
    // Serialize message field [altitude_accuracy]
    bufferOffset = _serializer.int8(obj.altitude_accuracy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ardrone3PilotingStateGpsLocationChanged
    let len;
    let data = new Ardrone3PilotingStateGpsLocationChanged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude_accuracy]
    data.latitude_accuracy = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [longitude_accuracy]
    data.longitude_accuracy = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [altitude_accuracy]
    data.altitude_accuracy = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 27;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/Ardrone3PilotingStateGpsLocationChanged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ac3eedcc2193887dd8d2257bf807fbae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Ardrone3PilotingStateGpsLocationChanged
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Drones location changed.\n This event is meant to replace [PositionChanged](#1-4-4).
    
    Header header
    
    # Latitude location in decimal degrees (500.0 if not available)
    float64 latitude
    # Longitude location in decimal degrees (500.0 if not available)
    float64 longitude
    # Altitude location in meters.
    float64 altitude
    # Latitude location error in meters (1 sigma/standard deviation) -1 if not available.
    int8 latitude_accuracy
    # Longitude location error in meters (1 sigma/standard deviation) -1 if not available.
    int8 longitude_accuracy
    # Altitude location error in meters (1 sigma/standard deviation) -1 if not available.
    int8 altitude_accuracy
    
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
    const resolved = new Ardrone3PilotingStateGpsLocationChanged(null);
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

    if (msg.latitude_accuracy !== undefined) {
      resolved.latitude_accuracy = msg.latitude_accuracy;
    }
    else {
      resolved.latitude_accuracy = 0
    }

    if (msg.longitude_accuracy !== undefined) {
      resolved.longitude_accuracy = msg.longitude_accuracy;
    }
    else {
      resolved.longitude_accuracy = 0
    }

    if (msg.altitude_accuracy !== undefined) {
      resolved.altitude_accuracy = msg.altitude_accuracy;
    }
    else {
      resolved.altitude_accuracy = 0
    }

    return resolved;
    }
};

module.exports = Ardrone3PilotingStateGpsLocationChanged;
