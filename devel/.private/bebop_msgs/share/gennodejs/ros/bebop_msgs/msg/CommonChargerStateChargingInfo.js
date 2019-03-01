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

class CommonChargerStateChargingInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.phase = null;
      this.rate = null;
      this.intensity = null;
      this.fullChargingTime = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('phase')) {
        this.phase = initObj.phase
      }
      else {
        this.phase = 0;
      }
      if (initObj.hasOwnProperty('rate')) {
        this.rate = initObj.rate
      }
      else {
        this.rate = 0;
      }
      if (initObj.hasOwnProperty('intensity')) {
        this.intensity = initObj.intensity
      }
      else {
        this.intensity = 0;
      }
      if (initObj.hasOwnProperty('fullChargingTime')) {
        this.fullChargingTime = initObj.fullChargingTime
      }
      else {
        this.fullChargingTime = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommonChargerStateChargingInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [phase]
    bufferOffset = _serializer.uint8(obj.phase, buffer, bufferOffset);
    // Serialize message field [rate]
    bufferOffset = _serializer.uint8(obj.rate, buffer, bufferOffset);
    // Serialize message field [intensity]
    bufferOffset = _serializer.uint8(obj.intensity, buffer, bufferOffset);
    // Serialize message field [fullChargingTime]
    bufferOffset = _serializer.uint8(obj.fullChargingTime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonChargerStateChargingInfo
    let len;
    let data = new CommonChargerStateChargingInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [phase]
    data.phase = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rate]
    data.rate = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [intensity]
    data.intensity = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fullChargingTime]
    data.fullChargingTime = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/CommonChargerStateChargingInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6cde652314f80f4da435ec6429960e6d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CommonChargerStateChargingInfo
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Charging information.
    
    Header header
    
    # The current charging phase.
    uint8 phase_UNKNOWN=0  # The charge phase is unknown or irrelevant.
    uint8 phase_CONSTANT_CURRENT_1=1  # First phase of the charging process. The battery is charging with constant current.
    uint8 phase_CONSTANT_CURRENT_2=2  # Second phase of the charging process. The battery is charging with constant current, with a higher voltage than the first phase.
    uint8 phase_CONSTANT_VOLTAGE=3  # Last part of the charging process. The battery is charging with a constant voltage.
    uint8 phase_CHARGED=4  # The battery is fully charged.
    uint8 phase_DISCHARGING=5  # The battery is discharging; Other arguments refers to the last charge.
    uint8 phase
    # The charge rate. If phase is DISCHARGING, refers to the last charge.
    uint8 rate_UNKNOWN=0  # The charge rate is not known.
    uint8 rate_SLOW=1  # Slow charge rate.
    uint8 rate_MODERATE=2  # Moderate charge rate.
    uint8 rate_FAST=3  # Fast charge rate.
    uint8 rate
    # The charging intensity, in dA. (12dA = 1,2A) ; If phase is DISCHARGING, refers to the last charge. Equals to 0 if not known.
    uint8 intensity
    # The full charging time estimated, in minute. If phase is DISCHARGING, refers to the last charge. Equals to 0 if not known.
    uint8 fullChargingTime
    
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
    const resolved = new CommonChargerStateChargingInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.phase !== undefined) {
      resolved.phase = msg.phase;
    }
    else {
      resolved.phase = 0
    }

    if (msg.rate !== undefined) {
      resolved.rate = msg.rate;
    }
    else {
      resolved.rate = 0
    }

    if (msg.intensity !== undefined) {
      resolved.intensity = msg.intensity;
    }
    else {
      resolved.intensity = 0
    }

    if (msg.fullChargingTime !== undefined) {
      resolved.fullChargingTime = msg.fullChargingTime;
    }
    else {
      resolved.fullChargingTime = 0
    }

    return resolved;
    }
};

// Constants for message
CommonChargerStateChargingInfo.Constants = {
  PHASE_UNKNOWN: 0,
  PHASE_CONSTANT_CURRENT_1: 1,
  PHASE_CONSTANT_CURRENT_2: 2,
  PHASE_CONSTANT_VOLTAGE: 3,
  PHASE_CHARGED: 4,
  PHASE_DISCHARGING: 5,
  RATE_UNKNOWN: 0,
  RATE_SLOW: 1,
  RATE_MODERATE: 2,
  RATE_FAST: 3,
}

module.exports = CommonChargerStateChargingInfo;
