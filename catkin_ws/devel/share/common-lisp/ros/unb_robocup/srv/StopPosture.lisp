; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude StopPosture-request.msg.html

(cl:defclass <StopPosture-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopPosture-request (<StopPosture-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopPosture-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopPosture-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<StopPosture-request> is deprecated: use unb_robocup-srv:StopPosture-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopPosture-request>) ostream)
  "Serializes a message object of type '<StopPosture-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopPosture-request>) istream)
  "Deserializes a message object of type '<StopPosture-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopPosture-request>)))
  "Returns string type for a service object of type '<StopPosture-request>"
  "unb_robocup/StopPostureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopPosture-request)))
  "Returns string type for a service object of type 'StopPosture-request"
  "unb_robocup/StopPostureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopPosture-request>)))
  "Returns md5sum for a message object of type '<StopPosture-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopPosture-request)))
  "Returns md5sum for a message object of type 'StopPosture-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopPosture-request>)))
  "Returns full string definition for message of type '<StopPosture-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopPosture-request)))
  "Returns full string definition for message of type 'StopPosture-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopPosture-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopPosture-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopPosture-request
))
;//! \htmlinclude StopPosture-response.msg.html

(cl:defclass <StopPosture-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopPosture-response (<StopPosture-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopPosture-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopPosture-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<StopPosture-response> is deprecated: use unb_robocup-srv:StopPosture-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopPosture-response>) ostream)
  "Serializes a message object of type '<StopPosture-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopPosture-response>) istream)
  "Deserializes a message object of type '<StopPosture-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopPosture-response>)))
  "Returns string type for a service object of type '<StopPosture-response>"
  "unb_robocup/StopPostureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopPosture-response)))
  "Returns string type for a service object of type 'StopPosture-response"
  "unb_robocup/StopPostureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopPosture-response>)))
  "Returns md5sum for a message object of type '<StopPosture-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopPosture-response)))
  "Returns md5sum for a message object of type 'StopPosture-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopPosture-response>)))
  "Returns full string definition for message of type '<StopPosture-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopPosture-response)))
  "Returns full string definition for message of type 'StopPosture-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopPosture-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopPosture-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopPosture-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopPosture)))
  'StopPosture-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopPosture)))
  'StopPosture-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopPosture)))
  "Returns string type for a service object of type '<StopPosture>"
  "unb_robocup/StopPosture")