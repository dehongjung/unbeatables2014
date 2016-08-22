; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude GetJointAngle-request.msg.html

(cl:defclass <GetJointAngle-request> (roslisp-msg-protocol:ros-message)
  ((joint
    :reader joint
    :initarg :joint
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetJointAngle-request (<GetJointAngle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetJointAngle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetJointAngle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<GetJointAngle-request> is deprecated: use unb_robocup-srv:GetJointAngle-request instead.")))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <GetJointAngle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:joint-val is deprecated.  Use unb_robocup-srv:joint instead.")
  (joint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetJointAngle-request>) ostream)
  "Serializes a message object of type '<GetJointAngle-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'joint))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetJointAngle-request>) istream)
  "Deserializes a message object of type '<GetJointAngle-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetJointAngle-request>)))
  "Returns string type for a service object of type '<GetJointAngle-request>"
  "unb_robocup/GetJointAngleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJointAngle-request)))
  "Returns string type for a service object of type 'GetJointAngle-request"
  "unb_robocup/GetJointAngleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetJointAngle-request>)))
  "Returns md5sum for a message object of type '<GetJointAngle-request>"
  "cc91a364e07d09a3093602824782e0d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetJointAngle-request)))
  "Returns md5sum for a message object of type 'GetJointAngle-request"
  "cc91a364e07d09a3093602824782e0d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetJointAngle-request>)))
  "Returns full string definition for message of type '<GetJointAngle-request>"
  (cl:format cl:nil "~%string[] joint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetJointAngle-request)))
  "Returns full string definition for message of type 'GetJointAngle-request"
  (cl:format cl:nil "~%string[] joint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetJointAngle-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetJointAngle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetJointAngle-request
    (cl:cons ':joint (joint msg))
))
;//! \htmlinclude GetJointAngle-response.msg.html

(cl:defclass <GetJointAngle-response> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetJointAngle-response (<GetJointAngle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetJointAngle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetJointAngle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<GetJointAngle-response> is deprecated: use unb_robocup-srv:GetJointAngle-response instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <GetJointAngle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:angle-val is deprecated.  Use unb_robocup-srv:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetJointAngle-response>) ostream)
  "Serializes a message object of type '<GetJointAngle-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'angle))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetJointAngle-response>) istream)
  "Deserializes a message object of type '<GetJointAngle-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'angle) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'angle)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetJointAngle-response>)))
  "Returns string type for a service object of type '<GetJointAngle-response>"
  "unb_robocup/GetJointAngleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJointAngle-response)))
  "Returns string type for a service object of type 'GetJointAngle-response"
  "unb_robocup/GetJointAngleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetJointAngle-response>)))
  "Returns md5sum for a message object of type '<GetJointAngle-response>"
  "cc91a364e07d09a3093602824782e0d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetJointAngle-response)))
  "Returns md5sum for a message object of type 'GetJointAngle-response"
  "cc91a364e07d09a3093602824782e0d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetJointAngle-response>)))
  "Returns full string definition for message of type '<GetJointAngle-response>"
  (cl:format cl:nil "float32[] angle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetJointAngle-response)))
  "Returns full string definition for message of type 'GetJointAngle-response"
  (cl:format cl:nil "float32[] angle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetJointAngle-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'angle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetJointAngle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetJointAngle-response
    (cl:cons ':angle (angle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetJointAngle)))
  'GetJointAngle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetJointAngle)))
  'GetJointAngle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJointAngle)))
  "Returns string type for a service object of type '<GetJointAngle>"
  "unb_robocup/GetJointAngle")