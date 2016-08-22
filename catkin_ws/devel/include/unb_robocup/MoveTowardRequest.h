/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by genmsg_cpp from file /home/nao/catkin_ws/src/unb_robocup/srv/MoveToward.srv
 *
 */


#ifndef UNB_ROBOCUP_MESSAGE_MOVETOWARDREQUEST_H
#define UNB_ROBOCUP_MESSAGE_MOVETOWARDREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace unb_robocup
{
template <class ContainerAllocator>
struct MoveTowardRequest_
{
  typedef MoveTowardRequest_<ContainerAllocator> Type;

  MoveTowardRequest_()
    : x_vel_normalized(0.0)
    , y_vel_normalized(0.0)
    , theta_vel_normalized(0.0)  {
    }
  MoveTowardRequest_(const ContainerAllocator& _alloc)
    : x_vel_normalized(0.0)
    , y_vel_normalized(0.0)
    , theta_vel_normalized(0.0)  {
    }



   typedef float _x_vel_normalized_type;
  _x_vel_normalized_type x_vel_normalized;

   typedef float _y_vel_normalized_type;
  _y_vel_normalized_type y_vel_normalized;

   typedef float _theta_vel_normalized_type;
  _theta_vel_normalized_type theta_vel_normalized;




  typedef boost::shared_ptr< ::unb_robocup::MoveTowardRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::unb_robocup::MoveTowardRequest_<ContainerAllocator> const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;

}; // struct MoveTowardRequest_

typedef ::unb_robocup::MoveTowardRequest_<std::allocator<void> > MoveTowardRequest;

typedef boost::shared_ptr< ::unb_robocup::MoveTowardRequest > MoveTowardRequestPtr;
typedef boost::shared_ptr< ::unb_robocup::MoveTowardRequest const> MoveTowardRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::unb_robocup::MoveTowardRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::unb_robocup::MoveTowardRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace unb_robocup

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/openrobots/share/sensor_msgs/msg'], 'std_msgs': ['/opt/openrobots/share/std_msgs/msg'], 'geometry_msgs': ['/opt/openrobots/share/geometry_msgs/msg'], 'unb_robocup': ['/home/nao/catkin_ws/src/unb_robocup/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::unb_robocup::MoveTowardRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::unb_robocup::MoveTowardRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::unb_robocup::MoveTowardRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::unb_robocup::MoveTowardRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::unb_robocup::MoveTowardRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::unb_robocup::MoveTowardRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::unb_robocup::MoveTowardRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fcd97d3de0b5e78e257bd6741173adbd";
  }

  static const char* value(const ::unb_robocup::MoveTowardRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfcd97d3de0b5e78eULL;
  static const uint64_t static_value2 = 0x257bd6741173adbdULL;
};

template<class ContainerAllocator>
struct DataType< ::unb_robocup::MoveTowardRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "unb_robocup/MoveTowardRequest";
  }

  static const char* value(const ::unb_robocup::MoveTowardRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::unb_robocup::MoveTowardRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
float32 x_vel_normalized\n\
float32 y_vel_normalized\n\
float32 theta_vel_normalized\n\
\n\
";
  }

  static const char* value(const ::unb_robocup::MoveTowardRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::unb_robocup::MoveTowardRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x_vel_normalized);
      stream.next(m.y_vel_normalized);
      stream.next(m.theta_vel_normalized);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct MoveTowardRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::unb_robocup::MoveTowardRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::unb_robocup::MoveTowardRequest_<ContainerAllocator>& v)
  {
    s << indent << "x_vel_normalized: ";
    Printer<float>::stream(s, indent + "  ", v.x_vel_normalized);
    s << indent << "y_vel_normalized: ";
    Printer<float>::stream(s, indent + "  ", v.y_vel_normalized);
    s << indent << "theta_vel_normalized: ";
    Printer<float>::stream(s, indent + "  ", v.theta_vel_normalized);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UNB_ROBOCUP_MESSAGE_MOVETOWARDREQUEST_H
