; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude GetSonar-request.msg.html

(cl:defclass <GetSonar-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetSonar-request (<GetSonar-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSonar-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSonar-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<GetSonar-request> is deprecated: use unb_robocup-srv:GetSonar-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSonar-request>) ostream)
  "Serializes a message object of type '<GetSonar-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSonar-request>) istream)
  "Deserializes a message object of type '<GetSonar-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSonar-request>)))
  "Returns string type for a service object of type '<GetSonar-request>"
  "unb_robocup/GetSonarRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSonar-request)))
  "Returns string type for a service object of type 'GetSonar-request"
  "unb_robocup/GetSonarRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSonar-request>)))
  "Returns md5sum for a message object of type '<GetSonar-request>"
  "29856bb6a34992cade8a1cd10aae4a09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSonar-request)))
  "Returns md5sum for a message object of type 'GetSonar-request"
  "29856bb6a34992cade8a1cd10aae4a09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSonar-request>)))
  "Returns full string definition for message of type '<GetSonar-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSonar-request)))
  "Returns full string definition for message of type 'GetSonar-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSonar-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSonar-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSonar-request
))
;//! \htmlinclude GetSonar-response.msg.html

(cl:defclass <GetSonar-response> (roslisp-msg-protocol:ros-message)
  ((left_sonar
    :reader left_sonar
    :initarg :left_sonar
    :type cl:float
    :initform 0.0)
   (right_sonar
    :reader right_sonar
    :initarg :right_sonar
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetSonar-response (<GetSonar-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSonar-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSonar-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<GetSonar-response> is deprecated: use unb_robocup-srv:GetSonar-response instead.")))

(cl:ensure-generic-function 'left_sonar-val :lambda-list '(m))
(cl:defmethod left_sonar-val ((m <GetSonar-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:left_sonar-val is deprecated.  Use unb_robocup-srv:left_sonar instead.")
  (left_sonar m))

(cl:ensure-generic-function 'right_sonar-val :lambda-list '(m))
(cl:defmethod right_sonar-val ((m <GetSonar-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:right_sonar-val is deprecated.  Use unb_robocup-srv:right_sonar instead.")
  (right_sonar m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSonar-response>) ostream)
  "Serializes a message object of type '<GetSonar-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_sonar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_sonar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSonar-response>) istream)
  "Deserializes a message object of type '<GetSonar-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_sonar) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_sonar) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSonar-response>)))
  "Returns string type for a service object of type '<GetSonar-response>"
  "unb_robocup/GetSonarResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSonar-response)))
  "Returns string type for a service object of type 'GetSonar-response"
  "unb_robocup/GetSonarResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSonar-response>)))
  "Returns md5sum for a message object of type '<GetSonar-response>"
  "29856bb6a34992cade8a1cd10aae4a09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSonar-response)))
  "Returns md5sum for a message object of type 'GetSonar-response"
  "29856bb6a34992cade8a1cd10aae4a09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSonar-response>)))
  "Returns full string definition for message of type '<GetSonar-response>"
  (cl:format cl:nil "float32 left_sonar~%float32 right_sonar~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSonar-response)))
  "Returns full string definition for message of type 'GetSonar-response"
  (cl:format cl:nil "float32 left_sonar~%float32 right_sonar~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSonar-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSonar-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSonar-response
    (cl:cons ':left_sonar (left_sonar msg))
    (cl:cons ':right_sonar (right_sonar msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSonar)))
  'GetSonar-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSonar)))
  'GetSonar-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSonar)))
  "Returns string type for a service object of type '<GetSonar>"
  "unb_robocup/GetSonar")