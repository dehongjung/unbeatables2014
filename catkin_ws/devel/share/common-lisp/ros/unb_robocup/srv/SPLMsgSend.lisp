; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude SPLMsgSend-request.msg.html

(cl:defclass <SPLMsgSend-request> (roslisp-msg-protocol:ros-message)
  ((playerNum
    :reader playerNum
    :initarg :playerNum
    :type cl:fixnum
    :initform 0)
   (teamColor
    :reader teamColor
    :initarg :teamColor
    :type cl:fixnum
    :initform 0)
   (fallen
    :reader fallen
    :initarg :fallen
    :type cl:fixnum
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (walkingTo
    :reader walkingTo
    :initarg :walkingTo
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (shootingTo
    :reader shootingTo
    :initarg :shootingTo
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (ballAge
    :reader ballAge
    :initarg :ballAge
    :type cl:integer
    :initform 0)
   (ball
    :reader ball
    :initarg :ball
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (ballVel
    :reader ballVel
    :initarg :ballVel
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (intention
    :reader intention
    :initarg :intention
    :type cl:fixnum
    :initform 0)
   (numOfDataBytes
    :reader numOfDataBytes
    :initarg :numOfDataBytes
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SPLMsgSend-request (<SPLMsgSend-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SPLMsgSend-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SPLMsgSend-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<SPLMsgSend-request> is deprecated: use unb_robocup-srv:SPLMsgSend-request instead.")))

(cl:ensure-generic-function 'playerNum-val :lambda-list '(m))
(cl:defmethod playerNum-val ((m <SPLMsgSend-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:playerNum-val is deprecated.  Use unb_robocup-srv:playerNum instead.")
  (playerNum m))

(cl:ensure-generic-function 'teamColor-val :lambda-list '(m))
(cl:defmethod teamColor-val ((m <SPLMsgSend-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:teamColor-val is deprecated.  Use unb_robocup-srv:teamColor instead.")
  (teamColor m))

(cl:ensure-generic-function 'fallen-val :lambda-list '(m))
(cl:defmethod fallen-val ((m <SPLMsgSend-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:fallen-val is deprecated.  Use unb_robocup-srv:fallen instead.")
  (fallen m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SPLMsgSend-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:pose-val is deprecated.  Use unb_robocup-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'walkingTo-val :lambda-list '(m))
(cl:defmethod walkingTo-val ((m <SPLMsgSend-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:walkingTo-val is deprecated.  Use unb_robocup-srv:walkingTo instead.")
  (walkingTo m))

(cl:ensure-generic-function 'shootingTo-val :lambda-list '(m))
(cl:defmethod shootingTo-val ((m <SPLMsgSend-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:shootingTo-val is deprecated.  Use unb_robocup-srv:shootingTo instead.")
  (shootingTo m))

(cl:ensure-generic-function 'ballAge-val :lambda-list '(m))
(cl:defmethod ballAge-val ((m <SPLMsgSend-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:ballAge-val is deprecated.  Use unb_robocup-srv:ballAge instead.")
  (ballAge m))

(cl:ensure-generic-function 'ball-val :lambda-list '(m))
(cl:defmethod ball-val ((m <SPLMsgSend-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:ball-val is deprecated.  Use unb_robocup-srv:ball instead.")
  (ball m))

(cl:ensure-generic-function 'ballVel-val :lambda-list '(m))
(cl:defmethod ballVel-val ((m <SPLMsgSend-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:ballVel-val is deprecated.  Use unb_robocup-srv:ballVel instead.")
  (ballVel m))

(cl:ensure-generic-function 'intention-val :lambda-list '(m))
(cl:defmethod intention-val ((m <SPLMsgSend-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:intention-val is deprecated.  Use unb_robocup-srv:intention instead.")
  (intention m))

(cl:ensure-generic-function 'numOfDataBytes-val :lambda-list '(m))
(cl:defmethod numOfDataBytes-val ((m <SPLMsgSend-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:numOfDataBytes-val is deprecated.  Use unb_robocup-srv:numOfDataBytes instead.")
  (numOfDataBytes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SPLMsgSend-request>) ostream)
  "Serializes a message object of type '<SPLMsgSend-request>"
  (cl:let* ((signed (cl:slot-value msg 'playerNum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'teamColor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fallen)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pose))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'walkingTo))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'shootingTo))
  (cl:let* ((signed (cl:slot-value msg 'ballAge)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'ball))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'ballVel))
  (cl:let* ((signed (cl:slot-value msg 'intention)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'numOfDataBytes)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SPLMsgSend-request>) istream)
  "Deserializes a message object of type '<SPLMsgSend-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'playerNum) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'teamColor) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fallen) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:setf (cl:slot-value msg 'pose) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'pose)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'walkingTo) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'walkingTo)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'shootingTo) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'shootingTo)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ballAge) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:setf (cl:slot-value msg 'ball) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'ball)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'ballVel) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'ballVel)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'intention) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numOfDataBytes) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SPLMsgSend-request>)))
  "Returns string type for a service object of type '<SPLMsgSend-request>"
  "unb_robocup/SPLMsgSendRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SPLMsgSend-request)))
  "Returns string type for a service object of type 'SPLMsgSend-request"
  "unb_robocup/SPLMsgSendRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SPLMsgSend-request>)))
  "Returns md5sum for a message object of type '<SPLMsgSend-request>"
  "a61e78d7087f8ec58acadd5ee3b8e4e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SPLMsgSend-request)))
  "Returns md5sum for a message object of type 'SPLMsgSend-request"
  "a61e78d7087f8ec58acadd5ee3b8e4e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SPLMsgSend-request>)))
  "Returns full string definition for message of type '<SPLMsgSend-request>"
  (cl:format cl:nil "int8 playerNum~%int8 teamColor~%int8 fallen~%float32[3] pose~%float32[2] walkingTo~%float32[2] shootingTo~%int32 ballAge~%float32[2] ball~%float32[2] ballVel~%int16 intention~%int16 numOfDataBytes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SPLMsgSend-request)))
  "Returns full string definition for message of type 'SPLMsgSend-request"
  (cl:format cl:nil "int8 playerNum~%int8 teamColor~%int8 fallen~%float32[3] pose~%float32[2] walkingTo~%float32[2] shootingTo~%int32 ballAge~%float32[2] ball~%float32[2] ballVel~%int16 intention~%int16 numOfDataBytes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SPLMsgSend-request>))
  (cl:+ 0
     1
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'walkingTo) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'shootingTo) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'ball) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'ballVel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SPLMsgSend-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SPLMsgSend-request
    (cl:cons ':playerNum (playerNum msg))
    (cl:cons ':teamColor (teamColor msg))
    (cl:cons ':fallen (fallen msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':walkingTo (walkingTo msg))
    (cl:cons ':shootingTo (shootingTo msg))
    (cl:cons ':ballAge (ballAge msg))
    (cl:cons ':ball (ball msg))
    (cl:cons ':ballVel (ballVel msg))
    (cl:cons ':intention (intention msg))
    (cl:cons ':numOfDataBytes (numOfDataBytes msg))
))
;//! \htmlinclude SPLMsgSend-response.msg.html

(cl:defclass <SPLMsgSend-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SPLMsgSend-response (<SPLMsgSend-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SPLMsgSend-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SPLMsgSend-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<SPLMsgSend-response> is deprecated: use unb_robocup-srv:SPLMsgSend-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SPLMsgSend-response>) ostream)
  "Serializes a message object of type '<SPLMsgSend-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SPLMsgSend-response>) istream)
  "Deserializes a message object of type '<SPLMsgSend-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SPLMsgSend-response>)))
  "Returns string type for a service object of type '<SPLMsgSend-response>"
  "unb_robocup/SPLMsgSendResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SPLMsgSend-response)))
  "Returns string type for a service object of type 'SPLMsgSend-response"
  "unb_robocup/SPLMsgSendResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SPLMsgSend-response>)))
  "Returns md5sum for a message object of type '<SPLMsgSend-response>"
  "a61e78d7087f8ec58acadd5ee3b8e4e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SPLMsgSend-response)))
  "Returns md5sum for a message object of type 'SPLMsgSend-response"
  "a61e78d7087f8ec58acadd5ee3b8e4e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SPLMsgSend-response>)))
  "Returns full string definition for message of type '<SPLMsgSend-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SPLMsgSend-response)))
  "Returns full string definition for message of type 'SPLMsgSend-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SPLMsgSend-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SPLMsgSend-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SPLMsgSend-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SPLMsgSend)))
  'SPLMsgSend-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SPLMsgSend)))
  'SPLMsgSend-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SPLMsgSend)))
  "Returns string type for a service object of type '<SPLMsgSend>"
  "unb_robocup/SPLMsgSend")