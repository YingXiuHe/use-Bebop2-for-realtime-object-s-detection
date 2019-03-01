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

class CommonCommonStateSensorsStatesListChanged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sensorName = null;
      this.sensorState = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sensorName')) {
        this.sensorName = initObj.sensorName
      }
      else {
        this.sensorName = 0;
      }
      if (initObj.hasOwnProperty('sensorState')) {
        this.sensorState = initObj.sensorState
      }
      else {
        this.sensorState = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommonCommonStateSensorsStatesListChanged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sensorName]
    bufferOffset = _serializer.uint8(obj.sensorName, buffer, bufferOffset);
    // Serialize message field [sensorState]
    bufferOffset = _serializer.uint8(obj.sensorState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonCommonStateSensorsStatesListChanged
    let len;
    let data = new CommonCommonStateSensorsStatesListChanged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensorName]
    data.sensorName = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sensorState]
    data.sensorState = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/CommonCommonStateSensorsStatesListChanged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '21324261f7a8c1805999cb90c3c5949b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CommonCommonStateSensorsStatesListChanged
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Sensors state list.
    
    Header header
    
    # Sensor name
    uint8 sensorName_IMU=0  # Inertial Measurement Unit sensor
    uint8 sensorName_barometer=1  # Barometer sensor
    uint8 sensorName_ultrasound=2  # Ultrasonic sensor
    uint8 sensorName_GPS=3  # GPS sensor
    uint8 sensorName_magnetometer=4  # Magnetometer sensor
    uint8 sensorName_vertical_camera=5  # Vertical Camera sensor
    uint8 sensorName
    # Sensor state (1 if the sensor is OK, 0 if the sensor is NOT OK)
    uint8 sensorState
    
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
    const resolved = new CommonCommonStateSensorsStatesListChanged(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sensorName !== undefined) {
      resolved.sensorName = msg.sensorName;
    }
    else {
      resolved.sensorName = 0
    }

    if (msg.sensorState !== undefined) {
      resolved.sensorState = msg.sensorState;
    }
    else {
      resolved.sensorState = 0
    }

    return resolved;
    }
};

// Constants for message
CommonCommonStateSensorsStatesListChanged.Constants = {
  SENSORNAME_IMU: 0,
  SENSORNAME_BAROMETER: 1,
  SENSORNAME_ULTRASOUND: 2,
  SENSORNAME_GPS: 3,
  SENSORNAME_MAGNETOMETER: 4,
  SENSORNAME_VERTICAL_CAMERA: 5,
}

module.exports = CommonCommonStateSensorsStatesListChanged;
