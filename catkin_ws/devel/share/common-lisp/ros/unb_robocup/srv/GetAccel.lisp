; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude GetAccel-request.msg.html

(cl:defclass <GetAccel-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetAccel-request (<GetAccel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAccel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAccel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<GetAccel-request> is deprecated: use unb_robocup-srv:GetAccel-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAccel-request>) ostream)
  "Serializes a message object of type '<GetAccel-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAccel-request>) istream)
  "Deserializes a message object of type '<GetAccel-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAccel-request>)))
  "Returns string type for a service object of type '<GetAccel-request>"
  "unb_robocup/GetAccelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAccel-request)))
  "Returns string type for a service object of type 'GetAccel-request"
  "unb_robocup/GetAccelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAccel-request>)))
  "Returns md5sum for a message object of type '<GetAccel-request>"
  "cc153912f1453b708d221682bc23d9ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAccel-request)))
  "Returns md5sum for a message object of type 'GetAccel-request"
  "cc153912f1453b708d221682bc23d9ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAccel-request>)))
  "Returns full string definition for message of type '<GetAccel-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAccel-request)))
  "Returns full string definition for message of type 'GetAccel-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAccel-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAccel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAccel-request
))
;//! \htmlinclude GetAccel-response.msg.html

(cl:defclass <GetAccel-response> (roslisp-msg-protocol:ros-message)
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
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetAccel-response (<GetAccel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAccel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAccel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<GetAccel-response> is deprecated: use unb_robocup-srv:GetAccel-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <GetAccel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:x-val is deprecated.  Use unb_robocup-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <GetAccel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:y-val is deprecated.  Use unb_robocup-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <GetAccel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:z-val is deprecated.  Use unb_robocup-srv:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAccel-response>) ostream)
  "Serializes a message object of type '<GetAccel-response>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAccel-response>) istream)
  "Deserializes a message object of type '<GetAccel-response>"
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
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAccel-response>)))
  "Returns string type for a service object of type '<GetAccel-response>"
  "unb_robocup/GetAccelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAccel-response)))
  "Returns string type for a service object of type 'GetAccel-response"
  "unb_robocup/GetAccelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAccel-response>)))
  "Returns md5sum for a message object of type '<GetAccel-response>"
  "cc153912f1453b708d221682bc23d9ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAccel-response)))
  "Returns md5sum for a message object of type 'GetAccel-response"
  "cc153912f1453b708d221682bc23d9ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAccel-response>)))
  "Returns full string definition for message of type '<GetAccel-response>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAccel-response)))
  "Returns full string definition for message of type 'GetAccel-response"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAccel-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAccel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAccel-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAccel)))
  'GetAccel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAccel)))
  'GetAccel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAccel)))
  "Returns string type for a service object of type '<GetAccel>"
  "unb_robocup/GetAccel")