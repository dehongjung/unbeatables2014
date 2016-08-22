; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude InitPose-request.msg.html

(cl:defclass <InitPose-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass InitPose-request (<InitPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<InitPose-request> is deprecated: use unb_robocup-srv:InitPose-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitPose-request>) ostream)
  "Serializes a message object of type '<InitPose-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitPose-request>) istream)
  "Deserializes a message object of type '<InitPose-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitPose-request>)))
  "Returns string type for a service object of type '<InitPose-request>"
  "unb_robocup/InitPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitPose-request)))
  "Returns string type for a service object of type 'InitPose-request"
  "unb_robocup/InitPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitPose-request>)))
  "Returns md5sum for a message object of type '<InitPose-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitPose-request)))
  "Returns md5sum for a message object of type 'InitPose-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitPose-request>)))
  "Returns full string definition for message of type '<InitPose-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitPose-request)))
  "Returns full string definition for message of type 'InitPose-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitPose-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'InitPose-request
))
;//! \htmlinclude InitPose-response.msg.html

(cl:defclass <InitPose-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass InitPose-response (<InitPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<InitPose-response> is deprecated: use unb_robocup-srv:InitPose-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitPose-response>) ostream)
  "Serializes a message object of type '<InitPose-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitPose-response>) istream)
  "Deserializes a message object of type '<InitPose-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitPose-response>)))
  "Returns string type for a service object of type '<InitPose-response>"
  "unb_robocup/InitPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitPose-response)))
  "Returns string type for a service object of type 'InitPose-response"
  "unb_robocup/InitPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitPose-response>)))
  "Returns md5sum for a message object of type '<InitPose-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitPose-response)))
  "Returns md5sum for a message object of type 'InitPose-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitPose-response>)))
  "Returns full string definition for message of type '<InitPose-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitPose-response)))
  "Returns full string definition for message of type 'InitPose-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitPose-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'InitPose-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'InitPose)))
  'InitPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'InitPose)))
  'InitPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitPose)))
  "Returns string type for a service object of type '<InitPose>"
  "unb_robocup/InitPose")