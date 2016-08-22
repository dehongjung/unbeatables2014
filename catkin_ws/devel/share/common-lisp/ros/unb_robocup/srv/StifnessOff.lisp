; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude StifnessOff-request.msg.html

(cl:defclass <StifnessOff-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StifnessOff-request (<StifnessOff-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StifnessOff-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StifnessOff-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<StifnessOff-request> is deprecated: use unb_robocup-srv:StifnessOff-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StifnessOff-request>) ostream)
  "Serializes a message object of type '<StifnessOff-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StifnessOff-request>) istream)
  "Deserializes a message object of type '<StifnessOff-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StifnessOff-request>)))
  "Returns string type for a service object of type '<StifnessOff-request>"
  "unb_robocup/StifnessOffRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StifnessOff-request)))
  "Returns string type for a service object of type 'StifnessOff-request"
  "unb_robocup/StifnessOffRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StifnessOff-request>)))
  "Returns md5sum for a message object of type '<StifnessOff-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StifnessOff-request)))
  "Returns md5sum for a message object of type 'StifnessOff-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StifnessOff-request>)))
  "Returns full string definition for message of type '<StifnessOff-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StifnessOff-request)))
  "Returns full string definition for message of type 'StifnessOff-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StifnessOff-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StifnessOff-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StifnessOff-request
))
;//! \htmlinclude StifnessOff-response.msg.html

(cl:defclass <StifnessOff-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StifnessOff-response (<StifnessOff-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StifnessOff-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StifnessOff-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<StifnessOff-response> is deprecated: use unb_robocup-srv:StifnessOff-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StifnessOff-response>) ostream)
  "Serializes a message object of type '<StifnessOff-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StifnessOff-response>) istream)
  "Deserializes a message object of type '<StifnessOff-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StifnessOff-response>)))
  "Returns string type for a service object of type '<StifnessOff-response>"
  "unb_robocup/StifnessOffResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StifnessOff-response)))
  "Returns string type for a service object of type 'StifnessOff-response"
  "unb_robocup/StifnessOffResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StifnessOff-response>)))
  "Returns md5sum for a message object of type '<StifnessOff-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StifnessOff-response)))
  "Returns md5sum for a message object of type 'StifnessOff-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StifnessOff-response>)))
  "Returns full string definition for message of type '<StifnessOff-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StifnessOff-response)))
  "Returns full string definition for message of type 'StifnessOff-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StifnessOff-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StifnessOff-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StifnessOff-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StifnessOff)))
  'StifnessOff-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StifnessOff)))
  'StifnessOff-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StifnessOff)))
  "Returns string type for a service object of type '<StifnessOff>"
  "unb_robocup/StifnessOff")