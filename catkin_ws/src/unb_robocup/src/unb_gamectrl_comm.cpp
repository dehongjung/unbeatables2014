#include"RoboCupGameControlData.h"

#include<exception>

#include<ros/ros.h>

#include<alproxies/almemoryproxy.h>

#include<unb_robocup/GetRobotState.h>

class GameCtrlComm
{
	public:
	
		ros::NodeHandle node_handle_;
		
        //Get State Service Server
        ros::ServiceServer ss_get_robot_state_;
        
        //Memory proxy
        AL::ALMemoryProxy* memory;	
        
		GameCtrlComm(ros::NodeHandle& node_handle)
		{
			node_handle_ = node_handle;
			
			ss_get_robot_state_ = node_handle.advertiseService("/unb_robocup/robot_state/get", &GameCtrlComm::getRobotStateCallback, this);
					
		    memory = new AL::ALMemoryProxy("127.0.0.1");

		}
		~GameCtrlComm()
		{
		    delete memory;
		};
		
        bool getRobotStateCallback(unb_robocup::GetRobotState::Request& request, unb_robocup::GetRobotState::Response& response)
        {
        
            AL::ALValue team_number_value = memory->getData("GameCtrl/teamNumber");
            int team_number = team_number_value;

            AL::ALValue player_number_value = memory->getData("GameCtrl/playerNumber");
            int player_number = player_number_value;
            
            AL::ALValue team_color_value = memory->getData("GameCtrl/teamColour");
            int team_color = team_color_value;
        
            RoboCupGameControlData gameCtrlData; // should probably zero it the first time it is used
            AL::ALValue value = memory->getData("GameCtrl/RoboCupGameControlData");
            if (value.isBinary() && value.getSize() == sizeof(RoboCupGameControlData))
                memcpy(&gameCtrlData, value, sizeof(RoboCupGameControlData));
            
            ROS_INFO_STREAM(" " << gameCtrlData.teams[team_color].players[player_number-1].penalty); //Print robot status
            ROS_INFO_STREAM(" team number=" << team_number <<" team color=" << team_color <<"  player=" << player_number); //Print robot status
            
            //Game states (STATE_INITIAL/STATE_READY/STATE_SET/STATE_PLAYING/STATE_FINISHED)
            response.game_state = gameCtrlData.state; 
            //Robot states (PENALTY_NONE/PENALTY_SPL_BALL_HOLDING/PENALTY_SPL_PLAYER_PUSHING/PENALTY_SPL_OBSTRUCTION/PENALTY_SPL_INACTIVE_PLAYER/PENALTY_SPL_ILLEGAL_DEFENDER/PENALTY_SPL_LEAVING_THE_FIELD/PENALTY_SPL_PLAYING_WITH_HANDS/PENALTY_SPL_REQUEST_FOR_PICKUP/PENALTY_SPL_COACH_MOTION
            response.robot_state = gameCtrlData.teams[team_color].players[player_number-1].penalty;
            return true;
        }	

};

int main(int argc, char** argv)
{
	//Always need to do this
	ros::init(argc, argv, "unb_gamectrl_comm_node");
	ros::NodeHandle node_handle;

    GameCtrlComm game_ctrl_comm(node_handle);
	
	try {
	    ros::spin();
	}
	catch (std::exception& e){
	    ROS_INFO_STREAM("shutdown unb_gamectrl_comm_node");
	}
		
	return 0;
}


