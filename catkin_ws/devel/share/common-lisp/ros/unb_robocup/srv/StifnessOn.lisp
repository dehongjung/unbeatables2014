; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude StifnessOn-request.msg.html

(cl:defclass <StifnessOn-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StifnessOn-request (<StifnessOn-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StifnessOn-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StifnessOn-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<StifnessOn-request> is deprecated: use unb_robocup-srv:StifnessOn-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StifnessOn-request>) ostream)
  "Serializes a message object of type '<StifnessOn-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StifnessOn-request>) istream)
  "Deserializes a message object of type '<StifnessOn-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StifnessOn-request>)))
  "Returns string type for a service object of type '<StifnessOn-request>"
  "unb_robocup/StifnessOnRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StifnessOn-request)))
  "Returns string type for a service object of type 'StifnessOn-request"
  "unb_robocup/StifnessOnRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StifnessOn-request>)))
  "Returns md5sum for a message object of type '<StifnessOn-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StifnessOn-request)))
  "Returns md5sum for a message object of type 'StifnessOn-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StifnessOn-request>)))
  "Returns full string definition for message of type '<StifnessOn-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StifnessOn-request)))
  "Returns full string definition for message of type 'StifnessOn-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StifnessOn-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StifnessOn-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StifnessOn-request
))
;//! \htmlinclude StifnessOn-response.msg.html

(cl:defclass <StifnessOn-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StifnessOn-response (<StifnessOn-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StifnessOn-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StifnessOn-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<StifnessOn-response> is deprecated: use unb_robocup-srv:StifnessOn-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StifnessOn-response>) ostream)
  "Serializes a message object of type '<StifnessOn-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StifnessOn-response>) istream)
  "Deserializes a message object of type '<StifnessOn-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StifnessOn-response>)))
  "Returns string type for a service object of type '<StifnessOn-response>"
  "unb_robocup/StifnessOnResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StifnessOn-response)))
  "Returns string type for a service object of type 'StifnessOn-response"
  "unb_robocup/StifnessOnResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StifnessOn-response>)))
  "Returns md5sum for a message object of type '<StifnessOn-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StifnessOn-response)))
  "Returns md5sum for a message object of type 'StifnessOn-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StifnessOn-response>)))
  "Returns full string definition for message of type '<StifnessOn-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StifnessOn-response)))
  "Returns full string definition for message of type 'StifnessOn-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StifnessOn-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StifnessOn-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StifnessOn-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StifnessOn)))
  'StifnessOn-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StifnessOn)))
  'StifnessOn-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StifnessOn)))
  "Returns string type for a service object of type '<StifnessOn>"
  "unb_robocup/StifnessOn")