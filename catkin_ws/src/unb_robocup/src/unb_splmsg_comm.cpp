#include"SPLStandardMessage.h"
#include "UdpComm.h"

#include<exception>

#include<ros/ros.h>

#include <alcore/altypes.h>
#include <alcore/alerror.h>
#include<alproxies/almemoryproxy.h>

#include<unb_robocup/SPLMsgGet.h>
#include<unb_robocup/SPLMsgSend.h>
class SPLMsg
{

    private:
        static SPLMsg* theInstance; /**< The only instance of this class. */
    
        UdpComm* udp; /**< The socket used to communicate. */
        
    public:
    
        ros::NodeHandle node_handle_;
        
        //Service
        ros::ServiceServer ss_get_spl_msg_;
        ros::ServiceServer ss_send_spl_msg_;
        
        //IP Adress
        AL::ALValue NaoIP;

        //Memory proxy
        AL::ALMemoryProxy* memory;    
        
        SPLMsg(ros::NodeHandle& node_handle)
        {
            theInstance = this;
            node_handle_ = node_handle;
            
            NaoIP = "127.0.0.1";
            
            ss_get_spl_msg_ = node_handle.advertiseService("/unb_robocup/spl_msg/get", &SPLMsg::getSPLMsgCallback, this);
            ss_send_spl_msg_ = node_handle.advertiseService("/unb_robocup/spl_msg/send", &SPLMsg::sendSPLMsgCallback, this);
                    
            memory = new AL::ALMemoryProxy(NaoIP);
          
            try{  
              udp = new UdpComm();
              if(!udp->setBlocking(false) ||
                 !udp->setBroadcast(true) ||
                 !udp->bind("0.0.0.0", 9559) ||
                 !udp->setTarget(UdpComm::getWifiBroadcastAddress(), 9559) ||
                 !udp->setLoopback(false))
              {
                fprintf(stderr, "Could not open UDP port\n");
                delete udp;
                udp = 0;
                // continue, because button interface will still work
              }
              
            }
            catch(AL::ALError& e)
            {
              fprintf(stderr, "splmsg: %s\n", e.toString().c_str());
            }

        }
        ~SPLMsg()
        {
            if(udp)
                delete udp;
        };
        
        /**
       * Receives a packet from the other robot.
       * Packets are only accepted when the team number is know (nonzero) and
       * they are addressed to this team.
       */
        bool getSPLMsgCallback(unb_robocup::SPLMsgGet::Request& request, unb_robocup::SPLMsgGet::Response& response)
        {
            AL::ALValue team_color_value = memory->getData("GameCtrl/teamColour");
            int team_color = team_color_value;
            
            bool received = false;
            int size;
            SPLStandardMessage buffer;
            while(udp && (size = udp->read((char*) &buffer, sizeof(buffer))) > 0)
            {
                ROS_INFO_STREAM("aoujsdhas"); //Print robot status
              if(size == sizeof(buffer) &&
                 !std::memcmp(&buffer, SPL_STANDARD_MESSAGE_STRUCT_HEADER, 4) &&
                 buffer.version == SPL_STANDARD_MESSAGE_STRUCT_VERSION &&
                 (buffer.teamColor == team_color))
              {
                received = true;
                response.playerNum = buffer.playerNum;
                response.teamColor = buffer.teamColor;
                response.fallen = buffer.fallen;
                response.pose[0] = buffer.pose[0];
                response.pose[1] = buffer.pose[1];
                response.pose[2] = buffer.pose[2];
                response.walkingTo[0] = buffer.walkingTo[0];
                response.walkingTo[1] = buffer.walkingTo[1];
                response.shootingTo[0] = buffer.shootingTo[0];
                response.shootingTo[1] = buffer.shootingTo[1];
                response.ballAge = buffer.ballAge;
                response.ball[0] = buffer.ball[0];
                response.ball[1] = buffer.ball[1];
                response.ballVel[0] = buffer.ballVel[0];
                response.ballVel[1] = buffer.ballVel[1];
                response.intention = buffer.intention;
                response.numOfDataBytes = buffer.numOfDataBytes;
              }
            }
            return received;
        }    
        
       /**
       * Sends the return packet other robot.
       * 
       */
      bool sendSPLMsgCallback(unb_robocup::SPLMsgSend::Request& request, unb_robocup::SPLMsgSend::Response& response)
      {
        SPLStandardMessage returnPacket;
        returnPacket.playerNum = (uint8_t)request.playerNum;
        returnPacket.teamColor = (uint8_t)request.teamColor;
        returnPacket.fallen = (uint8_t)request.fallen;
        returnPacket.pose[0] = request.pose[0];
        returnPacket.pose[1] = request.pose[1];
        returnPacket.pose[2] = request.pose[2];
        returnPacket.walkingTo[0] = request.walkingTo[0];
        returnPacket.walkingTo[1] = request.walkingTo[1];
        returnPacket.shootingTo[0] = request.shootingTo[0];
        returnPacket.shootingTo[1] = request.shootingTo[1];
        returnPacket.ballAge = (int32_t)request.ballAge;
        returnPacket.ball[0] = request.ball[0];
        returnPacket.ball[1] = request.ball[1];
        returnPacket.ballVel[0] = request.ballVel[0];
        returnPacket.ballVel[1] = request.ballVel[1];
        returnPacket.intention = request.intention;
        returnPacket.numOfDataBytes = (uint16_t)request.numOfDataBytes;
        return !udp || udp->write((const char*) &returnPacket, sizeof(returnPacket));
      }

};

SPLMsg* SPLMsg::theInstance = 0;

int main(int argc, char** argv)
{
    //Always need to do this
    ros::init(argc, argv, "unb_splmsg_comm_node");
    ros::NodeHandle node_handle;

    SPLMsg spl_msg_comm(node_handle);
    
    try {
        ros::spin();
    }
    catch (std::exception& e){
        ROS_INFO_STREAM("shutdown unb_splmsg_comm_node");
    }
        
    return 0;
}


