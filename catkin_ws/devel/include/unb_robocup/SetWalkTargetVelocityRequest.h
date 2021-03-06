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
 * Auto-generated by genmsg_cpp from file /home/nao/catkin_ws/src/unb_robocup/srv/SetWalkTargetVelocity.srv
 *
 */


#ifndef UNB_ROBOCUP_MESSAGE_SETWALKTARGETVELOCITYREQUEST_H
#define UNB_ROBOCUP_MESSAGE_SETWALKTARGETVELOCITYREQUEST_H


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
struct SetWalkTargetVelocityRequest_
{
  typedef SetWalkTargetVelocityRequest_<ContainerAllocator> Type;

  SetWalkTargetVelocityRequest_()
    : x(0.0)
    , y(0.0)
    , theta(0.0)
    , freq(0.0)  {
    }
  SetWalkTargetVelocityRequest_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , theta(0.0)
    , freq(0.0)  {
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _theta_type;
  _theta_type theta;

   typedef float _freq_type;
  _freq_type freq;




  typedef boost::shared_ptr< ::unb_robocup::SetWalkTargetVelocityRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::unb_robocup::SetWalkTargetVelocityRequest_<ContainerAllocator> const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;

}; // struct SetWalkTargetVelocityRequest_

typedef ::unb_robocup::SetWalkTargetVelocityRequest_<std::allocator<void> > SetWalkTargetVelocityRequest;

typedef boost::shared_ptr< ::unb_robocup::SetWalkTargetVelocityRequest > SetWalkTargetVelocityRequestPtr;
typedef boost::shared_ptr< ::unb_robocup::SetWalkTargetVelocityRequest const> SetWalkTargetVelocityRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::unb_robocup::SetWalkTargetVelocityRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::unb_robocup::SetWalkTargetVelocityRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::unb_robocup::SetWalkTargetVelocityRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::unb_robocup::SetWalkTargetVelocityRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::unb_robocup::SetWalkTargetVelocityRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::unb_robocup::SetWalkTargetVelocityRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::unb_robocup::SetWalkTargetVelocityRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::unb_robocup::SetWalkTargetVelocityRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::unb_robocup::SetWalkTargetVelocityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "45a09b3abb151f04c7fe81226aff4dbc";
  }

  static const char* value(const ::unb_robocup::SetWalkTargetVelocityRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x45a09b3abb151f04ULL;
  static const uint64_t static_value2 = 0xc7fe81226aff4dbcULL;
};

template<class ContainerAllocator>
struct DataType< ::unb_robocup::SetWalkTargetVelocityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "unb_robocup/SetWalkTargetVelocityRequest";
  }

  static const char* value(const ::unb_robocup::SetWalkTargetVelocityRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::unb_robocup::SetWalkTargetVelocityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
float32 x\n\
float32 y\n\
float32 theta\n\
float32 freq\n\
\n\
";
  }

  static const char* value(const ::unb_robocup::SetWalkTargetVelocityRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::unb_robocup::SetWalkTargetVelocityRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.theta);
      stream.next(m.freq);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct SetWalkTargetVelocityRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::unb_robocup::SetWalkTargetVelocityRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::unb_robocup::SetWalkTargetVelocityRequest_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "theta: ";
    Printer<float>::stream(s, indent + "  ", v.theta);
    s << indent << "freq: ";
    Printer<float>::stream(s, indent + "  ", v.freq);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UNB_ROBOCUP_MESSAGE_SETWALKTARGETVELOCITYREQUEST_H
