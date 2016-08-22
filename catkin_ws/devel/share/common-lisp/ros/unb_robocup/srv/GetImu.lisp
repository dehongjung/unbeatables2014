; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude GetImu-request.msg.html

(cl:defclass <GetImu-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetImu-request (<GetImu-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetImu-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetImu-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<GetImu-request> is deprecated: use unb_robocup-srv:GetImu-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetImu-request>) ostream)
  "Serializes a message object of type '<GetImu-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetImu-request>) istream)
  "Deserializes a message object of type '<GetImu-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetImu-request>)))
  "Returns string type for a service object of type '<GetImu-request>"
  "unb_robocup/GetImuRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetImu-request)))
  "Returns string type for a service object of type 'GetImu-request"
  "unb_robocup/GetImuRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetImu-request>)))
  "Returns md5sum for a message object of type '<GetImu-request>"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetImu-request)))
  "Returns md5sum for a message object of type 'GetImu-request"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetImu-request>)))
  "Returns full string definition for message of type '<GetImu-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetImu-request)))
  "Returns full string definition for message of type 'GetImu-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetImu-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetImu-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetImu-request
))
;//! \htmlinclude GetImu-response.msg.html

(cl:defclass <GetImu-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GetImu-response (<GetImu-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetImu-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetImu-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<GetImu-response> is deprecated: use unb_robocup-srv:GetImu-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <GetImu-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:x-val is deprecated.  Use unb_robocup-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <GetImu-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:y-val is deprecated.  Use unb_robocup-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetImu-response>) ostream)
  "Serializes a message object of type '<GetImu-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetImu-response>) istream)
  "Deserializes a message object of type '<GetImu-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetImu-response>)))
  "Returns string type for a service object of type '<GetImu-response>"
  "unb_robocup/GetImuResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetImu-response)))
  "Returns string type for a service object of type 'GetImu-response"
  "unb_robocup/GetImuResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetImu-response>)))
  "Returns md5sum for a message object of type '<GetImu-response>"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetImu-response)))
  "Returns md5sum for a message object of type 'GetImu-response"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetImu-response>)))
  "Returns full string definition for message of type '<GetImu-response>"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetImu-response)))
  "Returns full string definition for message of type 'GetImu-response"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetImu-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetImu-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetImu-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetImu)))
  'GetImu-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetImu)))
  'GetImu-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetImu)))
  "Returns string type for a service object of type '<GetImu>"
  "unb_robocup/GetImu")