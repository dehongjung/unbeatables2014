; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude CalcHistogram-request.msg.html

(cl:defclass <CalcHistogram-request> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:integer
    :initform 0))
)

(cl:defclass CalcHistogram-request (<CalcHistogram-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalcHistogram-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalcHistogram-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<CalcHistogram-request> is deprecated: use unb_robocup-srv:CalcHistogram-request instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <CalcHistogram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:flag-val is deprecated.  Use unb_robocup-srv:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalcHistogram-request>) ostream)
  "Serializes a message object of type '<CalcHistogram-request>"
  (cl:let* ((signed (cl:slot-value msg 'flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalcHistogram-request>) istream)
  "Deserializes a message object of type '<CalcHistogram-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalcHistogram-request>)))
  "Returns string type for a service object of type '<CalcHistogram-request>"
  "unb_robocup/CalcHistogramRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalcHistogram-request)))
  "Returns string type for a service object of type 'CalcHistogram-request"
  "unb_robocup/CalcHistogramRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalcHistogram-request>)))
  "Returns md5sum for a message object of type '<CalcHistogram-request>"
  "1b65669a4afc746e13fd7b4a392c4ce8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalcHistogram-request)))
  "Returns md5sum for a message object of type 'CalcHistogram-request"
  "1b65669a4afc746e13fd7b4a392c4ce8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalcHistogram-request>)))
  "Returns full string definition for message of type '<CalcHistogram-request>"
  (cl:format cl:nil "~%int32 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalcHistogram-request)))
  "Returns full string definition for message of type 'CalcHistogram-request"
  (cl:format cl:nil "~%int32 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalcHistogram-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalcHistogram-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CalcHistogram-request
    (cl:cons ':flag (flag msg))
))
;//! \htmlinclude CalcHistogram-response.msg.html

(cl:defclass <CalcHistogram-response> (roslisp-msg-protocol:ros-message)
  ((isTheSame
    :reader isTheSame
    :initarg :isTheSame
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CalcHistogram-response (<CalcHistogram-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalcHistogram-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalcHistogram-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<CalcHistogram-response> is deprecated: use unb_robocup-srv:CalcHistogram-response instead.")))

(cl:ensure-generic-function 'isTheSame-val :lambda-list '(m))
(cl:defmethod isTheSame-val ((m <CalcHistogram-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:isTheSame-val is deprecated.  Use unb_robocup-srv:isTheSame instead.")
  (isTheSame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalcHistogram-response>) ostream)
  "Serializes a message object of type '<CalcHistogram-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isTheSame) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalcHistogram-response>) istream)
  "Deserializes a message object of type '<CalcHistogram-response>"
    (cl:setf (cl:slot-value msg 'isTheSame) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalcHistogram-response>)))
  "Returns string type for a service object of type '<CalcHistogram-response>"
  "unb_robocup/CalcHistogramResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalcHistogram-response)))
  "Returns string type for a service object of type 'CalcHistogram-response"
  "unb_robocup/CalcHistogramResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalcHistogram-response>)))
  "Returns md5sum for a message object of type '<CalcHistogram-response>"
  "1b65669a4afc746e13fd7b4a392c4ce8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalcHistogram-response)))
  "Returns md5sum for a message object of type 'CalcHistogram-response"
  "1b65669a4afc746e13fd7b4a392c4ce8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalcHistogram-response>)))
  "Returns full string definition for message of type '<CalcHistogram-response>"
  (cl:format cl:nil "bool isTheSame~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalcHistogram-response)))
  "Returns full string definition for message of type 'CalcHistogram-response"
  (cl:format cl:nil "bool isTheSame~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalcHistogram-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalcHistogram-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CalcHistogram-response
    (cl:cons ':isTheSame (isTheSame msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CalcHistogram)))
  'CalcHistogram-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CalcHistogram)))
  'CalcHistogram-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalcHistogram)))
  "Returns string type for a service object of type '<CalcHistogram>"
  "unb_robocup/CalcHistogram")