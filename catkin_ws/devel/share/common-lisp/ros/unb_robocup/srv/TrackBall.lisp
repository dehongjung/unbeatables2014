; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude TrackBall-request.msg.html

(cl:defclass <TrackBall-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TrackBall-request (<TrackBall-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackBall-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackBall-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<TrackBall-request> is deprecated: use unb_robocup-srv:TrackBall-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackBall-request>) ostream)
  "Serializes a message object of type '<TrackBall-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackBall-request>) istream)
  "Deserializes a message object of type '<TrackBall-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackBall-request>)))
  "Returns string type for a service object of type '<TrackBall-request>"
  "unb_robocup/TrackBallRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackBall-request)))
  "Returns string type for a service object of type 'TrackBall-request"
  "unb_robocup/TrackBallRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackBall-request>)))
  "Returns md5sum for a message object of type '<TrackBall-request>"
  "a4bdab70850e78baaf663aa3a9c20420")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackBall-request)))
  "Returns md5sum for a message object of type 'TrackBall-request"
  "a4bdab70850e78baaf663aa3a9c20420")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackBall-request>)))
  "Returns full string definition for message of type '<TrackBall-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackBall-request)))
  "Returns full string definition for message of type 'TrackBall-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackBall-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackBall-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackBall-request
))
;//! \htmlinclude TrackBall-response.msg.html

(cl:defclass <TrackBall-response> (roslisp-msg-protocol:ros-message)
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
   (camera
    :reader camera
    :initarg :camera
    :type cl:integer
    :initform 0)
   (is_ball_detected
    :reader is_ball_detected
    :initarg :is_ball_detected
    :type cl:integer
    :initform 0))
)

(cl:defclass TrackBall-response (<TrackBall-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackBall-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackBall-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<TrackBall-response> is deprecated: use unb_robocup-srv:TrackBall-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <TrackBall-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:x-val is deprecated.  Use unb_robocup-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <TrackBall-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:y-val is deprecated.  Use unb_robocup-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'camera-val :lambda-list '(m))
(cl:defmethod camera-val ((m <TrackBall-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:camera-val is deprecated.  Use unb_robocup-srv:camera instead.")
  (camera m))

(cl:ensure-generic-function 'is_ball_detected-val :lambda-list '(m))
(cl:defmethod is_ball_detected-val ((m <TrackBall-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:is_ball_detected-val is deprecated.  Use unb_robocup-srv:is_ball_detected instead.")
  (is_ball_detected m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackBall-response>) ostream)
  "Serializes a message object of type '<TrackBall-response>"
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
  (cl:let* ((signed (cl:slot-value msg 'camera)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'is_ball_detected)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackBall-response>) istream)
  "Deserializes a message object of type '<TrackBall-response>"
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'is_ball_detected) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackBall-response>)))
  "Returns string type for a service object of type '<TrackBall-response>"
  "unb_robocup/TrackBallResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackBall-response)))
  "Returns string type for a service object of type 'TrackBall-response"
  "unb_robocup/TrackBallResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackBall-response>)))
  "Returns md5sum for a message object of type '<TrackBall-response>"
  "a4bdab70850e78baaf663aa3a9c20420")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackBall-response)))
  "Returns md5sum for a message object of type 'TrackBall-response"
  "a4bdab70850e78baaf663aa3a9c20420")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackBall-response>)))
  "Returns full string definition for message of type '<TrackBall-response>"
  (cl:format cl:nil "float32 x~%float32 y~%int32 camera~%int32 is_ball_detected~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackBall-response)))
  "Returns full string definition for message of type 'TrackBall-response"
  (cl:format cl:nil "float32 x~%float32 y~%int32 camera~%int32 is_ball_detected~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackBall-response>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackBall-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackBall-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':camera (camera msg))
    (cl:cons ':is_ball_detected (is_ball_detected msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TrackBall)))
  'TrackBall-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TrackBall)))
  'TrackBall-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackBall)))
  "Returns string type for a service object of type '<TrackBall>"
  "unb_robocup/TrackBall")