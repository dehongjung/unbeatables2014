; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude SetRobotState-request.msg.html

(cl:defclass <SetRobotState-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass SetRobotState-request (<SetRobotState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRobotState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRobotState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<SetRobotState-request> is deprecated: use unb_robocup-srv:SetRobotState-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetRobotState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:state-val is deprecated.  Use unb_robocup-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRobotState-request>) ostream)
  "Serializes a message object of type '<SetRobotState-request>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRobotState-request>) istream)
  "Deserializes a message object of type '<SetRobotState-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRobotState-request>)))
  "Returns string type for a service object of type '<SetRobotState-request>"
  "unb_robocup/SetRobotStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobotState-request)))
  "Returns string type for a service object of type 'SetRobotState-request"
  "unb_robocup/SetRobotStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRobotState-request>)))
  "Returns md5sum for a message object of type '<SetRobotState-request>"
  "7a2f37ef2ba405f0c7a15cc72663d6f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRobotState-request)))
  "Returns md5sum for a message object of type 'SetRobotState-request"
  "7a2f37ef2ba405f0c7a15cc72663d6f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRobotState-request>)))
  "Returns full string definition for message of type '<SetRobotState-request>"
  (cl:format cl:nil "int32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRobotState-request)))
  "Returns full string definition for message of type 'SetRobotState-request"
  (cl:format cl:nil "int32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRobotState-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRobotState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRobotState-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude SetRobotState-response.msg.html

(cl:defclass <SetRobotState-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetRobotState-response (<SetRobotState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRobotState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRobotState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<SetRobotState-response> is deprecated: use unb_robocup-srv:SetRobotState-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRobotState-response>) ostream)
  "Serializes a message object of type '<SetRobotState-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRobotState-response>) istream)
  "Deserializes a message object of type '<SetRobotState-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRobotState-response>)))
  "Returns string type for a service object of type '<SetRobotState-response>"
  "unb_robocup/SetRobotStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobotState-response)))
  "Returns string type for a service object of type 'SetRobotState-response"
  "unb_robocup/SetRobotStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRobotState-response>)))
  "Returns md5sum for a message object of type '<SetRobotState-response>"
  "7a2f37ef2ba405f0c7a15cc72663d6f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRobotState-response)))
  "Returns md5sum for a message object of type 'SetRobotState-response"
  "7a2f37ef2ba405f0c7a15cc72663d6f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRobotState-response>)))
  "Returns full string definition for message of type '<SetRobotState-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRobotState-response)))
  "Returns full string definition for message of type 'SetRobotState-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRobotState-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRobotState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRobotState-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetRobotState)))
  'SetRobotState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetRobotState)))
  'SetRobotState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobotState)))
  "Returns string type for a service object of type '<SetRobotState>"
  "unb_robocup/SetRobotState")