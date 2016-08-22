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
 * Auto-generated by genmsg_cpp from file /home/nao/catkin_ws/src/unb_robocup/srv/GetJointAngle.srv
 *
 */


#ifndef UNB_ROBOCUP_MESSAGE_GETJOINTANGLERESPONSE_H
#define UNB_ROBOCUP_MESSAGE_GETJOINTANGLERESPONSE_H


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
struct GetJointAngleResponse_
{
  typedef GetJointAngleResponse_<ContainerAllocator> Type;

  GetJointAngleResponse_()
    : angle()  {
    }
  GetJointAngleResponse_(const ContainerAllocator& _alloc)
    : angle(_alloc)  {
    }



   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _angle_type;
  _angle_type angle;




  typedef boost::shared_ptr< ::unb_robocup::GetJointAngleResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::unb_robocup::GetJointAngleResponse_<ContainerAllocator> const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;

}; // struct GetJointAngleResponse_

typedef ::unb_robocup::GetJointAngleResponse_<std::allocator<void> > GetJointAngleResponse;

typedef boost::shared_ptr< ::unb_robocup::GetJointAngleResponse > GetJointAngleResponsePtr;
typedef boost::shared_ptr< ::unb_robocup::GetJointAngleResponse const> GetJointAngleResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::unb_robocup::GetJointAngleResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::unb_robocup::GetJointAngleResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace unb_robocup

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/openrobots/share/sensor_msgs/msg'], 'std_msgs': ['/opt/openrobots/share/std_msgs/msg'], 'geometry_msgs': ['/opt/openrobots/share/geometry_msgs/msg'], 'unb_robocup': ['/home/nao/catkin_ws/src/unb_robocup/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::unb_robocup::GetJointAngleResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::unb_robocup::GetJointAngleResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::unb_robocup::GetJointAngleResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::unb_robocup::GetJointAngleResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::unb_robocup::GetJointAngleResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::unb_robocup::GetJointAngleResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::unb_robocup::GetJointAngleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e227be5dbe0ddab6b23e84a527804c51";
  }

  static const char* value(const ::unb_robocup::GetJointAngleResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe227be5dbe0ddab6ULL;
  static const uint64_t static_value2 = 0xb23e84a527804c51ULL;
};

template<class ContainerAllocator>
struct DataType< ::unb_robocup::GetJointAngleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "unb_robocup/GetJointAngleResponse";
  }

  static const char* value(const ::unb_robocup::GetJointAngleResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::unb_robocup::GetJointAngleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] angle\n\
\n\
\n\
";
  }

  static const char* value(const ::unb_robocup::GetJointAngleResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::unb_robocup::GetJointAngleResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct GetJointAngleResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::unb_robocup::GetJointAngleResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::unb_robocup::GetJointAngleResponse_<ContainerAllocator>& v)
  {
    s << indent << "angle[]" << std::endl;
    for (size_t i = 0; i < v.angle.size(); ++i)
    {
      s << indent << "  angle[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.angle[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // UNB_ROBOCUP_MESSAGE_GETJOINTANGLERESPONSE_H
