; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude StiffnessOff-request.msg.html

(cl:defclass <StiffnessOff-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StiffnessOff-request (<StiffnessOff-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StiffnessOff-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StiffnessOff-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<StiffnessOff-request> is deprecated: use unb_robocup-srv:StiffnessOff-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StiffnessOff-request>) ostream)
  "Serializes a message object of type '<StiffnessOff-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StiffnessOff-request>) istream)
  "Deserializes a message object of type '<StiffnessOff-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StiffnessOff-request>)))
  "Returns string type for a service object of type '<StiffnessOff-request>"
  "unb_robocup/StiffnessOffRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StiffnessOff-request)))
  "Returns string type for a service object of type 'StiffnessOff-request"
  "unb_robocup/StiffnessOffRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StiffnessOff-request>)))
  "Returns md5sum for a message object of type '<StiffnessOff-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StiffnessOff-request)))
  "Returns md5sum for a message object of type 'StiffnessOff-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StiffnessOff-request>)))
  "Returns full string definition for message of type '<StiffnessOff-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StiffnessOff-request)))
  "Returns full string definition for message of type 'StiffnessOff-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StiffnessOff-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StiffnessOff-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StiffnessOff-request
))
;//! \htmlinclude StiffnessOff-response.msg.html

(cl:defclass <StiffnessOff-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StiffnessOff-response (<StiffnessOff-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StiffnessOff-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StiffnessOff-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<StiffnessOff-response> is deprecated: use unb_robocup-srv:StiffnessOff-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StiffnessOff-response>) ostream)
  "Serializes a message object of type '<StiffnessOff-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StiffnessOff-response>) istream)
  "Deserializes a message object of type '<StiffnessOff-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StiffnessOff-response>)))
  "Returns string type for a service object of type '<StiffnessOff-response>"
  "unb_robocup/StiffnessOffResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StiffnessOff-response)))
  "Returns string type for a service object of type 'StiffnessOff-response"
  "unb_robocup/StiffnessOffResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StiffnessOff-response>)))
  "Returns md5sum for a message object of type '<StiffnessOff-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StiffnessOff-response)))
  "Returns md5sum for a message object of type 'StiffnessOff-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StiffnessOff-response>)))
  "Returns full string definition for message of type '<StiffnessOff-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StiffnessOff-response)))
  "Returns full string definition for message of type 'StiffnessOff-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StiffnessOff-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StiffnessOff-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StiffnessOff-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StiffnessOff)))
  'StiffnessOff-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StiffnessOff)))
  'StiffnessOff-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StiffnessOff)))
  "Returns string type for a service object of type '<StiffnessOff>"
  "unb_robocup/StiffnessOff")