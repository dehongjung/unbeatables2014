; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude RobotHasFallen-request.msg.html

(cl:defclass <RobotHasFallen-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RobotHasFallen-request (<RobotHasFallen-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotHasFallen-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotHasFallen-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<RobotHasFallen-request> is deprecated: use unb_robocup-srv:RobotHasFallen-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotHasFallen-request>) ostream)
  "Serializes a message object of type '<RobotHasFallen-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotHasFallen-request>) istream)
  "Deserializes a message object of type '<RobotHasFallen-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotHasFallen-request>)))
  "Returns string type for a service object of type '<RobotHasFallen-request>"
  "unb_robocup/RobotHasFallenRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotHasFallen-request)))
  "Returns string type for a service object of type 'RobotHasFallen-request"
  "unb_robocup/RobotHasFallenRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotHasFallen-request>)))
  "Returns md5sum for a message object of type '<RobotHasFallen-request>"
  "1f58f8edb8f9e3db817916c6b3816638")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotHasFallen-request)))
  "Returns md5sum for a message object of type 'RobotHasFallen-request"
  "1f58f8edb8f9e3db817916c6b3816638")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotHasFallen-request>)))
  "Returns full string definition for message of type '<RobotHasFallen-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotHasFallen-request)))
  "Returns full string definition for message of type 'RobotHasFallen-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotHasFallen-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotHasFallen-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotHasFallen-request
))
;//! \htmlinclude RobotHasFallen-response.msg.html

(cl:defclass <RobotHasFallen-response> (roslisp-msg-protocol:ros-message)
  ((robot_has_fallen
    :reader robot_has_fallen
    :initarg :robot_has_fallen
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotHasFallen-response (<RobotHasFallen-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotHasFallen-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotHasFallen-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<RobotHasFallen-response> is deprecated: use unb_robocup-srv:RobotHasFallen-response instead.")))

(cl:ensure-generic-function 'robot_has_fallen-val :lambda-list '(m))
(cl:defmethod robot_has_fallen-val ((m <RobotHasFallen-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:robot_has_fallen-val is deprecated.  Use unb_robocup-srv:robot_has_fallen instead.")
  (robot_has_fallen m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotHasFallen-response>) ostream)
  "Serializes a message object of type '<RobotHasFallen-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'robot_has_fallen) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotHasFallen-response>) istream)
  "Deserializes a message object of type '<RobotHasFallen-response>"
    (cl:setf (cl:slot-value msg 'robot_has_fallen) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotHasFallen-response>)))
  "Returns string type for a service object of type '<RobotHasFallen-response>"
  "unb_robocup/RobotHasFallenResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotHasFallen-response)))
  "Returns string type for a service object of type 'RobotHasFallen-response"
  "unb_robocup/RobotHasFallenResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotHasFallen-response>)))
  "Returns md5sum for a message object of type '<RobotHasFallen-response>"
  "1f58f8edb8f9e3db817916c6b3816638")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotHasFallen-response)))
  "Returns md5sum for a message object of type 'RobotHasFallen-response"
  "1f58f8edb8f9e3db817916c6b3816638")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotHasFallen-response>)))
  "Returns full string definition for message of type '<RobotHasFallen-response>"
  (cl:format cl:nil "bool robot_has_fallen~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotHasFallen-response)))
  "Returns full string definition for message of type 'RobotHasFallen-response"
  (cl:format cl:nil "bool robot_has_fallen~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotHasFallen-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotHasFallen-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotHasFallen-response
    (cl:cons ':robot_has_fallen (robot_has_fallen msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotHasFallen)))
  'RobotHasFallen-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotHasFallen)))
  'RobotHasFallen-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotHasFallen)))
  "Returns string type for a service object of type '<RobotHasFallen>"
  "unb_robocup/RobotHasFallen")