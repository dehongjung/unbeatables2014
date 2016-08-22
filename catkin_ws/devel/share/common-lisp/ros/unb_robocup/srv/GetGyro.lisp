; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude GetGyro-request.msg.html

(cl:defclass <GetGyro-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetGyro-request (<GetGyro-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGyro-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGyro-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<GetGyro-request> is deprecated: use unb_robocup-srv:GetGyro-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGyro-request>) ostream)
  "Serializes a message object of type '<GetGyro-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGyro-request>) istream)
  "Deserializes a message object of type '<GetGyro-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGyro-request>)))
  "Returns string type for a service object of type '<GetGyro-request>"
  "unb_robocup/GetGyroRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGyro-request)))
  "Returns string type for a service object of type 'GetGyro-request"
  "unb_robocup/GetGyroRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGyro-request>)))
  "Returns md5sum for a message object of type '<GetGyro-request>"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGyro-request)))
  "Returns md5sum for a message object of type 'GetGyro-request"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGyro-request>)))
  "Returns full string definition for message of type '<GetGyro-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGyro-request)))
  "Returns full string definition for message of type 'GetGyro-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGyro-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGyro-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGyro-request
))
;//! \htmlinclude GetGyro-response.msg.html

(cl:defclass <GetGyro-response> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetGyro-response (<GetGyro-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGyro-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGyro-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<GetGyro-response> is deprecated: use unb_robocup-srv:GetGyro-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <GetGyro-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:x-val is deprecated.  Use unb_robocup-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <GetGyro-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:y-val is deprecated.  Use unb_robocup-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGyro-response>) ostream)
  "Serializes a message object of type '<GetGyro-response>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGyro-response>) istream)
  "Deserializes a message object of type '<GetGyro-response>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGyro-response>)))
  "Returns string type for a service object of type '<GetGyro-response>"
  "unb_robocup/GetGyroResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGyro-response)))
  "Returns string type for a service object of type 'GetGyro-response"
  "unb_robocup/GetGyroResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGyro-response>)))
  "Returns md5sum for a message object of type '<GetGyro-response>"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGyro-response)))
  "Returns md5sum for a message object of type 'GetGyro-response"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGyro-response>)))
  "Returns full string definition for message of type '<GetGyro-response>"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGyro-response)))
  "Returns full string definition for message of type 'GetGyro-response"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGyro-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGyro-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGyro-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetGyro)))
  'GetGyro-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetGyro)))
  'GetGyro-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGyro)))
  "Returns string type for a service object of type '<GetGyro>"
  "unb_robocup/GetGyro")