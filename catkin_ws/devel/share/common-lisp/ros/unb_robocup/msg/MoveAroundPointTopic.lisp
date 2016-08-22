; Auto-generated. Do not edit!


(cl:in-package unb_robocup-msg)


;//! \htmlinclude MoveAroundPointTopic.msg.html

(cl:defclass <MoveAroundPointTopic> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MoveAroundPointTopic (<MoveAroundPointTopic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveAroundPointTopic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveAroundPointTopic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-msg:<MoveAroundPointTopic> is deprecated: use unb_robocup-msg:MoveAroundPointTopic instead.")))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <MoveAroundPointTopic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-msg:radius-val is deprecated.  Use unb_robocup-msg:radius instead.")
  (radius m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <MoveAroundPointTopic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-msg:theta-val is deprecated.  Use unb_robocup-msg:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveAroundPointTopic>) ostream)
  "Serializes a message object of type '<MoveAroundPointTopic>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveAroundPointTopic>) istream)
  "Deserializes a message object of type '<MoveAroundPointTopic>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveAroundPointTopic>)))
  "Returns string type for a message object of type '<MoveAroundPointTopic>"
  "unb_robocup/MoveAroundPointTopic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveAroundPointTopic)))
  "Returns string type for a message object of type 'MoveAroundPointTopic"
  "unb_robocup/MoveAroundPointTopic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveAroundPointTopic>)))
  "Returns md5sum for a message object of type '<MoveAroundPointTopic>"
  "1c7bc6c2dcc4bbc5f739b84d53123137")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveAroundPointTopic)))
  "Returns md5sum for a message object of type 'MoveAroundPointTopic"
  "1c7bc6c2dcc4bbc5f739b84d53123137")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveAroundPointTopic>)))
  "Returns full string definition for message of type '<MoveAroundPointTopic>"
  (cl:format cl:nil "#Servico para parar pose do NAO~%float32 radius~%float32 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveAroundPointTopic)))
  "Returns full string definition for message of type 'MoveAroundPointTopic"
  (cl:format cl:nil "#Servico para parar pose do NAO~%float32 radius~%float32 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveAroundPointTopic>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveAroundPointTopic>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveAroundPointTopic
    (cl:cons ':radius (radius msg))
    (cl:cons ':theta (theta msg))
))
