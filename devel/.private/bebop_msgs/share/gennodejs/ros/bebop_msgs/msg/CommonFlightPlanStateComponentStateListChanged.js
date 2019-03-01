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

class CommonFlightPlanStateComponentStateListChanged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.component = null;
      this.State = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('component')) {
        this.component = initObj.component
      }
      else {
        this.component = 0;
      }
      if (initObj.hasOwnProperty('State')) {
        this.State = initObj.State
      }
      else {
        this.State = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommonFlightPlanStateComponentStateListChanged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [component]
    bufferOffset = _serializer.uint8(obj.component, buffer, bufferOffset);
    // Serialize message field [State]
    bufferOffset = _serializer.uint8(obj.State, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonFlightPlanStateComponentStateListChanged
    let len;
    let data = new CommonFlightPlanStateComponentStateListChanged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [component]
    data.component = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [State]
    data.State = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bebop_msgs/CommonFlightPlanStateComponentStateListChanged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61463ac9d27f6b9f7cbcf76649da9cd3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CommonFlightPlanStateComponentStateListChanged
    # auto-generated from up stream XML files at
    #   github.com/Parrot-Developers/libARCommands/tree/master/Xml
    # To check upstream commit hash, refer to last_build_info file
    # Do not modify this file by hand. Check scripts/meta folder for generator files.
    #
    # SDK Comment: FlightPlan components state list.
    
    Header header
    
    # Drone FlightPlan component id (unique)
    uint8 component_GPS=0  # Drone GPS component. State is 0 when the drone needs a GPS fix.
    uint8 component_Calibration=1  # Drone Calibration component. State is 0 when the sensors of the drone needs to be calibrated.
    uint8 component_Mavlink_File=2  # Mavlink file component. State is 0 when the mavlink file is missing or contains error.
    uint8 component_TakeOff=3  # Drone Take off component. State is 0 when the drone cannot take-off.
    uint8 component_WaypointsBeyondGeofence=4  # Component for waypoints beyond the geofence. State is 0 when one or more waypoints are beyond the geofence.
    uint8 component
    # State of the FlightPlan component (1 FlightPlan component OK, otherwise 0)
    uint8 State
    
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
    const resolved = new CommonFlightPlanStateComponentStateListChanged(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.component !== undefined) {
      resolved.component = msg.component;
    }
    else {
      resolved.component = 0
    }

    if (msg.State !== undefined) {
      resolved.State = msg.State;
    }
    else {
      resolved.State = 0
    }

    return resolved;
    }
};

// Constants for message
CommonFlightPlanStateComponentStateListChanged.Constants = {
  COMPONENT_GPS: 0,
  COMPONENT_CALIBRATION: 1,
  COMPONENT_MAVLINK_FILE: 2,
  COMPONENT_TAKEOFF: 3,
  COMPONENT_WAYPOINTSBEYONDGEOFENCE: 4,
}

module.exports = CommonFlightPlanStateComponentStateListChanged;
