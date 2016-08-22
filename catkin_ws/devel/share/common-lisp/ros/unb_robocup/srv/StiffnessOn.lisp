; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude StiffnessOn-request.msg.html

(cl:defclass <StiffnessOn-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StiffnessOn-request (<StiffnessOn-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StiffnessOn-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StiffnessOn-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<StiffnessOn-request> is deprecated: use unb_robocup-srv:StiffnessOn-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StiffnessOn-request>) ostream)
  "Serializes a message object of type '<StiffnessOn-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StiffnessOn-request>) istream)
  "Deserializes a message object of type '<StiffnessOn-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StiffnessOn-request>)))
  "Returns string type for a service object of type '<StiffnessOn-request>"
  "unb_robocup/StiffnessOnRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StiffnessOn-request)))
  "Returns string type for a service object of type 'StiffnessOn-request"
  "unb_robocup/StiffnessOnRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StiffnessOn-request>)))
  "Returns md5sum for a message object of type '<StiffnessOn-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StiffnessOn-request)))
  "Returns md5sum for a message object of type 'StiffnessOn-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StiffnessOn-request>)))
  "Returns full string definition for message of type '<StiffnessOn-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StiffnessOn-request)))
  "Returns full string definition for message of type 'StiffnessOn-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StiffnessOn-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StiffnessOn-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StiffnessOn-request
))
;//! \htmlinclude StiffnessOn-response.msg.html

(cl:defclass <StiffnessOn-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StiffnessOn-response (<StiffnessOn-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StiffnessOn-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StiffnessOn-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<StiffnessOn-response> is deprecated: use unb_robocup-srv:StiffnessOn-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StiffnessOn-response>) ostream)
  "Serializes a message object of type '<StiffnessOn-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StiffnessOn-response>) istream)
  "Deserializes a message object of type '<StiffnessOn-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StiffnessOn-response>)))
  "Returns string type for a service object of type '<StiffnessOn-response>"
  "unb_robocup/StiffnessOnResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StiffnessOn-response)))
  "Returns string type for a service object of type 'StiffnessOn-response"
  "unb_robocup/StiffnessOnResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StiffnessOn-response>)))
  "Returns md5sum for a message object of type '<StiffnessOn-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StiffnessOn-response)))
  "Returns md5sum for a message object of type 'StiffnessOn-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StiffnessOn-response>)))
  "Returns full string definition for message of type '<StiffnessOn-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StiffnessOn-response)))
  "Returns full string definition for message of type 'StiffnessOn-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StiffnessOn-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StiffnessOn-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StiffnessOn-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StiffnessOn)))
  'StiffnessOn-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StiffnessOn)))
  'StiffnessOn-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StiffnessOn)))
  "Returns string type for a service object of type '<StiffnessOn>"
  "unb_robocup/StiffnessOn")