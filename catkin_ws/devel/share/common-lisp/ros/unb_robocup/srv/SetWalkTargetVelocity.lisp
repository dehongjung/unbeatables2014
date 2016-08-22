; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude SetWalkTargetVelocity-request.msg.html

(cl:defclass <SetWalkTargetVelocity-request> (roslisp-msg-protocol:ros-message)
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
    :initform 0.0)
   (freq
    :reader freq
    :initarg :freq
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetWalkTargetVelocity-request (<SetWalkTargetVelocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWalkTargetVelocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWalkTargetVelocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<SetWalkTargetVelocity-request> is deprecated: use unb_robocup-srv:SetWalkTargetVelocity-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <SetWalkTargetVelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:x-val is deprecated.  Use unb_robocup-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <SetWalkTargetVelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:y-val is deprecated.  Use unb_robocup-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <SetWalkTargetVelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:theta-val is deprecated.  Use unb_robocup-srv:theta instead.")
  (theta m))

(cl:ensure-generic-function 'freq-val :lambda-list '(m))
(cl:defmethod freq-val ((m <SetWalkTargetVelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:freq-val is deprecated.  Use unb_robocup-srv:freq instead.")
  (freq m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetWalkTargetVelocity-request>) ostream)
  "Serializes a message object of type '<SetWalkTargetVelocity-request>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'freq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetWalkTargetVelocity-request>) istream)
  "Deserializes a message object of type '<SetWalkTargetVelocity-request>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'freq) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetWalkTargetVelocity-request>)))
  "Returns string type for a service object of type '<SetWalkTargetVelocity-request>"
  "unb_robocup/SetWalkTargetVelocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWalkTargetVelocity-request)))
  "Returns string type for a service object of type 'SetWalkTargetVelocity-request"
  "unb_robocup/SetWalkTargetVelocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWalkTargetVelocity-request>)))
  "Returns md5sum for a message object of type '<SetWalkTargetVelocity-request>"
  "45a09b3abb151f04c7fe81226aff4dbc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWalkTargetVelocity-request)))
  "Returns md5sum for a message object of type 'SetWalkTargetVelocity-request"
  "45a09b3abb151f04c7fe81226aff4dbc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWalkTargetVelocity-request>)))
  "Returns full string definition for message of type '<SetWalkTargetVelocity-request>"
  (cl:format cl:nil "~%float32 x~%float32 y~%float32 theta~%float32 freq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWalkTargetVelocity-request)))
  "Returns full string definition for message of type 'SetWalkTargetVelocity-request"
  (cl:format cl:nil "~%float32 x~%float32 y~%float32 theta~%float32 freq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetWalkTargetVelocity-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetWalkTargetVelocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetWalkTargetVelocity-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':freq (freq msg))
))
;//! \htmlinclude SetWalkTargetVelocity-response.msg.html

(cl:defclass <SetWalkTargetVelocity-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetWalkTargetVelocity-response (<SetWalkTargetVelocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWalkTargetVelocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWalkTargetVelocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<SetWalkTargetVelocity-response> is deprecated: use unb_robocup-srv:SetWalkTargetVelocity-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetWalkTargetVelocity-response>) ostream)
  "Serializes a message object of type '<SetWalkTargetVelocity-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetWalkTargetVelocity-response>) istream)
  "Deserializes a message object of type '<SetWalkTargetVelocity-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetWalkTargetVelocity-response>)))
  "Returns string type for a service object of type '<SetWalkTargetVelocity-response>"
  "unb_robocup/SetWalkTargetVelocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWalkTargetVelocity-response)))
  "Returns string type for a service object of type 'SetWalkTargetVelocity-response"
  "unb_robocup/SetWalkTargetVelocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWalkTargetVelocity-response>)))
  "Returns md5sum for a message object of type '<SetWalkTargetVelocity-response>"
  "45a09b3abb151f04c7fe81226aff4dbc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWalkTargetVelocity-response)))
  "Returns md5sum for a message object of type 'SetWalkTargetVelocity-response"
  "45a09b3abb151f04c7fe81226aff4dbc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWalkTargetVelocity-response>)))
  "Returns full string definition for message of type '<SetWalkTargetVelocity-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWalkTargetVelocity-response)))
  "Returns full string definition for message of type 'SetWalkTargetVelocity-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetWalkTargetVelocity-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetWalkTargetVelocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetWalkTargetVelocity-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetWalkTargetVelocity)))
  'SetWalkTargetVelocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetWalkTargetVelocity)))
  'SetWalkTargetVelocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWalkTargetVelocity)))
  "Returns string type for a service object of type '<SetWalkTargetVelocity>"
  "unb_robocup/SetWalkTargetVelocity")