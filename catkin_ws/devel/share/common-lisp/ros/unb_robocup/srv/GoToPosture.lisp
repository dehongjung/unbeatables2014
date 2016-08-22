; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude GoToPosture-request.msg.html

(cl:defclass <GoToPosture-request> (roslisp-msg-protocol:ros-message)
  ((posture
    :reader posture
    :initarg :posture
    :type cl:string
    :initform "")
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass GoToPosture-request (<GoToPosture-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToPosture-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToPosture-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<GoToPosture-request> is deprecated: use unb_robocup-srv:GoToPosture-request instead.")))

(cl:ensure-generic-function 'posture-val :lambda-list '(m))
(cl:defmethod posture-val ((m <GoToPosture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:posture-val is deprecated.  Use unb_robocup-srv:posture instead.")
  (posture m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <GoToPosture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:speed-val is deprecated.  Use unb_robocup-srv:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToPosture-request>) ostream)
  "Serializes a message object of type '<GoToPosture-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'posture))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'posture))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToPosture-request>) istream)
  "Deserializes a message object of type '<GoToPosture-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'posture) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'posture) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToPosture-request>)))
  "Returns string type for a service object of type '<GoToPosture-request>"
  "unb_robocup/GoToPostureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToPosture-request)))
  "Returns string type for a service object of type 'GoToPosture-request"
  "unb_robocup/GoToPostureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToPosture-request>)))
  "Returns md5sum for a message object of type '<GoToPosture-request>"
  "957cc65eeb07bae35e9307d1447d9965")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToPosture-request)))
  "Returns md5sum for a message object of type 'GoToPosture-request"
  "957cc65eeb07bae35e9307d1447d9965")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToPosture-request>)))
  "Returns full string definition for message of type '<GoToPosture-request>"
  (cl:format cl:nil "~%string posture~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToPosture-request)))
  "Returns full string definition for message of type 'GoToPosture-request"
  (cl:format cl:nil "~%string posture~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToPosture-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'posture))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToPosture-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToPosture-request
    (cl:cons ':posture (posture msg))
    (cl:cons ':speed (speed msg))
))
;//! \htmlinclude GoToPosture-response.msg.html

(cl:defclass <GoToPosture-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GoToPosture-response (<GoToPosture-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToPosture-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToPosture-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<GoToPosture-response> is deprecated: use unb_robocup-srv:GoToPosture-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToPosture-response>) ostream)
  "Serializes a message object of type '<GoToPosture-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToPosture-response>) istream)
  "Deserializes a message object of type '<GoToPosture-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToPosture-response>)))
  "Returns string type for a service object of type '<GoToPosture-response>"
  "unb_robocup/GoToPostureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToPosture-response)))
  "Returns string type for a service object of type 'GoToPosture-response"
  "unb_robocup/GoToPostureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToPosture-response>)))
  "Returns md5sum for a message object of type '<GoToPosture-response>"
  "957cc65eeb07bae35e9307d1447d9965")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToPosture-response)))
  "Returns md5sum for a message object of type 'GoToPosture-response"
  "957cc65eeb07bae35e9307d1447d9965")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToPosture-response>)))
  "Returns full string definition for message of type '<GoToPosture-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToPosture-response)))
  "Returns full string definition for message of type 'GoToPosture-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToPosture-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToPosture-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToPosture-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoToPosture)))
  'GoToPosture-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoToPosture)))
  'GoToPosture-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToPosture)))
  "Returns string type for a service object of type '<GoToPosture>"
  "unb_robocup/GoToPosture")