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

class CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.axis = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('axis')) {
        this.axis = initObj.axis
      }
      else {
        this.axis = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [axis]
    bufferOffset = _serializer.uint8(obj.axis, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged
    let len;
    let data = new CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [axis]
    data.axis = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad3a0a9ecffc26cb8ac4221cda1c0e54';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Axis to calibrate during calibration process.
    
    Header header
    
    # The axis to calibrate
    uint8 axis_xAxis=0  # If the current calibration axis should be the x axis
    uint8 axis_yAxis=1  # If the current calibration axis should be the y axis
    uint8 axis_zAxis=2  # If the current calibration axis should be the z axis
    uint8 axis_none=3  # If none of the axis should be calibrated
    uint8 axis
    
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
    const resolved = new CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.axis !== undefined) {
      resolved.axis = msg.axis;
    }
    else {
      resolved.axis = 0
    }

    return resolved;
    }
};

// Constants for message
CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged.Constants = {
  AXIS_XAXIS: 0,
  AXIS_YAXIS: 1,
  AXIS_ZAXIS: 2,
  AXIS_NONE: 3,
}

module.exports = CommonCalibrationStateMagnetoCalibrationAxisToCalibrateChanged;
