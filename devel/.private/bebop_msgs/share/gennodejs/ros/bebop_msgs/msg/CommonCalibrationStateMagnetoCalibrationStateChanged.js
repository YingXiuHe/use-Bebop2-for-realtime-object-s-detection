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

class CommonCalibrationStateMagnetoCalibrationStateChanged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.xAxisCalibration = null;
      this.yAxisCalibration = null;
      this.zAxisCalibration = null;
      this.calibrationFailed = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('xAxisCalibration')) {
        this.xAxisCalibration = initObj.xAxisCalibration
      }
      else {
        this.xAxisCalibration = 0;
      }
      if (initObj.hasOwnProperty('yAxisCalibration')) {
        this.yAxisCalibration = initObj.yAxisCalibration
      }
      else {
        this.yAxisCalibration = 0;
      }
      if (initObj.hasOwnProperty('zAxisCalibration')) {
        this.zAxisCalibration = initObj.zAxisCalibration
      }
      else {
        this.zAxisCalibration = 0;
      }
      if (initObj.hasOwnProperty('calibrationFailed')) {
        this.calibrationFailed = initObj.calibrationFailed
      }
      else {
        this.calibrationFailed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommonCalibrationStateMagnetoCalibrationStateChanged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [xAxisCalibration]
    bufferOffset = _serializer.uint8(obj.xAxisCalibration, buffer, bufferOffset);
    // Serialize message field [yAxisCalibration]
    bufferOffset = _serializer.uint8(obj.yAxisCalibration, buffer, bufferOffset);
    // Serialize message field [zAxisCalibration]
    bufferOffset = _serializer.uint8(obj.zAxisCalibration, buffer, bufferOffset);
    // Serialize message field [calibrationFailed]
    bufferOffset = _serializer.uint8(obj.calibrationFailed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonCalibrationStateMagnetoCalibrationStateChanged
    let len;
    let data = new CommonCalibrationStateMagnetoCalibrationStateChanged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [xAxisCalibration]
    data.xAxisCalibration = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [yAxisCalibration]
    data.yAxisCalibration = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [zAxisCalibration]
    data.zAxisCalibration = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [calibrationFailed]
    data.calibrationFailed = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/CommonCalibrationStateMagnetoCalibrationStateChanged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89c04aa89f066c20fb00b541abd28d8c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CommonCalibrationStateMagnetoCalibrationStateChanged
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Magneto calib process axis state.
    
    Header header
    
    # State of the x axis (roll) calibration : 1 if calibration is done, 0 otherwise
    uint8 xAxisCalibration
    # State of the y axis (pitch) calibration : 1 if calibration is done, 0 otherwise
    uint8 yAxisCalibration
    # State of the z axis (yaw) calibration : 1 if calibration is done, 0 otherwise
    uint8 zAxisCalibration
    # 1 if calibration has failed, 0 otherwise. If this arg is 1, consider all previous arg as 0
    uint8 calibrationFailed
    
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
    const resolved = new CommonCalibrationStateMagnetoCalibrationStateChanged(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.xAxisCalibration !== undefined) {
      resolved.xAxisCalibration = msg.xAxisCalibration;
    }
    else {
      resolved.xAxisCalibration = 0
    }

    if (msg.yAxisCalibration !== undefined) {
      resolved.yAxisCalibration = msg.yAxisCalibration;
    }
    else {
      resolved.yAxisCalibration = 0
    }

    if (msg.zAxisCalibration !== undefined) {
      resolved.zAxisCalibration = msg.zAxisCalibration;
    }
    else {
      resolved.zAxisCalibration = 0
    }

    if (msg.calibrationFailed !== undefined) {
      resolved.calibrationFailed = msg.calibrationFailed;
    }
    else {
      resolved.calibrationFailed = 0
    }

    return resolved;
    }
};

module.exports = CommonCalibrationStateMagnetoCalibrationStateChanged;
