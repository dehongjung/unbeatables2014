; Auto-generated. Do not edit!


(cl:in-package unb_robocup-msg)


;//! \htmlinclude TrackLines.msg.html

(cl:defclass <TrackLines> (roslisp-msg-protocol:ros-message)
  ((line_is_close
    :reader line_is_close
    :initarg :line_is_close
    :type cl:integer
    :initform 0)
   (point_is_close
    :reader point_is_close
    :initarg :point_is_close
    :type cl:integer
    :initform 0))
)

(cl:defclass TrackLines (<TrackLines>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackLines>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackLines)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-msg:<TrackLines> is deprecated: use unb_robocup-msg:TrackLines instead.")))

(cl:ensure-generic-function 'line_is_close-val :lambda-list '(m))
(cl:defmethod line_is_close-val ((m <TrackLines>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-msg:line_is_close-val is deprecated.  Use unb_robocup-msg:line_is_close instead.")
  (line_is_close m))

(cl:ensure-generic-function 'point_is_close-val :lambda-list '(m))
(cl:defmethod point_is_close-val ((m <TrackLines>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-msg:point_is_close-val is deprecated.  Use unb_robocup-msg:point_is_close instead.")
  (point_is_close m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackLines>) ostream)
  "Serializes a message object of type '<TrackLines>"
  (cl:let* ((signed (cl:slot-value msg 'line_is_close)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'point_is_close)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackLines>) istream)
  "Deserializes a message object of type '<TrackLines>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'line_is_close) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'point_is_close) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackLines>)))
  "Returns string type for a message object of type '<TrackLines>"
  "unb_robocup/TrackLines")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackLines)))
  "Returns string type for a message object of type 'TrackLines"
  "unb_robocup/TrackLines")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackLines>)))
  "Returns md5sum for a message object of type '<TrackLines>"
  "f80d4662799e95d38eaeedb026508631")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackLines)))
  "Returns md5sum for a message object of type 'TrackLines"
  "f80d4662799e95d38eaeedb026508631")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackLines>)))
  "Returns full string definition for message of type '<TrackLines>"
  (cl:format cl:nil "#Servico para parar retornar centroide e angulo das linhas~%int32 line_is_close ~%int32 point_is_close~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackLines)))
  "Returns full string definition for message of type 'TrackLines"
  (cl:format cl:nil "#Servico para parar retornar centroide e angulo das linhas~%int32 line_is_close ~%int32 point_is_close~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackLines>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackLines>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackLines
    (cl:cons ':line_is_close (line_is_close msg))
    (cl:cons ':point_is_close (point_is_close msg))
))
