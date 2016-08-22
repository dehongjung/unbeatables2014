; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude Rotate-request.msg.html

(cl:defclass <Rotate-request> (roslisp-msg-protocol:ros-message)
  ((theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass Rotate-request (<Rotate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rotate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rotate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<Rotate-request> is deprecated: use unb_robocup-srv:Rotate-request instead.")))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <Rotate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:theta-val is deprecated.  Use unb_robocup-srv:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rotate-request>) ostream)
  "Serializes a message object of type '<Rotate-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rotate-request>) istream)
  "Deserializes a message object of type '<Rotate-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rotate-request>)))
  "Returns string type for a service object of type '<Rotate-request>"
  "unb_robocup/RotateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rotate-request)))
  "Returns string type for a service object of type 'Rotate-request"
  "unb_robocup/RotateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rotate-request>)))
  "Returns md5sum for a message object of type '<Rotate-request>"
  "7328b114b91e2487fcf12e1581a80145")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rotate-request)))
  "Returns md5sum for a message object of type 'Rotate-request"
  "7328b114b91e2487fcf12e1581a80145")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rotate-request>)))
  "Returns full string definition for message of type '<Rotate-request>"
  (cl:format cl:nil "~%float32 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rotate-request)))
  "Returns full string definition for message of type 'Rotate-request"
  (cl:format cl:nil "~%float32 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rotate-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rotate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Rotate-request
    (cl:cons ':theta (theta msg))
))
;//! \htmlinclude Rotate-response.msg.html

(cl:defclass <Rotate-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Rotate-response (<Rotate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rotate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rotate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<Rotate-response> is deprecated: use unb_robocup-srv:Rotate-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rotate-response>) ostream)
  "Serializes a message object of type '<Rotate-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rotate-response>) istream)
  "Deserializes a message object of type '<Rotate-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rotate-response>)))
  "Returns string type for a service object of type '<Rotate-response>"
  "unb_robocup/RotateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rotate-response)))
  "Returns string type for a service object of type 'Rotate-response"
  "unb_robocup/RotateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rotate-response>)))
  "Returns md5sum for a message object of type '<Rotate-response>"
  "7328b114b91e2487fcf12e1581a80145")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rotate-response)))
  "Returns md5sum for a message object of type 'Rotate-response"
  "7328b114b91e2487fcf12e1581a80145")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rotate-response>)))
  "Returns full string definition for message of type '<Rotate-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rotate-response)))
  "Returns full string definition for message of type 'Rotate-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rotate-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rotate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Rotate-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Rotate)))
  'Rotate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Rotate)))
  'Rotate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rotate)))
  "Returns string type for a service object of type '<Rotate>"
  "unb_robocup/Rotate")