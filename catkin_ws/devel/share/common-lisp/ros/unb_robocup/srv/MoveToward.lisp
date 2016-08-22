; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude MoveToward-request.msg.html

(cl:defclass <MoveToward-request> (roslisp-msg-protocol:ros-message)
  ((x_vel_normalized
    :reader x_vel_normalized
    :initarg :x_vel_normalized
    :type cl:float
    :initform 0.0)
   (y_vel_normalized
    :reader y_vel_normalized
    :initarg :y_vel_normalized
    :type cl:float
    :initform 0.0)
   (theta_vel_normalized
    :reader theta_vel_normalized
    :initarg :theta_vel_normalized
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveToward-request (<MoveToward-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToward-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToward-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<MoveToward-request> is deprecated: use unb_robocup-srv:MoveToward-request instead.")))

(cl:ensure-generic-function 'x_vel_normalized-val :lambda-list '(m))
(cl:defmethod x_vel_normalized-val ((m <MoveToward-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:x_vel_normalized-val is deprecated.  Use unb_robocup-srv:x_vel_normalized instead.")
  (x_vel_normalized m))

(cl:ensure-generic-function 'y_vel_normalized-val :lambda-list '(m))
(cl:defmethod y_vel_normalized-val ((m <MoveToward-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:y_vel_normalized-val is deprecated.  Use unb_robocup-srv:y_vel_normalized instead.")
  (y_vel_normalized m))

(cl:ensure-generic-function 'theta_vel_normalized-val :lambda-list '(m))
(cl:defmethod theta_vel_normalized-val ((m <MoveToward-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:theta_vel_normalized-val is deprecated.  Use unb_robocup-srv:theta_vel_normalized instead.")
  (theta_vel_normalized m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToward-request>) ostream)
  "Serializes a message object of type '<MoveToward-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_vel_normalized))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_vel_normalized))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta_vel_normalized))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToward-request>) istream)
  "Deserializes a message object of type '<MoveToward-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_vel_normalized) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_vel_normalized) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta_vel_normalized) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToward-request>)))
  "Returns string type for a service object of type '<MoveToward-request>"
  "unb_robocup/MoveTowardRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToward-request)))
  "Returns string type for a service object of type 'MoveToward-request"
  "unb_robocup/MoveTowardRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToward-request>)))
  "Returns md5sum for a message object of type '<MoveToward-request>"
  "fcd97d3de0b5e78e257bd6741173adbd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToward-request)))
  "Returns md5sum for a message object of type 'MoveToward-request"
  "fcd97d3de0b5e78e257bd6741173adbd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToward-request>)))
  "Returns full string definition for message of type '<MoveToward-request>"
  (cl:format cl:nil "~%float32 x_vel_normalized~%float32 y_vel_normalized~%float32 theta_vel_normalized~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToward-request)))
  "Returns full string definition for message of type 'MoveToward-request"
  (cl:format cl:nil "~%float32 x_vel_normalized~%float32 y_vel_normalized~%float32 theta_vel_normalized~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToward-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToward-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToward-request
    (cl:cons ':x_vel_normalized (x_vel_normalized msg))
    (cl:cons ':y_vel_normalized (y_vel_normalized msg))
    (cl:cons ':theta_vel_normalized (theta_vel_normalized msg))
))
;//! \htmlinclude MoveToward-response.msg.html

(cl:defclass <MoveToward-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MoveToward-response (<MoveToward-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToward-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToward-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<MoveToward-response> is deprecated: use unb_robocup-srv:MoveToward-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToward-response>) ostream)
  "Serializes a message object of type '<MoveToward-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToward-response>) istream)
  "Deserializes a message object of type '<MoveToward-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToward-response>)))
  "Returns string type for a service object of type '<MoveToward-response>"
  "unb_robocup/MoveTowardResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToward-response)))
  "Returns string type for a service object of type 'MoveToward-response"
  "unb_robocup/MoveTowardResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToward-response>)))
  "Returns md5sum for a message object of type '<MoveToward-response>"
  "fcd97d3de0b5e78e257bd6741173adbd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToward-response)))
  "Returns md5sum for a message object of type 'MoveToward-response"
  "fcd97d3de0b5e78e257bd6741173adbd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToward-response>)))
  "Returns full string definition for message of type '<MoveToward-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToward-response)))
  "Returns full string definition for message of type 'MoveToward-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToward-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToward-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToward-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveToward)))
  'MoveToward-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveToward)))
  'MoveToward-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToward)))
  "Returns string type for a service object of type '<MoveToward>"
  "unb_robocup/MoveToward")