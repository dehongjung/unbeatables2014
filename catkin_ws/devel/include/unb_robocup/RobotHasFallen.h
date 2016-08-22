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
 * Auto-generated by gensrv_cpp from file /home/nao/catkin_ws/src/unb_robocup/srv/RobotHasFallen.srv
 *
 */


#ifndef UNB_ROBOCUP_MESSAGE_ROBOTHASFALLEN_H
#define UNB_ROBOCUP_MESSAGE_ROBOTHASFALLEN_H

#include <ros/service_traits.h>


#include <unb_robocup/RobotHasFallenRequest.h>
#include <unb_robocup/RobotHasFallenResponse.h>


namespace unb_robocup
{

struct RobotHasFallen
{

typedef RobotHasFallenRequest Request;
typedef RobotHasFallenResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct RobotHasFallen
} // namespace unb_robocup


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::unb_robocup::RobotHasFallen > {
  static const char* value()
  {
    return "1f58f8edb8f9e3db817916c6b3816638";
  }

  static const char* value(const ::unb_robocup::RobotHasFallen&) { return value(); }
};

template<>
struct DataType< ::unb_robocup::RobotHasFallen > {
  static const char* value()
  {
    return "unb_robocup/RobotHasFallen";
  }

  static const char* value(const ::unb_robocup::RobotHasFallen&) { return value(); }
};


// service_traits::MD5Sum< ::unb_robocup::RobotHasFallenRequest> should match 
// service_traits::MD5Sum< ::unb_robocup::RobotHasFallen > 
template<>
struct MD5Sum< ::unb_robocup::RobotHasFallenRequest>
{
  static const char* value()
  {
    return MD5Sum< ::unb_robocup::RobotHasFallen >::value();
  }
  static const char* value(const ::unb_robocup::RobotHasFallenRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::unb_robocup::RobotHasFallenRequest> should match 
// service_traits::DataType< ::unb_robocup::RobotHasFallen > 
template<>
struct DataType< ::unb_robocup::RobotHasFallenRequest>
{
  static const char* value()
  {
    return DataType< ::unb_robocup::RobotHasFallen >::value();
  }
  static const char* value(const ::unb_robocup::RobotHasFallenRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::unb_robocup::RobotHasFallenResponse> should match 
// service_traits::MD5Sum< ::unb_robocup::RobotHasFallen > 
template<>
struct MD5Sum< ::unb_robocup::RobotHasFallenResponse>
{
  static const char* value()
  {
    return MD5Sum< ::unb_robocup::RobotHasFallen >::value();
  }
  static const char* value(const ::unb_robocup::RobotHasFallenResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::unb_robocup::RobotHasFallenResponse> should match 
// service_traits::DataType< ::unb_robocup::RobotHasFallen > 
template<>
struct DataType< ::unb_robocup::RobotHasFallenResponse>
{
  static const char* value()
  {
    return DataType< ::unb_robocup::RobotHasFallen >::value();
  }
  static const char* value(const ::unb_robocup::RobotHasFallenResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // UNB_ROBOCUP_MESSAGE_ROBOTHASFALLEN_H