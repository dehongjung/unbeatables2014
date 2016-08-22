; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude KickRight-request.msg.html

(cl:defclass <KickRight-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass KickRight-request (<KickRight-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KickRight-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KickRight-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<KickRight-request> is deprecated: use unb_robocup-srv:KickRight-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KickRight-request>) ostream)
  "Serializes a message object of type '<KickRight-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KickRight-request>) istream)
  "Deserializes a message object of type '<KickRight-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KickRight-request>)))
  "Returns string type for a service object of type '<KickRight-request>"
  "unb_robocup/KickRightRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KickRight-request)))
  "Returns string type for a service object of type 'KickRight-request"
  "unb_robocup/KickRightRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KickRight-request>)))
  "Returns md5sum for a message object of type '<KickRight-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KickRight-request)))
  "Returns md5sum for a message object of type 'KickRight-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KickRight-request>)))
  "Returns full string definition for message of type '<KickRight-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KickRight-request)))
  "Returns full string definition for message of type 'KickRight-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KickRight-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KickRight-request>))
  "Converts a ROS message object to a list"
  (cl:list 'KickRight-request
))
;//! \htmlinclude KickRight-response.msg.html

(cl:defclass <KickRight-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass KickRight-response (<KickRight-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KickRight-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KickRight-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<KickRight-response> is deprecated: use unb_robocup-srv:KickRight-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KickRight-response>) ostream)
  "Serializes a message object of type '<KickRight-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KickRight-response>) istream)
  "Deserializes a message object of type '<KickRight-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KickRight-response>)))
  "Returns string type for a service object of type '<KickRight-response>"
  "unb_robocup/KickRightResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KickRight-response)))
  "Returns string type for a service object of type 'KickRight-response"
  "unb_robocup/KickRightResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KickRight-response>)))
  "Returns md5sum for a message object of type '<KickRight-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KickRight-response)))
  "Returns md5sum for a message object of type 'KickRight-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KickRight-response>)))
  "Returns full string definition for message of type '<KickRight-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KickRight-response)))
  "Returns full string definition for message of type 'KickRight-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KickRight-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KickRight-response>))
  "Converts a ROS message object to a list"
  (cl:list 'KickRight-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'KickRight)))
  'KickRight-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'KickRight)))
  'KickRight-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KickRight)))
  "Returns string type for a service object of type '<KickRight>"
  "unb_robocup/KickRight")