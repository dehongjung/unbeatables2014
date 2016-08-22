; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude StopMove-request.msg.html

(cl:defclass <StopMove-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopMove-request (<StopMove-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopMove-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopMove-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<StopMove-request> is deprecated: use unb_robocup-srv:StopMove-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopMove-request>) ostream)
  "Serializes a message object of type '<StopMove-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopMove-request>) istream)
  "Deserializes a message object of type '<StopMove-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopMove-request>)))
  "Returns string type for a service object of type '<StopMove-request>"
  "unb_robocup/StopMoveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopMove-request)))
  "Returns string type for a service object of type 'StopMove-request"
  "unb_robocup/StopMoveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopMove-request>)))
  "Returns md5sum for a message object of type '<StopMove-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopMove-request)))
  "Returns md5sum for a message object of type 'StopMove-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopMove-request>)))
  "Returns full string definition for message of type '<StopMove-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopMove-request)))
  "Returns full string definition for message of type 'StopMove-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopMove-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopMove-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopMove-request
))
;//! \htmlinclude StopMove-response.msg.html

(cl:defclass <StopMove-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopMove-response (<StopMove-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopMove-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopMove-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<StopMove-response> is deprecated: use unb_robocup-srv:StopMove-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopMove-response>) ostream)
  "Serializes a message object of type '<StopMove-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopMove-response>) istream)
  "Deserializes a message object of type '<StopMove-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopMove-response>)))
  "Returns string type for a service object of type '<StopMove-response>"
  "unb_robocup/StopMoveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopMove-response)))
  "Returns string type for a service object of type 'StopMove-response"
  "unb_robocup/StopMoveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopMove-response>)))
  "Returns md5sum for a message object of type '<StopMove-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopMove-response)))
  "Returns md5sum for a message object of type 'StopMove-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopMove-response>)))
  "Returns full string definition for message of type '<StopMove-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopMove-response)))
  "Returns full string definition for message of type 'StopMove-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopMove-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopMove-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopMove-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopMove)))
  'StopMove-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopMove)))
  'StopMove-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopMove)))
  "Returns string type for a service object of type '<StopMove>"
  "unb_robocup/StopMove")