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

class CommonChargerStateCurrentChargeStateChanged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.status = null;
      this.phase = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('phase')) {
        this.phase = initObj.phase
      }
      else {
        this.phase = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommonChargerStateCurrentChargeStateChanged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [phase]
    bufferOffset = _serializer.uint8(obj.phase, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonChargerStateCurrentChargeStateChanged
    let len;
    let data = new CommonChargerStateCurrentChargeStateChanged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [phase]
    data.phase = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/CommonChargerStateCurrentChargeStateChanged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18629b25e8e73562aa089390b0f02505';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CommonChargerStateCurrentChargeStateChanged
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: Current charge state.
    
    Header header
    
    # Charger status.
    uint8 status_DISCHARGING=0  # The battery is discharging.
    uint8 status_CHARGING_SLOW=1  # The battery is charging at a slow rate about 512 mA.
    uint8 status_CHARGING_MODERATE=2  # The battery is charging at a moderate rate (&gt; 512 mA) but slower than the fastest rate.
    uint8 status_CHARGING_FAST=3  # The battery is charging at a the fastest rate.
    uint8 status_BATTERY_FULL=4  # The charger is plugged and the battery is fully charged.
    uint8 status
    # The current charging phase.
    uint8 phase_UNKNOWN=0  # The charge phase is unknown or irrelevant.
    uint8 phase_CONSTANT_CURRENT_1=1  # First phase of the charging process. The battery is charging with constant current.
    uint8 phase_CONSTANT_CURRENT_2=2  # Second phase of the charging process. The battery is charging with constant current, with a higher voltage than the first phase.
    uint8 phase_CONSTANT_VOLTAGE=3  # Last part of the charging process. The battery is charging with a constant voltage.
    uint8 phase_CHARGED=4  # The battery is fully charged.
    uint8 phase
    
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
    const resolved = new CommonChargerStateCurrentChargeStateChanged(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.phase !== undefined) {
      resolved.phase = msg.phase;
    }
    else {
      resolved.phase = 0
    }

    return resolved;
    }
};

// Constants for message
CommonChargerStateCurrentChargeStateChanged.Constants = {
  STATUS_DISCHARGING: 0,
  STATUS_CHARGING_SLOW: 1,
  STATUS_CHARGING_MODERATE: 2,
  STATUS_CHARGING_FAST: 3,
  STATUS_BATTERY_FULL: 4,
  PHASE_UNKNOWN: 0,
  PHASE_CONSTANT_CURRENT_1: 1,
  PHASE_CONSTANT_CURRENT_2: 2,
  PHASE_CONSTANT_VOLTAGE: 3,
  PHASE_CHARGED: 4,
}

module.exports = CommonChargerStateCurrentChargeStateChanged;
