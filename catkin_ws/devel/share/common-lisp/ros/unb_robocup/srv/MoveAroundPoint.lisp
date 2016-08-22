; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude MoveAroundPoint-request.msg.html

(cl:defclass <MoveAroundPoint-request> (roslisp-msg-protocol:ros-message)
  ((radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveAroundPoint-request (<MoveAroundPoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveAroundPoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveAroundPoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<MoveAroundPoint-request> is deprecated: use unb_robocup-srv:MoveAroundPoint-request instead.")))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <MoveAroundPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:radius-val is deprecated.  Use unb_robocup-srv:radius instead.")
  (radius m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <MoveAroundPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:theta-val is deprecated.  Use unb_robocup-srv:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveAroundPoint-request>) ostream)
  "Serializes a message object of type '<MoveAroundPoint-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveAroundPoint-request>) istream)
  "Deserializes a message object of type '<MoveAroundPoint-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveAroundPoint-request>)))
  "Returns string type for a service object of type '<MoveAroundPoint-request>"
  "unb_robocup/MoveAroundPointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveAroundPoint-request)))
  "Returns string type for a service object of type 'MoveAroundPoint-request"
  "unb_robocup/MoveAroundPointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveAroundPoint-request>)))
  "Returns md5sum for a message object of type '<MoveAroundPoint-request>"
  "1c7bc6c2dcc4bbc5f739b84d53123137")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveAroundPoint-request)))
  "Returns md5sum for a message object of type 'MoveAroundPoint-request"
  "1c7bc6c2dcc4bbc5f739b84d53123137")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveAroundPoint-request>)))
  "Returns full string definition for message of type '<MoveAroundPoint-request>"
  (cl:format cl:nil "~%float32 radius~%float32 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveAroundPoint-request)))
  "Returns full string definition for message of type 'MoveAroundPoint-request"
  (cl:format cl:nil "~%float32 radius~%float32 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveAroundPoint-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveAroundPoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveAroundPoint-request
    (cl:cons ':radius (radius msg))
    (cl:cons ':theta (theta msg))
))
;//! \htmlinclude MoveAroundPoint-response.msg.html

(cl:defclass <MoveAroundPoint-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MoveAroundPoint-response (<MoveAroundPoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveAroundPoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveAroundPoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<MoveAroundPoint-response> is deprecated: use unb_robocup-srv:MoveAroundPoint-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveAroundPoint-response>) ostream)
  "Serializes a message object of type '<MoveAroundPoint-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveAroundPoint-response>) istream)
  "Deserializes a message object of type '<MoveAroundPoint-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveAroundPoint-response>)))
  "Returns string type for a service object of type '<MoveAroundPoint-response>"
  "unb_robocup/MoveAroundPointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveAroundPoint-response)))
  "Returns string type for a service object of type 'MoveAroundPoint-response"
  "unb_robocup/MoveAroundPointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveAroundPoint-response>)))
  "Returns md5sum for a message object of type '<MoveAroundPoint-response>"
  "1c7bc6c2dcc4bbc5f739b84d53123137")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveAroundPoint-response)))
  "Returns md5sum for a message object of type 'MoveAroundPoint-response"
  "1c7bc6c2dcc4bbc5f739b84d53123137")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveAroundPoint-response>)))
  "Returns full string definition for message of type '<MoveAroundPoint-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveAroundPoint-response)))
  "Returns full string definition for message of type 'MoveAroundPoint-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveAroundPoint-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveAroundPoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveAroundPoint-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveAroundPoint)))
  'MoveAroundPoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveAroundPoint)))
  'MoveAroundPoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveAroundPoint)))
  "Returns string type for a service object of type '<MoveAroundPoint>"
  "unb_robocup/MoveAroundPoint")