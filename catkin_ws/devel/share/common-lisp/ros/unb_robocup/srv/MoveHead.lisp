; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude MoveHead-request.msg.html

(cl:defclass <MoveHead-request> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveHead-request (<MoveHead-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveHead-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveHead-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<MoveHead-request> is deprecated: use unb_robocup-srv:MoveHead-request instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <MoveHead-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:angle-val is deprecated.  Use unb_robocup-srv:angle instead.")
  (angle m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MoveHead-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:speed-val is deprecated.  Use unb_robocup-srv:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveHead-request>) ostream)
  "Serializes a message object of type '<MoveHead-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveHead-request>) istream)
  "Deserializes a message object of type '<MoveHead-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveHead-request>)))
  "Returns string type for a service object of type '<MoveHead-request>"
  "unb_robocup/MoveHeadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveHead-request)))
  "Returns string type for a service object of type 'MoveHead-request"
  "unb_robocup/MoveHeadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveHead-request>)))
  "Returns md5sum for a message object of type '<MoveHead-request>"
  "baf76ae04cb33f72ceb96ed255b76ef4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveHead-request)))
  "Returns md5sum for a message object of type 'MoveHead-request"
  "baf76ae04cb33f72ceb96ed255b76ef4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveHead-request>)))
  "Returns full string definition for message of type '<MoveHead-request>"
  (cl:format cl:nil "~%float32 angle~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveHead-request)))
  "Returns full string definition for message of type 'MoveHead-request"
  (cl:format cl:nil "~%float32 angle~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveHead-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveHead-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveHead-request
    (cl:cons ':angle (angle msg))
    (cl:cons ':speed (speed msg))
))
;//! \htmlinclude MoveHead-response.msg.html

(cl:defclass <MoveHead-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MoveHead-response (<MoveHead-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveHead-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveHead-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<MoveHead-response> is deprecated: use unb_robocup-srv:MoveHead-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveHead-response>) ostream)
  "Serializes a message object of type '<MoveHead-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveHead-response>) istream)
  "Deserializes a message object of type '<MoveHead-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveHead-response>)))
  "Returns string type for a service object of type '<MoveHead-response>"
  "unb_robocup/MoveHeadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveHead-response)))
  "Returns string type for a service object of type 'MoveHead-response"
  "unb_robocup/MoveHeadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveHead-response>)))
  "Returns md5sum for a message object of type '<MoveHead-response>"
  "baf76ae04cb33f72ceb96ed255b76ef4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveHead-response)))
  "Returns md5sum for a message object of type 'MoveHead-response"
  "baf76ae04cb33f72ceb96ed255b76ef4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveHead-response>)))
  "Returns full string definition for message of type '<MoveHead-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveHead-response)))
  "Returns full string definition for message of type 'MoveHead-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveHead-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveHead-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveHead-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveHead)))
  'MoveHead-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveHead)))
  'MoveHead-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveHead)))
  "Returns string type for a service object of type '<MoveHead>"
  "unb_robocup/MoveHead")