; Auto-generated. Do not edit!


(cl:in-package unb_robocup-srv)


;//! \htmlinclude GetImage-request.msg.html

(cl:defclass <GetImage-request> (roslisp-msg-protocol:ros-message)
  ((camera_number
    :reader camera_number
    :initarg :camera_number
    :type cl:integer
    :initform 0))
)

(cl:defclass GetImage-request (<GetImage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetImage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetImage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<GetImage-request> is deprecated: use unb_robocup-srv:GetImage-request instead.")))

(cl:ensure-generic-function 'camera_number-val :lambda-list '(m))
(cl:defmethod camera_number-val ((m <GetImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:camera_number-val is deprecated.  Use unb_robocup-srv:camera_number instead.")
  (camera_number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetImage-request>) ostream)
  "Serializes a message object of type '<GetImage-request>"
  (cl:let* ((signed (cl:slot-value msg 'camera_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetImage-request>) istream)
  "Deserializes a message object of type '<GetImage-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera_number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetImage-request>)))
  "Returns string type for a service object of type '<GetImage-request>"
  "unb_robocup/GetImageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetImage-request)))
  "Returns string type for a service object of type 'GetImage-request"
  "unb_robocup/GetImageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetImage-request>)))
  "Returns md5sum for a message object of type '<GetImage-request>"
  "decd1be50aa83a95546b0727b3cf4d43")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetImage-request)))
  "Returns md5sum for a message object of type 'GetImage-request"
  "decd1be50aa83a95546b0727b3cf4d43")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetImage-request>)))
  "Returns full string definition for message of type '<GetImage-request>"
  (cl:format cl:nil "~%int32 camera_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetImage-request)))
  "Returns full string definition for message of type 'GetImage-request"
  (cl:format cl:nil "~%int32 camera_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetImage-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetImage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetImage-request
    (cl:cons ':camera_number (camera_number msg))
))
;//! \htmlinclude GetImage-response.msg.html

(cl:defclass <GetImage-response> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass GetImage-response (<GetImage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetImage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetImage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unb_robocup-srv:<GetImage-response> is deprecated: use unb_robocup-srv:GetImage-response instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <GetImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unb_robocup-srv:image-val is deprecated.  Use unb_robocup-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetImage-response>) ostream)
  "Serializes a message object of type '<GetImage-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetImage-response>) istream)
  "Deserializes a message object of type '<GetImage-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetImage-response>)))
  "Returns string type for a service object of type '<GetImage-response>"
  "unb_robocup/GetImageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetImage-response)))
  "Returns string type for a service object of type 'GetImage-response"
  "unb_robocup/GetImageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetImage-response>)))
  "Returns md5sum for a message object of type '<GetImage-response>"
  "decd1be50aa83a95546b0727b3cf4d43")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetImage-response)))
  "Returns md5sum for a message object of type 'GetImage-response"
  "decd1be50aa83a95546b0727b3cf4d43")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetImage-response>)))
  "Returns full string definition for message of type '<GetImage-response>"
  (cl:format cl:nil "sensor_msgs/Image image~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetImage-response)))
  "Returns full string definition for message of type 'GetImage-response"
  (cl:format cl:nil "sensor_msgs/Image image~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetImage-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetImage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetImage-response
    (cl:cons ':image (image msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetImage)))
  'GetImage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetImage)))
  'GetImage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetImage)))
  "Returns string type for a service object of type '<GetImage>"
  "unb_robocup/GetImage")