; Auto-generated. Do not edit!


(cl:in-package unb_robocup-msg)


;//! \htmlinclude SetSecurityDistance.msg.html

(cl:defclass <SetSecurityDistance> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetSecurityDistance (<SetSecurityDistance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSecurityDistance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSecurityDistance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-msg:<SetSecurityDistance> is deprecated: use unb_robocup-msg:SetSecurityDistance instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <SetSecurityDistance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-msg:distance-val is deprecated.  Use unb_robocup-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSecurityDistance>) ostream)
  "Serializes a message object of type '<SetSecurityDistance>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSecurityDistance>) istream)
  "Deserializes a message object of type '<SetSecurityDistance>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSecurityDistance>)))
  "Returns string type for a message object of type '<SetSecurityDistance>"
  "unb_robocup/SetSecurityDistance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSecurityDistance)))
  "Returns string type for a message object of type 'SetSecurityDistance"
  "unb_robocup/SetSecurityDistance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSecurityDistance>)))
  "Returns md5sum for a message object of type '<SetSecurityDistance>"
  "6e77fb10f0c8b4833ec273aa9ac74459")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSecurityDistance)))
  "Returns md5sum for a message object of type 'SetSecurityDistance"
  "6e77fb10f0c8b4833ec273aa9ac74459")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSecurityDistance>)))
  "Returns full string definition for message of type '<SetSecurityDistance>"
  (cl:format cl:nil "#Servico para parar pose do NAO~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSecurityDistance)))
  "Returns full string definition for message of type 'SetSecurityDistance"
  (cl:format cl:nil "#Servico para parar pose do NAO~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSecurityDistance>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSecurityDistance>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSecurityDistance
    (cl:cons ':distance (distance msg))
))
