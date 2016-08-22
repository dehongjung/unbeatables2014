; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude GetRobotState-request.msg.html

(cl:defclass <GetRobotState-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetRobotState-request (<GetRobotState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRobotState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRobotState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<GetRobotState-request> is deprecated: use unb_robocup-srv:GetRobotState-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRobotState-request>) ostream)
  "Serializes a message object of type '<GetRobotState-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRobotState-request>) istream)
  "Deserializes a message object of type '<GetRobotState-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRobotState-request>)))
  "Returns string type for a service object of type '<GetRobotState-request>"
  "unb_robocup/GetRobotStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotState-request)))
  "Returns string type for a service object of type 'GetRobotState-request"
  "unb_robocup/GetRobotStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRobotState-request>)))
  "Returns md5sum for a message object of type '<GetRobotState-request>"
  "a4cf44295fa685e19754f61acc43186a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRobotState-request)))
  "Returns md5sum for a message object of type 'GetRobotState-request"
  "a4cf44295fa685e19754f61acc43186a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRobotState-request>)))
  "Returns full string definition for message of type '<GetRobotState-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRobotState-request)))
  "Returns full string definition for message of type 'GetRobotState-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRobotState-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRobotState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRobotState-request
))
;//! \htmlinclude GetRobotState-response.msg.html

(cl:defclass <GetRobotState-response> (roslisp-msg-protocol:ros-message)
  ((game_state
    :reader game_state
    :initarg :game_state
    :type cl:integer
    :initform 0)
   (robot_state
    :reader robot_state
    :initarg :robot_state
    :type cl:integer
    :initform 0))
)

(cl:defclass GetRobotState-response (<GetRobotState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRobotState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRobotState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<GetRobotState-response> is deprecated: use unb_robocup-srv:GetRobotState-response instead.")))

(cl:ensure-generic-function 'game_state-val :lambda-list '(m))
(cl:defmethod game_state-val ((m <GetRobotState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:game_state-val is deprecated.  Use unb_robocup-srv:game_state instead.")
  (game_state m))

(cl:ensure-generic-function 'robot_state-val :lambda-list '(m))
(cl:defmethod robot_state-val ((m <GetRobotState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:robot_state-val is deprecated.  Use unb_robocup-srv:robot_state instead.")
  (robot_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRobotState-response>) ostream)
  "Serializes a message object of type '<GetRobotState-response>"
  (cl:let* ((signed (cl:slot-value msg 'game_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'robot_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRobotState-response>) istream)
  "Deserializes a message object of type '<GetRobotState-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'game_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRobotState-response>)))
  "Returns string type for a service object of type '<GetRobotState-response>"
  "unb_robocup/GetRobotStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotState-response)))
  "Returns string type for a service object of type 'GetRobotState-response"
  "unb_robocup/GetRobotStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRobotState-response>)))
  "Returns md5sum for a message object of type '<GetRobotState-response>"
  "a4cf44295fa685e19754f61acc43186a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRobotState-response)))
  "Returns md5sum for a message object of type 'GetRobotState-response"
  "a4cf44295fa685e19754f61acc43186a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRobotState-response>)))
  "Returns full string definition for message of type '<GetRobotState-response>"
  (cl:format cl:nil "int32 game_state~%int32 robot_state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRobotState-response)))
  "Returns full string definition for message of type 'GetRobotState-response"
  (cl:format cl:nil "int32 game_state~%int32 robot_state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRobotState-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRobotState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRobotState-response
    (cl:cons ':game_state (game_state msg))
    (cl:cons ':robot_state (robot_state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRobotState)))
  'GetRobotState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRobotState)))
  'GetRobotState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotState)))
  "Returns string type for a service object of type '<GetRobotState>"
  "unb_robocup/GetRobotState")