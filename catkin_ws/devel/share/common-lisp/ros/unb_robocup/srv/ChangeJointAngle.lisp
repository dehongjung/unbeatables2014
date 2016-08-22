; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude ChangeJointAngle-request.msg.html

(cl:defclass <ChangeJointAngle-request> (roslisp-msg-protocol:ros-message)
  ((joint
    :reader joint
    :initarg :joint
    :type cl:string
    :initform "")
   (angle
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

(cl:defclass ChangeJointAngle-request (<ChangeJointAngle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeJointAngle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeJointAngle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<ChangeJointAngle-request> is deprecated: use unb_robocup-srv:ChangeJointAngle-request instead.")))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <ChangeJointAngle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:joint-val is deprecated.  Use unb_robocup-srv:joint instead.")
  (joint m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <ChangeJointAngle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:angle-val is deprecated.  Use unb_robocup-srv:angle instead.")
  (angle m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <ChangeJointAngle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:speed-val is deprecated.  Use unb_robocup-srv:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeJointAngle-request>) ostream)
  "Serializes a message object of type '<ChangeJointAngle-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeJointAngle-request>) istream)
  "Deserializes a message object of type '<ChangeJointAngle-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeJointAngle-request>)))
  "Returns string type for a service object of type '<ChangeJointAngle-request>"
  "unb_robocup/ChangeJointAngleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeJointAngle-request)))
  "Returns string type for a service object of type 'ChangeJointAngle-request"
  "unb_robocup/ChangeJointAngleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeJointAngle-request>)))
  "Returns md5sum for a message object of type '<ChangeJointAngle-request>"
  "5faa2de8b324f062b329adb225ede1f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeJointAngle-request)))
  "Returns md5sum for a message object of type 'ChangeJointAngle-request"
  "5faa2de8b324f062b329adb225ede1f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeJointAngle-request>)))
  "Returns full string definition for message of type '<ChangeJointAngle-request>"
  (cl:format cl:nil "~%string joint~%float32 angle~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeJointAngle-request)))
  "Returns full string definition for message of type 'ChangeJointAngle-request"
  (cl:format cl:nil "~%string joint~%float32 angle~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeJointAngle-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'joint))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeJointAngle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeJointAngle-request
    (cl:cons ':joint (joint msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':speed (speed msg))
))
;//! \htmlinclude ChangeJointAngle-response.msg.html

(cl:defclass <ChangeJointAngle-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ChangeJointAngle-response (<ChangeJointAngle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeJointAngle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeJointAngle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<ChangeJointAngle-response> is deprecated: use unb_robocup-srv:ChangeJointAngle-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeJointAngle-response>) ostream)
  "Serializes a message object of type '<ChangeJointAngle-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeJointAngle-response>) istream)
  "Deserializes a message object of type '<ChangeJointAngle-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeJointAngle-response>)))
  "Returns string type for a service object of type '<ChangeJointAngle-response>"
  "unb_robocup/ChangeJointAngleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeJointAngle-response)))
  "Returns string type for a service object of type 'ChangeJointAngle-response"
  "unb_robocup/ChangeJointAngleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeJointAngle-response>)))
  "Returns md5sum for a message object of type '<ChangeJointAngle-response>"
  "5faa2de8b324f062b329adb225ede1f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeJointAngle-response)))
  "Returns md5sum for a message object of type 'ChangeJointAngle-response"
  "5faa2de8b324f062b329adb225ede1f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeJointAngle-response>)))
  "Returns full string definition for message of type '<ChangeJointAngle-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeJointAngle-response)))
  "Returns full string definition for message of type 'ChangeJointAngle-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeJointAngle-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeJointAngle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeJointAngle-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeJointAngle)))
  'ChangeJointAngle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeJointAngle)))
  'ChangeJointAngle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeJointAngle)))
  "Returns string type for a service object of type '<ChangeJointAngle>"
  "unb_robocup/ChangeJointAngle")