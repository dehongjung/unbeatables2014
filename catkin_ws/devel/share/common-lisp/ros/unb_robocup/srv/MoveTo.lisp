; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude MoveTo-request.msg.html

(cl:defclass <MoveTo-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveTo-request (<MoveTo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveTo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveTo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<MoveTo-request> is deprecated: use unb_robocup-srv:MoveTo-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <MoveTo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:x-val is deprecated.  Use unb_robocup-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <MoveTo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:y-val is deprecated.  Use unb_robocup-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <MoveTo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:theta-val is deprecated.  Use unb_robocup-srv:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveTo-request>) ostream)
  "Serializes a message object of type '<MoveTo-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveTo-request>) istream)
  "Deserializes a message object of type '<MoveTo-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveTo-request>)))
  "Returns string type for a service object of type '<MoveTo-request>"
  "unb_robocup/MoveToRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveTo-request)))
  "Returns string type for a service object of type 'MoveTo-request"
  "unb_robocup/MoveToRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveTo-request>)))
  "Returns md5sum for a message object of type '<MoveTo-request>"
  "a130bc60ee6513855dc62ea83fcc5b20")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveTo-request)))
  "Returns md5sum for a message object of type 'MoveTo-request"
  "a130bc60ee6513855dc62ea83fcc5b20")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveTo-request>)))
  "Returns full string definition for message of type '<MoveTo-request>"
  (cl:format cl:nil "~%float32 x~%float32 y~%float32 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveTo-request)))
  "Returns full string definition for message of type 'MoveTo-request"
  (cl:format cl:nil "~%float32 x~%float32 y~%float32 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveTo-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveTo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveTo-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
))
;//! \htmlinclude MoveTo-response.msg.html

(cl:defclass <MoveTo-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MoveTo-response (<MoveTo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveTo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveTo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<MoveTo-response> is deprecated: use unb_robocup-srv:MoveTo-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveTo-response>) ostream)
  "Serializes a message object of type '<MoveTo-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveTo-response>) istream)
  "Deserializes a message object of type '<MoveTo-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveTo-response>)))
  "Returns string type for a service object of type '<MoveTo-response>"
  "unb_robocup/MoveToResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveTo-response)))
  "Returns string type for a service object of type 'MoveTo-response"
  "unb_robocup/MoveToResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveTo-response>)))
  "Returns md5sum for a message object of type '<MoveTo-response>"
  "a130bc60ee6513855dc62ea83fcc5b20")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveTo-response)))
  "Returns md5sum for a message object of type 'MoveTo-response"
  "a130bc60ee6513855dc62ea83fcc5b20")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveTo-response>)))
  "Returns full string definition for message of type '<MoveTo-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveTo-response)))
  "Returns full string definition for message of type 'MoveTo-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveTo-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveTo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveTo-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveTo)))
  'MoveTo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveTo)))
  'MoveTo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveTo)))
  "Returns string type for a service object of type '<MoveTo>"
  "unb_robocup/MoveTo")