; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude KickLeft-request.msg.html

(cl:defclass <KickLeft-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass KickLeft-request (<KickLeft-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KickLeft-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KickLeft-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<KickLeft-request> is deprecated: use unb_robocup-srv:KickLeft-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KickLeft-request>) ostream)
  "Serializes a message object of type '<KickLeft-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KickLeft-request>) istream)
  "Deserializes a message object of type '<KickLeft-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KickLeft-request>)))
  "Returns string type for a service object of type '<KickLeft-request>"
  "unb_robocup/KickLeftRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KickLeft-request)))
  "Returns string type for a service object of type 'KickLeft-request"
  "unb_robocup/KickLeftRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KickLeft-request>)))
  "Returns md5sum for a message object of type '<KickLeft-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KickLeft-request)))
  "Returns md5sum for a message object of type 'KickLeft-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KickLeft-request>)))
  "Returns full string definition for message of type '<KickLeft-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KickLeft-request)))
  "Returns full string definition for message of type 'KickLeft-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KickLeft-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KickLeft-request>))
  "Converts a ROS message object to a list"
  (cl:list 'KickLeft-request
))
;//! \htmlinclude KickLeft-response.msg.html

(cl:defclass <KickLeft-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass KickLeft-response (<KickLeft-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KickLeft-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KickLeft-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<KickLeft-response> is deprecated: use unb_robocup-srv:KickLeft-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KickLeft-response>) ostream)
  "Serializes a message object of type '<KickLeft-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KickLeft-response>) istream)
  "Deserializes a message object of type '<KickLeft-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KickLeft-response>)))
  "Returns string type for a service object of type '<KickLeft-response>"
  "unb_robocup/KickLeftResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KickLeft-response)))
  "Returns string type for a service object of type 'KickLeft-response"
  "unb_robocup/KickLeftResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KickLeft-response>)))
  "Returns md5sum for a message object of type '<KickLeft-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KickLeft-response)))
  "Returns md5sum for a message object of type 'KickLeft-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KickLeft-response>)))
  "Returns full string definition for message of type '<KickLeft-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KickLeft-response)))
  "Returns full string definition for message of type 'KickLeft-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KickLeft-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KickLeft-response>))
  "Converts a ROS message object to a list"
  (cl:list 'KickLeft-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'KickLeft)))
  'KickLeft-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'KickLeft)))
  'KickLeft-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KickLeft)))
  "Returns string type for a service object of type '<KickLeft>"
  "unb_robocup/KickLeft")