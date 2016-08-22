#!/usr/bin/env python

##############################################################################
#                                INCLUDES
##############################################################################
import roslib; roslib.load_manifest('unb_robocup')
import rospy
#import nao_msgs

#Naoqi
from naoqi import ALProxy
from naoqi import ALModule
from naoqi import ALBroker

#Messages
from std_msgs.msg import Bool
from unb_robocup.msg import *
from nav_msgs.msg import Odometry

#Services

from unb_robocup.srv import *

import sys
import time

from optparse import OptionParser
# Global variable to store the StartRos module instance
StartUnbRobocup = None
memory = None
flag_can_start=0
leds = None
flag_button_pressed=0
chest_button_can_work=0
##############################################################################
#                            NODE MAIN ROUTINE
##############################################################################

def main():

    # Initialize Node. NOTE: NO INTERRUPT SIGNAL BY DEFAULT
    rospy.init_node(name='robot_states_node', disable_signals=True)
    
    parser = OptionParser()
    parser.add_option("--pip",
        help="Parent broker port. The IP address or your robot",
        dest="pip")
    parser.add_option("--pport",
        help="Parent broker port. The port NAOqi is listening to",
        dest="pport",
        type="int")
    parser.set_defaults(
        #pip=NAO_IP,
        pip="127.0.0.1",
        pport=9559)

    (opts, args_) = parser.parse_args()
    pip   = opts.pip
    pport = opts.pport

    # We need this broker to be able to construct
    # NAOqi modules and subscribe to other modules
    # The broker must stay alive until the program exists
    myBroker = ALBroker("myBroker",
       "0.0.0.0",   # listen to anyone
       0,           # find a free port and use it
       pip,         # parent broker IP
       pport)       # parent broker port


    # Warning: StartUnbRobocup must be a global variable
    # The name given to the constructor must be the name of the
    # variable
    global StartUnbRobocup
    
    StartUnbRobocup = StartUnbRobocupModule("StartUnbRobocup")
    
    # Initialize object
    #Team Number (TEAM_BLUE = 98 / TEAM_RED = 99)
    #Team Color (TEAM_BLUE/Left_side = 0/ TEAM_RED/Right_side = 1)
    robot_states = SPLStates(99,1,4) #Team number, team side, player number    
    
    try:
        robot_states.Loop()
    except KeyboardInterrupt:
        #Re-enable default button behaviour
        robot_states.al_sentinel_proxy.enableDefaultActionSimpleClick(True)
        robot_states.al_sentinel_proxy.enableDefaultActionDoubleClick(True)
        robot_states.al_sentinel_proxy.enableDefaultActionTripleClick(True)
        memory.unsubscribeToEvent("ChestButtonPressed","StartUnbRobocup")
        # Desliga o stiffness depois do CTRL+C
        robot_states.sc_go_to_posture('Crouch',0.7) # Move to crouch position before disabling stiffness
        robot_states.sc_stiffness_off()
        rospy.signal_shutdown('Keyboard interrupt')    
        
    #Re-enable default button behaviour
    robot_states.al_sentinel_proxy.enableDefaultActionSimpleClick(True)
    robot_states.al_sentinel_proxy.enableDefaultActionDoubleClick(True)
    robot_states.al_sentinel_proxy.enableDefaultActionTripleClick(True)
    memory.unsubscribeToEvent("ChestButtonPressed","StartUnbRobocup")
    # Desliga o stiffness depois do CTRL+C
    robot_states.sc_go_to_posture('Crouch',0.7) # Move to crouch position before disabling stiffness
    robot_states.sc_stiffness_off()
    rospy.signal_shutdown('Keyboard interrupt')         
    

    

##############################################################################
#                            CLASS RobotPlot
##############################################################################

class SPLStates:

    # UnBeatables Behaviour State Machine
    BEHAVE_STATE_NULL      = 99
    BEHAVE_STATE_INITIAL   = 0
    BEHAVE_STATE_READY     = 1
    BEHAVE_STATE_SET       = 2
    BEHAVE_STATE_PLAYING   = 3 
    BEHAVE_STATE_FINISHED  = 4
    BEHAVE_STATE_PENALIZED = 5  

    #SPL Penalties
    PENALTY_NONE                   = 0
    PENALTY_SPL_BALL_HOLDING       = 1
    PENALTY_SPL_PLAYER_PUSHING     = 2
    PENALTY_SPL_OBSTRUCTION        = 3
    PENALTY_SPL_INACTIVE_PLAYER    = 4
    PENALTY_SPL_ILLEGAL_DEFENDER   = 5
    PENALTY_SPL_LEAVING_THE_FIELD  = 6
    PENALTY_SPL_PLAYING_WITH_HANDS = 7
    PENALTY_SPL_REQUEST_FOR_PICKUP = 8
    PENALTY_SPL_COACH_MOTION       = 9
    
    #SPL Game States
    STATE_INITIAL  = 0
    STATE_READY    = 1
    STATE_SET      = 2
    STATE_PLAYING  = 3
    STATE_FINISHED = 4
    
    ##############################################################################
    #                         CONSTRUCTORS AND DESTRUCTORS
    ##############################################################################

    def __init__(self, team_number=0, team_colour=0, player_number=0):
        
        self.wait2s = rospy.Rate(0.1)
        rospy.wait_for_service("/unb_robocup/robot_state/get")
        rospy.wait_for_service("/unb_robocup/motion/move_joint")
        rospy.wait_for_service("/unb_robocup/vision/track_ball")
        rospy.wait_for_service("/unb_robocup/sensors/get_imu")

        #Disable default button behaviour
        self.al_sentinel_proxy = ALProxy("ALSentinel","127.0.0.1",9559)
        self.al_sentinel_proxy.enableDefaultActionSimpleClick(False)
        self.al_sentinel_proxy.enableDefaultActionDoubleClick(False)
        self.al_sentinel_proxy.enableDefaultActionTripleClick(False)
        
        #Set team and player
        self.al_memory_proxy = ALProxy("ALMemory","127.0.0.1",9559)
        self.al_memory_proxy.insertData("GameCtrl/teamNumber",   team_number)    #Team Number (TEAM_BLUE = 98 / TEAM_RED = 99
        self.al_memory_proxy.insertData("GameCtrl/teamColour",   team_colour)    #Team Side (TEAM_LEFT = 0/ TEAM_RIGHT = 1)
        self.al_memory_proxy.insertData("GameCtrl/playerNumber", player_number)  #Player Number (de 1 a 11)

        self.al_text_proxy = ALProxy("ALTextToSpeech","127.0.0.1",9559)
        self.al_leds_proxy = ALProxy("ALLeds","127.0.0.1",9559)
        global flag_can_start
        flag_can_start=0
        global chest_button_can_work
        chest_button_can_work=0
        rospy.loginfo("Press Chest Button to Start")
        #self.al_text_proxy.say("Press Chest Button to Start")
        self.al_text_proxy.say("Hakuna Matata")
        while(flag_can_start==0):
            time.sleep(1)
        rospy.loginfo("Starting") 
        self.al_text_proxy.say("Lets Start")
              
        self.team_colour    = team_colour
        self.state          = SPLStates.BEHAVE_STATE_NULL
        self.previous_state = SPLStates.BEHAVE_STATE_NULL
        self.game_state     = SPLStates.STATE_INITIAL
        self.robot_state    = SPLStates.PENALTY_NONE
        self.state_changed  = False

        #Set State Behaviour Variables
        self.head_direction = 1.0
        self.flag_found_ball = False
        self.set_counter = 0
        self.set_angle = 0.785
        self.flag_photo_taked = 0

        #Ready State Behaviour Variables
        self.is_walking = False
        self.initial_ready_position = 0.0
        self.initial_z_theta = 0.0
        self.flag_ready_sonar_on = False
        self.flag_arrived_destination = False
        self.ready_turn_direction = -1.0
        self.flag_first_turn = False
        self.flag_finished_ready = False
        self.second_z_theta = 0.0
        self.time_counter = 0
        self.loop_counter = 0
        
        #Playing State Behaviour Variables
        self.flag_kick_leg = 0 # 0 = None, -1 = Left, 1 = Right
        self.kick_calibration_counter = 0
        self.enemy_side = False
        self.flag_is_penalized = 0
        self.counter_walk_side = 1
        self.flag_head_direction = 0
        self.flag_giro_counter= 0
        self.last_x = 0
        
        # Initialize publishers
        self.pub_move_to = rospy.Publisher('/unb_robocup/motion/walk_to_topic', MoveToTopic)
        self.pub_move_around_point = rospy.Publisher('/unb_robocup/motion/move_around_point', MoveAroundPointTopic)
        self.pub_move_to_navigate = rospy.Publisher('/unb_robocup/motion/move_to_navigate', MoveToTopic)
        #default: 0.4m
        self.pub_set_security_distance = rospy.Publisher('/unb_robocup/motion/set_security_distance', SetSecurityDistance)
        
        # Initialize subscribers
        self.pub_navigate_reached = rospy.Subscriber('/unb_robocup/motion/navigate_reached', Bool,self.NavigateReached)
        self.pub_is_moving = rospy.Subscriber('/unb_robocup/motion/is_moving', Bool,self.IsMoving)
        self.navigate_reached=False
        self.is_moving=False
        
        # Initialize service client
        # unb_gamecontroller
        self.sc_get_robot_state        = rospy.ServiceProxy("/unb_robocup/robot_state/get", GetRobotState)

        # unb_motion
        self.sc_move_joint = rospy.ServiceProxy('/unb_robocup/motion/move_joint', MoveJoint)
        self.sc_go_to_posture = rospy.ServiceProxy('/unb_robocup/motion/goto_posture', GoToPosture)
        self.sc_stop_posture = rospy.ServiceProxy('/unb_robocup/motion/stop_posture', StopPosture)
        self.sc_stop_move = rospy.ServiceProxy('/unb_robocup/motion/stop_move', StopMove)
        self.sc_move_to = rospy.ServiceProxy('/unb_robocup/motion/move_to', MoveTo)
        self.sc_move_around_point = rospy.ServiceProxy('/unb_robocup/motion/move_around_point', MoveAroundPoint)
        self.sc_rotate = rospy.ServiceProxy('/unb_robocup/motion/rotate', Rotate)
        self.sc_move_toward = rospy.ServiceProxy('/unb_robocup/motion/move_toward', MoveToward)
        self.sc_stiffness_on = rospy.ServiceProxy('/unb_robocup/motion/stiffness_on', StiffnessOn)
        self.sc_stiffness_off = rospy.ServiceProxy('/unb_robocup/motion/stiffness_off', StiffnessOff)
        self.sc_kick_left = rospy.ServiceProxy('/unb_robocup/motion/kick_left', KickLeft)
        self.sc_kick_right = rospy.ServiceProxy('/unb_robocup/motion/kick_right', KickRight)
        self.sc_get_joint_angle = rospy.ServiceProxy('/unb_robocup/motion/get_joint_angle', GetJointAngle)
        self.sc_change_joint_angle = rospy.ServiceProxy('/unb_robocup/motion/change_joint_angle', ChangeJointAngle)
        self.sc_set_walk_target_velocity = rospy.ServiceProxy('/unb_robocup/motion/set_walk_target_velocity', SetWalkTargetVelocity)

        #unb_sonar
        self.sc_get_sonar_state = rospy.ServiceProxy("/unb_robocup/sensors/get_sonar", GetSonar)
        
        #unb_vision
        self.sc_track_ball = rospy.ServiceProxy('/unb_robocup/vision/track_ball', TrackBall)
        self.sc_calc_histogram = rospy.ServiceProxy('/unb_robocup/vision/calc_histogram', CalcHistogram)
        
        #unb_imu
        self.sc_get_imu = rospy.ServiceProxy("/unb_robocup/sensors/get_imu", GetImu)
        self.sc_get_accel = rospy.ServiceProxy("/unb_robocup/sensors/get_accel_raw", GetAccel)
        self.sc_get_gyro = rospy.ServiceProxy("/unb_robocup/sensors/get_gyro_raw", GetGyro)
        
        #nao_sensors odometry
        self.sb_odometry = rospy.Subscriber("/unb_robocup/sensors/odom", Odom, self.Odometry)
        self.x_odometry = 0.0
        self.y_odometry = 0.0
        self.z_odometry = 0.0
        self.x_theta_odometry = 0.0
        self.y_theta_odometry = 0.0
        self.z_theta_odometry = 0.0
     
        # Initialize service server
        self.n_buffer_camera=8
        self.buffer_camera=list()
        for i in range(0,self.n_buffer_camera):
            self.buffer_camera.append([False, 0, 0, 0])
        
        self.first_run=1
        
        self.K_theta=0.7/160.0  #when ball is on the top camera the proportional constant of move_toward theta
        rospy.loginfo("K_theta= %f" %self.K_theta)
        self.K_I_theta=0.000001  #when ball is on the top camera the proportional constant of move_toward theta
        self.dt=1.0/25.0
        self.theta_error_integral=0.0
        self.straight_correction=-0.1 #when ball is on the top camera the straight_correction of move_toward theta
        self.theta=0.0
        self.flag_no_game_controller=0
        
        chest_button_can_work=1
    ##############################################################################
    #                         NODE FUNCTION
    ##############################################################################

    def Loop(self):
        # Define rate
        rate = rospy.Rate(25);
           
        #Wait for service   
        rospy.wait_for_service("/unb_robocup/robot_state/get")
        rospy.wait_for_service("/unb_robocup/motion/stiffness_on")
           
        # Enable robot stiffness
        self.sc_stiffness_on()        

        #Fall angle
        TORSO_ANGLE_FALL = 1

        self.ball_detected_counter=0
        # Wait for CTRL+C
        while not rospy.is_shutdown():
                
                
                
             #If fall and not penalized -> stand up
            torso_angle = self.sc_get_imu()
            if((abs(torso_angle.x) > TORSO_ANGLE_FALL or abs(torso_angle.y) > TORSO_ANGLE_FALL) and self.state != SPLStates.BEHAVE_STATE_PENALIZED):
                self.sc_stop_move()
                self.sc_go_to_posture('StandInit',1.0)
                self.sc_move_joint("HeadPitch", 0.35, 0.5)
                    
            # Request current state from GameController       
            get_robot_state_response = self.sc_get_robot_state()
            self.game_state = get_robot_state_response.game_state
            self.robot_state = get_robot_state_response.robot_state
            
            # Set Behaviour State Machine
            global flag_button_pressed
            if(flag_button_pressed==1 and self.state==SPLStates.STATE_INITIAL):
                self.flag_no_game_controller=1     
            if(self.flag_no_game_controller==0):
                self.previous_state = self.state
                if(self.robot_state == SPLStates.PENALTY_NONE):
                    self.state = self.game_state
                else:
                    self.state = SPLStates.BEHAVE_STATE_PENALIZED
            else:
                if(flag_button_pressed==1):
                    flag_button_pressed=0
                    self.previous_state = self.state
                    if(self.state==SPLStates.PENALTY_NONE):
                        self.state=SPLStates.BEHAVE_STATE_PLAYING
                    elif(self.state==SPLStates.PENALTY_NONE):
                        self.state=SPLStates.BEHAVE_STATE_INITIAL
                    else:
                        self.state=SPLStates.PENALTY_NONE        
            #rospy.loginfo("GAME STATE: %i", self.game_state)
            #rospy.loginfo("ROBOT STATE: %i", self.robot_state)
            #if()  

                
                
                     
            # Check if state changed
            if( self.state != self.previous_state ):
                self.state_changed = True

            if(self.first_run==1):
                self.state_changed=True
                self.first_run=0
            ##########################################################
            #                      INITIAL STATE
            ##########################################################
            if( self.state == SPLStates.BEHAVE_STATE_INITIAL ):
                #Turn stiffness on and go to initial pose
                if( self.state_changed ):
                    self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x00009900,0)
                    self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x00FF9900,0)
                    self.initialStateBehaviour()
                    
                    # Reset state_changed flag
                    self.previous_state = self.state
                    self.state_changed = False
                    
            
            ##########################################################
            #                      READY STATE
            ##########################################################            
            elif( self.state == SPLStates.BEHAVE_STATE_READY   ):
                # Change LED color if state recently changed
                if( self.state_changed ):
                    rospy.loginfo("STATE CHANGED TO READY")
                    self.sc_go_to_posture('StandInit',1.0)
                    self.sc_move_joint("HeadPitch", 0.25, 0.5)
                    self.sc_move_joint("HeadPitch", 0.25, 0.5)
                    self.initial_ready_position = self.x_odometry
                    #self.pub_fade_rgb.publish("ChestLeds",ColorRGBA(0.0,0.0,1.0,1.0),rospy.Duration(0.1))
                    self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x000000FF,0)
                    self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x000000FF,0)
                    
                    # Reset state_changed flag
                    self.previous_state = self.state
                    self.state_changed = False
                self.readyStateBehaviour()
            
            ##########################################################
            #                      SET STATE
            ##########################################################            
            elif( self.state == SPLStates.BEHAVE_STATE_SET   ):
                # Change LED color if state recently changed
                if( self.state_changed ):
                    rospy.loginfo("STATE CHANGED TO SET")
                    self.sc_stop_move()
                    self.sc_move_joint("HeadPitch", 0.25, 0.5)
                    #self.pub_fade_rgb.publish("ChestLeds",ColorRGBA(1.0,1.0,0.0,1.0),rospy.Duration(0.1))
                    self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x00FFFF00,0)
                    self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x00FFFF00,0)
                    
                    # Reset state_changed flag
                    self.previous_state = self.state
                    self.state_changed = False
                if self.flag_photo_taked == 0:
                    self.sc_move_joint("HeadPitch", -0.4, 1.0)
                    #self.wait2s.sleep()   
                    time.sleep(5)
                    isThesame = self.sc_calc_histogram(0)
                    print isTheSame
                    self.flag_photo_taked = 1
                else:
                    self.sc_move_joint("HeadPitch", 0.25, 0.5)
                    self.setStateBehaviour()

            ##########################################################
            #                      PLAYING STATE
            ##########################################################            
            elif( self.state == SPLStates.BEHAVE_STATE_PLAYING   ):
                # Change LED color if state recently changed
                if( self.state_changed ):
                    rospy.loginfo("STATE CHANGED TO PLAYING")
                    self.sc_go_to_posture('StandInit',1.0)
                    #Find enemy side
                    self.AfAlignHeadBody()
                    self.sc_move_joint("HeadPitch", 0.35, 0.5)
                    
                    #self.pub_fade_rgb.publish("ChestLeds",ColorRGBA(0.0,1.0,0.0,1.0),rospy.Duration(0.1))
                    self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x00FFFFFF,0)
                    self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x00FFFFFF,0)
                    
                    # Reset state_changed flag
                    self.previous_state = self.state
                    self.state_changed = False
                
                if(self.flag_is_penalized == 1):
                    self.flag_is_penalized = 0
                    #self.sc_move_to(1.0,0.0,0.0)
                    self.sc_move_joint("HeadPitch", 0.35, 0.5)
                else:    
                    self.playingStateBehaviour() #TODO:VERIFY THIS FUNCTION

            ##########################################################
            #                      PENALIZED STATE
            ##########################################################            
            elif( self.state == SPLStates.BEHAVE_STATE_PENALIZED ):
                # Change LED color if state recently changed
                self.flag_is_penalized = 1
                self.penalizedStateBehaviour()
                if( self.state_changed ):
                    rospy.loginfo("STATE CHANGED TO PENALIZED")
                    self.sc_stop_move()
                    #self.pub_fade_rgb.publish("ChestLeds",ColorRGBA(1.0,0.0,0.0,1.0),rospy.Duration(0.1))
                    self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x00FFFF00,0)
                    self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x00FF0000,0)
                    
                    # Reset state_changed flag
                    self.previous_state = self.state
                    self.state_changed = False

            ##########################################################
            #                      FINISHED STATE
            ##########################################################            
            elif( self.state == SPLStates.BEHAVE_STATE_FINISHED   ):
                # Change LED color if state recently changed
                if( self.state_changed ):
                    rospy.loginfo("STATE CHANGED TO FINISHED")
                    #self.pub_fade_rgb.publish("ChestLeds",ColorRGBA(0.0,0.0,0.0,0.0),rospy.Duration(0.1))
                    
                    # Change field side
                    if ( self.team_colour == 1):
                        self.team_colour=0
                        self.al_memory_proxy.insertData("GameCtrl/teamColour", 0)
                    else:
                        self.team_colour=1
                        self.al_memory_proxy.insertData("GameCtrl/teamColour", 1)
                    
                    self.sc_stop_move()
                    self.sc_go_to_posture('Crouch',0.7) # Move to crouch position before disabling stiffness
                    self.sc_stiffness_off()
                    rospy.signal_shutdown('Keyboard interrupt')   
                    
                    # Reset state_changed flag
                    self.previous_state = self.state
                    self.state_changed = False


            rate.sleep()
      

      
    ##############################################################################
    #                         STATE FUNCTIONS
    ##############################################################################      
    def initialStateBehaviour(self):
        rospy.loginfo("INITIAL BEHAVIOUR SET")
        self.sc_go_to_posture('StandInit',1.0)
        time.sleep(0.4)
        self.sc_move_joint("HeadPitch", 0.25, 0.5)
        
        if self.flag_photo_taked == 0:
            self.sc_move_joint("HeadPitch", -0.4, 1.0)
            #self.wait2s.sleep()   
            time.sleep(5)
            isThesame = self.sc_calc_histogram(0)
            print isThesame
            self.flag_photo_taked = 1
        else:
            self.sc_move_joint("HeadPitch", 0.25, 0.5)
            
    def readyStateBehaviour(self):
        #TODO colocar o robo manualmente do lado onde a trave esta a esquerda
        rospy.loginfo("READY BEHAVIOUR SET")
        x = self.x_odometry
        z_theta = self.z_theta_odometry
        rospy.loginfo("theta: %f" %z_theta )
        rospy.loginfo("thetainicial: %f" %self.initial_z_theta)
        rospy.loginfo("X: %f" %x)
        rospy.loginfo("X_inicial: %f" %self.initial_ready_position)
        
        
        #minimum_distance = 0.4
        minimum_distance = 0.0
        if self.flag_finished_ready == False:
            if self.flag_arrived_destination == False:
                if not self.is_walking:
                    self.sc_move_toward(1.0,0.0,-0.05)
                    self.is_walking = True
                    rospy.loginfo("START WALK")
                #Sonar On
                #if self.sc_get_sonar_state().left_sonar < minimum_distance and self.sc_get_sonar_state().right_sonar < minimum_distance:
                    #rospy.loginfo("Left: %f" %self.sc_get_sonar_state().left_sonar)
                    #rospy.loginfo("Right: %f" %self.sc_get_sonar_state().right_sonar)
                    #self.sc_stop_move()
                    #self.sc_rotate(-1.5)
                    #self.time_counter = 0
                    #self.initial_ready_position = x
                    #self.sc_move_joint("HeadPitch", -0.4)
                    #self.ready_turn_direction = self.ready_turn_direction*-1.0
                    #self.is_walking = False
                    #rospy.loginfo("SONAR ON")
                
            #Arived final destination
            if abs(self.initial_ready_position - x) >= 1.2 or self.time_counter >= 135:
                if self.flag_arrived_destination == False:
                    self.sc_stop_move()
                    self.initial_z_theta = self.z_theta_odometry
                self.flag_arrived_destination = True
                self.sc_move_toward(0.0,0.0,0.78)
                if self.sc_get_sonar_state().left_sonar < minimum_distance or self.sc_get_sonar_state().right_sonar < minimum_distance:
                    self.flag_ready_sonar_on = True
                self.loop_counter = self.loop_counter + 1    
                rospy.loginfo("DESTINATION")
                            
            #Finished the 360 degrees turn
            if (self.flag_arrived_destination == True and z_theta <= self.initial_z_theta + 0.1 and z_theta >= self.initial_z_theta - 0.8 and self.time_counter > 30) or self.time_counter >= 250:
                self.sc_stop_move()
                if self.flag_ready_sonar_on:
                    self.time_counter = 0
                    self.is_walking = False
                    self.initial_ready_position = x
                    self.flag_ready_sonar_on = False
                    self.flag_arrived_destination = False
                    self.flag_first_turn = False
                    rospy.loginfo("WRONG DESTINATION")
                
                else:
                    self.flag_finished_ready = True
                    rospy.loginfo("FINAL DESTINATION")
                self.sc_rotate(-1.5)
        self.time_counter = self.time_counter + 1
    
            
        
    def setStateBehaviour(self):
        #rospy.loginfo("SET BEHAVIOUR SET")
        ball = self.sc_track_ball()  
        self.buffer_camera.append([ball.is_ball_detected,ball.x,ball.y,ball.camera])
        self.buffer_camera.pop(0) 
        if(ball.camera==1 and ball.is_ball_detected==1):
            for i in range(0,self.n_buffer_camera):
                self.buffer_camera.append([False, 0, 0, 0])

        if self.flag_found_ball == False:
            if ball.is_ball_detected == 0:
                if(self.set_counter == 10 and  self.set_angle == 0.0):
                    self.sc_move_joint("HeadYaw", self.set_angle, 0.25)
                    self.set_counter = 0
                    if self.head_direction == 1.0:
                        self.set_angle = 0.785
                    elif self.head_direction == -1.0:
                        self.set_angle = -0.785 
                if(self.set_counter == 10 and  self.set_angle == 0.785):
                    self.sc_move_joint("HeadYaw", self.set_angle, 0.25)
                    self.set_counter = 0
                    if self.head_direction == 1.0:
                        self.set_angle = 1.57
                    elif self.head_direction == -1.0:
                        self.set_angle = 0.0
                if(self.set_counter == 10 and  self.set_angle == 1.57):
                    self.sc_move_joint("HeadYaw", self.set_angle, 0.25)
                    self.set_counter = 0
                    self.set_angle = 0.785
                    self.head_direction = -1.0 * self.head_direction 
                if(self.set_counter == 10 and  self.set_angle == -0.785):
                    self.sc_move_joint("HeadYaw", self.set_angle, 0.25)
                    self.set_counter = 0
                    if self.head_direction == 1.0:
                        self.set_angle = 0.0
                    elif self.head_direction == -1.0:
                        self.set_angle = -1.57 
                if(self.set_counter == 10 and  self.set_angle == -1.57):
                    self.sc_move_joint("HeadYaw", self.set_angle, 0.25)
                    self.set_counter = 0
                    self.set_angle = -0.785
                    self.head_direction = -1.0 * self.head_direction             
  
            else:
                self.flag_found_ball = True  
                rospy.loginfo("ball_detected")
        self.set_counter = self.set_counter + 1
        
            
            
    def playingStateBehaviour(self):
        #thresholds
        TOP_CAMERA_FIRST_THRESHOLD = 157
        TOP_CAMERA_SECOND_THRESHOLD = 163
        BOTTOM_CAMERA_FIRST_THRESHOLD = 155
        BOTTOM_CAMERA_SECOND_THRESHOLD = 165
        KICK_THRESHOLD = 190 #original 200
        KICK_THRESHOLD_CLOSE = 170
        FIRST_LEFT_KICK_THRESHOLD = 121 - 5
        SECOND_LEFT_KICK_THRESHOLD = 121 + 34
        FIRST_RIGHT_KICK_THRESHOLD = 204 - 5
        SECOND_RIGHT_KICK_THRESHOLD = 204 + 5
        LEFT_KICK_IDEAL_POSITION = 121
        RIGHT_KICK_IDEAL_POSITION = 204
                    
        #minimum_distance = 0.34
        minimum_distance = 0.00
        ball = self.sc_track_ball()
        self.buffer_camera.append([ball.is_ball_detected,ball.x,ball.y,ball.camera])
        self.buffer_camera.pop(0) 
        self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x00000000,0)
        self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x0000000,0)
        if(ball.camera==1 and ball.is_ball_detected==1): #aaaaaaaaaaaaaaaaaaaaaaaaa
            for i in range(0,self.n_buffer_camera):
                self.buffer_camera.append([False, 0, 0, 0])
        if ball.is_ball_detected == 0:
            #Obstruction ahead
            if self.sc_get_sonar_state().left_sonar < minimum_distance and self.sc_get_sonar_state().right_sonar < minimum_distance:
                rospy.loginfo("Left: %f" %self.sc_get_sonar_state().left_sonar)
                rospy.loginfo("Right: %f" %self.sc_get_sonar_state().right_sonar)
                self.sc_stop_move()
                self.sc_move_to(0.0,0.1,0.0)
            #Obstruction on the left
            elif self.sc_get_sonar_state().left_sonar < minimum_distance and self.sc_get_sonar_state().right_sonar > minimum_distance:
                rospy.loginfo("Left: %f" %self.sc_get_sonar_state().left_sonar)
                rospy.loginfo("Right: %f" %self.sc_get_sonar_state().right_sonar)
                self.sc_stop_move()
                self.sc_move_to(0.0,-0.1,0.0)
            #Obstruction on the rigth
            elif self.sc_get_sonar_state().left_sonar > minimum_distance and self.sc_get_sonar_state().right_sonar < minimum_distance:            
                rospy.loginfo("Left: %f" %self.sc_get_sonar_state().left_sonar)
                rospy.loginfo("Right: %f" %self.sc_get_sonar_state().right_sonar)
                self.sc_stop_move()
                self.sc_move_to(0.0,0.1,0.0)
                
        elif ball.is_ball_detected == 1 and ball.y >= 200 and ball.camera == 1: #original 200
            #Obstruction ahead
            #if self.sc_get_sonar_state().left_sonar < minimum_distance and self.sc_get_sonar_state().right_sonar < minimum_distance:
            if self.sc_get_sonar_state().left_sonar < 0 and self.sc_get_sonar_state().right_sonar < 0:
                rospy.loginfo("Left: %f" %self.sc_get_sonar_state().left_sonar)
                rospy.loginfo("Right: %f" %self.sc_get_sonar_state().right_sonar)
                self.sc_stop_move()
                if ball.x < FIRST_LEFT_KICK_THRESHOLD:
                    self.sc_move_to(0.0,0.05, 0.0)
                elif ball.x > SECOND_RIGHT_KICK_THRESHOLD:
                    self.sc_move_to(0.0,-0.05,0.0)
            #Obstruction on the left or on the right
            #elif (self.sc_get_sonar_state().left_sonar < minimum_distance and self.sc_get_sonar_state().right_sonar > minimum_distance) or (self.sc_get_sonar_state().left_sonar > minimum_distance and self.sc_get_sonar_state().right_sonar < minimum_distance):
            elif (self.sc_get_sonar_state().left_sonar < 0 and self.sc_get_sonar_state().right_sonar > 0) or (self.sc_get_sonar_state().left_sonar > 0 and self.sc_get_sonar_state().right_sonar < 0):
                rospy.loginfo("Left: %f" %self.sc_get_sonar_state().left_sonar)
                rospy.loginfo("Right: %f" %self.sc_get_sonar_state().right_sonar)
                self.sc_stop_move()
                if ball.x < FIRST_LEFT_KICK_THRESHOLD:
                    self.sc_move_to(0.0,0.05, 0.0)
                elif ball.x > SECOND_LEFT_KICK_THRESHOLD and ball.x < FIRST_RIGHT_KICK_THRESHOLD:
                    self.sc_move_joint("HeadPitch", -0.4, 0.5)
                    #self.wait2s.sleep()
                    time.sleep(0.6)
                    self.enemy_side = self.sc_calc_histogram(1).isTheSame
                    print self.enemy_side
                    self.sc_move_joint("HeadPitch", 0.35, 0.5)
                    if self.enemy_side == True:
                        self.flag_kick_leg = 1
                    else:
                        self.sc_move_to(0.09,-0.14,1.0)
                elif ball.x > SECOND_RIGHT_KICK_THRESHOLD:
                    self.sc_move_to(0.0,-0.05,0.0)
                elif ball.x > FIRST_LEFT_KICK_THRESHOLD and ball.x < SECOND_LEFT_KICK_THRESHOLD:
                    self.sc_move_joint("HeadPitch", -0.4, 0.5)
                    #self.wait2s.sleep()
                    time.sleep(0.6)
                    self.enemy_side = self.sc_calc_histogram(1).isTheSame
                    print self.enemy_side
                    self.sc_move_joint("HeadPitch", 0.35, 0.5)
                    if self.enemy_side == True:
                        self.flag_kick_leg = -1
                    else:
                        self.sc_move_to(0.09,-0.14,1.0)
                elif ball.x < FIRST_RIGHT_KICK_THRESHOLD and ball.x < SECOND_RIGHT_KICK_THRESHOLD:
                    self.sc_move_joint("HeadPitch", -0.4, 0.5)
                    #self.wait2s.sleep()
                    time.sleep(0.6)
                    self.enemy_side = self.sc_calc_histogram(1).isTheSame
                    print self.enemy_side
                    self.sc_move_joint("HeadPitch", 0.35, 0.5)
                    if self.enemy_side == True:
                        self.flag_kick_leg = 1
                    else:
                        self.sc_move_to(0.09,-0.14,1.0)
                          
        if ball.is_ball_detected:
            self.flag_giro_counter = 0
            self.last_x = ball.x
            if ball.camera == 0:
                rospy.loginfo("Achou Bola Top Camera")
                rospy.loginfo("X = %f   Y = %f" %(ball.x,ball.y))
            
               
                head_angle_vector = self.sc_get_joint_angle(["HeadYaw"])
                head_angle = head_angle_vector.angle[0]
                if((head_angle > 0.5) or (head_angle < -0.5)):
                    self.sc_move_joint("HeadYaw", 0.0, 1.0)
                    self.sc_move_to(0.0,0.0,head_angle)
                
                theta_error=160-ball.x
                if(self.theta<1 and self.theta>-1):
                    self.theta_error_integral=self.theta_error_integral+self.dt*theta_error
                self.theta=self.K_theta*theta_error+self.K_I_theta*self.theta_error_integral+self.straight_correction
                if(self.theta>1):
                    self.theta=1
                elif(self.theta<-1):
                    self.theta=-1
                rospy.loginfo("Track ball")        
                rospy.loginfo("Theta_erro= %f  Tehta= %f" %(theta_error,self.theta))
                rospy.loginfo("K_theta= %f  KI= %f" %(self.K_theta,self.K_I_theta))    
                self.sc_move_toward(1.0,0.0,self.theta)
                if(theta_error>0):
                    self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x00000000,0)
                    self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x00FF0000,0)
                else:
                    self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x00FF0000,0)
                    self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x00000000,0)
                
                #Turn Right
                #if ball.x > TOP_CAMERA_SECOND_THRESHOLD:
                #    self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x00FF0000,0)
                #    self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x00000000,0)
                #    self.sc_move_toward(1.0,0.0,-0.25)
                #Turn Left    
                #elif ball.x < TOP_CAMERA_FIRST_THRESHOLD:
                #    self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x00000000,0)
                #    self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x00FF0000,0)
                #    self.sc_move_toward(1.0,0.0,0.25)
                #Walk Straight
                #else:
                #    self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x00FF0000,0)
                #    self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x00FF0000,0)
                #    self.sc_move_toward(1.0,0.0,-0.1)
            else:
                
                
                head_angle_vector = self.sc_get_joint_angle(["HeadYaw"])
                head_angle = head_angle_vector.angle[0]
                if((head_angle > 0.5) or (head_angle < -0.5)):
                    self.sc_move_joint("HeadYaw", 0.0, 1.0)
                    self.sc_move_to(0.0,0.0,head_angle)
                    
                self.theta_error_integral=0
                rospy.loginfo("Achou Bola Bottom Camera")
                rospy.loginfo("X = %f   Y = %f" %(ball.x,ball.y))
                if ball.y <= KICK_THRESHOLD:
                    if ball.y >= KICK_THRESHOLD_CLOSE:
                        #Turn Right
                        if ball.x > BOTTOM_CAMERA_SECOND_THRESHOLD:
                            self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x0000FF00,0)
                            self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x00000000,0)
                            self.sc_move_to(0.05,0.0,-0.3)
                        #Turn Left
                        elif ball.x < BOTTOM_CAMERA_FIRST_THRESHOLD:
                            self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x00000000,0)
                            self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x0000FF00,0)
                            self.sc_move_to(0.05,0.0,0.3)
                        #Walk Straight
                        else:
                            self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x0000FF00,0)
                            self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x0000FF00,0)
                            self.sc_move_to(0.05,0.0,0.05)
                            
                    else:
                       
                        #Turn Right
                        if ball.x > BOTTOM_CAMERA_SECOND_THRESHOLD:
                            self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x0000FF00,0)
                            self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x00000000,0)
                            self.sc_move_to(0.1,0.0,-0.3)
                        #Turn Left
                        elif ball.x < BOTTOM_CAMERA_FIRST_THRESHOLD:
                            self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x00000000,0)
                            self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x0000FF00,0)
                            self.sc_move_to(0.1,0.0,0.3)
                        #Walk Straight
                        else:
                            self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x0000FF00,0)
                            self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x0000FF00,0)
                            self.sc_move_to(0.1,0.0,0.05)
                                
                else:
                    self.sc_stop_move()
                    if ball.x < FIRST_LEFT_KICK_THRESHOLD:
                        self.sc_move_to(0.0,0.05, 0.0)
                    elif ball.x > SECOND_LEFT_KICK_THRESHOLD and ball.x < FIRST_RIGHT_KICK_THRESHOLD:
                        #self.sc_move_to(0.0,0.05,0.0)
                        self.sc_move_joint("HeadPitch", -0.4, 0.5)
                        #self.wait2s.sleep()
                        time.sleep(0.6)
                        self.enemy_side = self.sc_calc_histogram(1).isTheSame
                        print self.enemy_side
                        self.sc_move_joint("HeadPitch", 0.35, 0.5)
                        if self.enemy_side == True:
                            self.flag_kick_leg = 1
                        else:
                            self.sc_move_to(0.09,-0.14,1.0)
                    elif ball.x > SECOND_RIGHT_KICK_THRESHOLD:
                        self.sc_move_to(0.0,-0.05,0.0)
                    elif ball.x > FIRST_LEFT_KICK_THRESHOLD and ball.x < SECOND_LEFT_KICK_THRESHOLD:
                        self.sc_move_joint("HeadPitch", -0.4, 0.5)
                        #self.wait2s.sleep()
                        time.sleep(0.6)
                        self.enemy_side = self.sc_calc_histogram(1).isTheSame
                        print self.enemy_side
                        self.sc_move_joint("HeadPitch", 0.35, 0.5)
                        if self.enemy_side == True:
                            self.flag_kick_leg = -1
                        else:
                            self.sc_move_to(0.09,-0.14,1.0)
                    elif ball.x > FIRST_RIGHT_KICK_THRESHOLD and ball.x < SECOND_RIGHT_KICK_THRESHOLD:
                        self.sc_move_joint("HeadPitch", -0.4, 0.5)
                        #self.wait2s.sleep()
                        time.sleep(0.6)
                        self.enemy_side = self.sc_calc_histogram(1).isTheSame
                        print self.enemy_side
                        self.sc_move_joint("HeadPitch", 0.35, 0.5)
                        if self.enemy_side == True:
                            self.flag_kick_leg = 1
                        else:
                            self.sc_move_to(0.09,-0.14,1.0)
        else:
            flag_ball_not_found=1
                       
            print self.buffer_camera
            for i_buffer in range(self.n_buffer_camera):
                
                
                if(self.buffer_camera[self.n_buffer_camera-i_buffer-1][0]==True and self.buffer_camera[self.n_buffer_camera-i_buffer-1][3]==0):
                    ball.x=self.buffer_camera[self.n_buffer_camera-i_buffer-1][1]
                    ball.x=self.buffer_camera[self.n_buffer_camera-i_buffer-1][2]
                    rospy.loginfo("Achou Bola Top Camera no buffer %d" %(self.n_buffer_camera-i_buffer-1))
                    rospy.loginfo("X = %f   Y = %f" %(ball.x,ball.y))
                    theta_error=160-ball.x
                    flag_ball_not_found=0
                    if(self.theta<1 and self.theta>-1):
                        self.theta_error_integral=self.theta_error_integral+self.dt*theta_error
                    self.theta=self.K_theta*theta_error+self.K_I_theta*self.theta_error_integral+self.straight_correction
                    if(self.theta>1):
                        self.theta=1
                    elif(self.theta<-1):
                        self.theta=-1
                    rospy.loginfo("Track ball")        
                    rospy.loginfo("Theta_erro= %f  Tetha= %f" %(theta_error,self.theta))    
                    rospy.loginfo("K_theta= %f  KI= %f" %(self.K_theta,self.K_I_theta))
                    
                    self.sc_move_toward(1.0,0.0,self.theta)
                    
                    if(theta_error>=0):
                        self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x0000FF00,0)
                        self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x00FF0000,0)
                    else:
                        self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x00FF0000,0)
                        self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x0000FF00,0)
                    
                    
                    #Turn Right
                    #if ball.x > TOP_CAMERA_SECOND_THRESHOLD:
                    #    self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x00FF0000,0)
                    #    self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x0000FF00,0)
                    #    self.sc_move_toward(1.0,0.0,-0.25)
                    #    flag_ball_not_found=0
                    #Turn Left    
                    #elif ball.x < TOP_CAMERA_FIRST_THRESHOLD:
                    #    self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x0000FF00,0)
                    #    self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x00FF0000,0)
                    #    self.sc_move_toward(1.0,0.0,0.25)
                    #    flag_ball_not_found=0
                    #Walk Straight
                    #else:
                    #    self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x00FF0000,0)
                    #    self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x0000FF00,0)
                    #    self.sc_move_toward(1.0,0.0,-0.1)
                    #    flag_ball_not_found=0
                    #break
                    
            if(flag_ball_not_found==1):
                rospy.loginfo("Nao Bola - !")
                self.theta_error_integral=0
                self.al_leds_proxy.fadeRGB("RightFaceLeds", 0x00000000,0)
                self.al_leds_proxy.fadeRGB("LeftFaceLeds", 0x00000000,0)
                if(ball.camera==1 and ball.is_ball_detected==1):
                    for i in range(0,self.n_buffer_camera):
                        self.buffer_camera.append([False, 0, 0, 0])
                self.sc_stop_move()
                #self.sc_move_toward(0.0,0.2,0.3)
                head_angle_vector = self.sc_get_joint_angle(["HeadYaw"])
                head_angle = head_angle_vector.angle[0]
                
                if(self.flag_head_direction == 0):
                    if(head_angle >= (-0.785)):
                        self.sc_move_joint("HeadYaw", -0.785, 1.0)
                    else:
                        
                        self.flag_head_direction = 1
                        self.sc_move_joint("HeadYaw", 0.0, 1.0)
                        
                else:
                    if(head_angle <= 0.785):
                        self.sc_move_joint("HeadYaw", 0.785, 1.0)
                    else:
                        
                        self.flag_head_direction = 0
                        self.sc_move_joint("HeadYaw", 0.0, 1.0)
                        self.flag_giro_counter = self.flag_giro_counter + 1
                if self.flag_giro_counter > 1:
                    if self.last_x < 160:
                        self.sc_move_to(0.0,0.0,1.16)
                    else:
                        self.sc_move_to(0.0,0.0,-1.16)
                    self.flag_giro_counter = 0
                time.sleep(0.5)
                    
        if self.flag_kick_leg < 0:
            rospy.loginfo("Left Kick")
            self.sc_kick_left()
            self.sc_move_joint("HeadPitch", 0.35, 0.5)
            self.flag_kick_leg = 0 
        elif self.flag_kick_leg > 0:
            rospy.loginfo("Right Kick")
            self.sc_kick_right()
            self.sc_move_joint("HeadPitch", 0.35, 0.5)
            self.flag_kick_leg = 0  
                    
 
                       
    
    def penalizedStateBehaviour(self):
        #rospy.loginfo("PENALIZED BEHAVIOUR SET")
        self.sc_stop_move()

 
     ##############################################################################
    #                         AUXILIAR FUNCTIONS
    ##############################################################################
    def AfAlignHeadBody(self):
        angle = self.sc_get_joint_angle(["HeadYaw"])
        self.sc_move_joint("HeadYaw", 0.0, 0.5)
        self.sc_rotate(angle.angle[0])
              
           
        
    ##############################################################################
    #                         Topic Server Callbacks
    ##############################################################################
    
    def Odometry(self,data):
        self.x_odometry = data.x
        self.y_odometry = data.y
        self.z_odometry = data.z
        self.x_theta_odometry = data.theta_x
        self.y_theta_odometry = data.theta_y
        self.z_theta_odometry = data.theta_z
        
    def NavigateReached(self,req):
        self.navigate_reached=req.data
        
    def IsMoving(self,req):
        self.is_moving=req.data

##############################################################################
#                          CLASS StartUnbRobocupModule
############################################################################## 
class StartUnbRobocupModule(ALModule):

    def __init__(self, name):
        ALModule.__init__(self, name)
        # No need for IP and port here because
        # we have our Python broker connected to NAOqi broker
        
        
        #self.tts = ALProxy("ALTextToSpeech")
        # Subscribe to the FaceDetected event:
        global memory
        
        memory = ALProxy("ALMemory")
        self.count=0
        memory.subscribeToEvent("ChestButtonPressed","StartUnbRobocup","onChestButtonPressed")
        #memory.subscribeToEvent("ALChestButton/SimpleClickOcurred","StartUnbRobocup","onChestButtonPressed")
    def onChestButtonPressed(self, *_args):
        #memory.unsubscribeToEvent("ChestButtonPressed","StartUnbRobocup")
        self.count=self.count+1
        if(self.count==2):   
            self.count=0
            print "Deve entrar "
            global flag_can_start
            global flag_button_pressed
            global chest_button_can_work
            chest_button_can_work=1
            if(flag_can_start==0):
                #self.tts.say("Lets Start")
                flag_can_start=1
                flag_button_pressed=0
            elif(chest_button_can_work==1):
                flag_button_pressed=1
                
        #memory.subscribeToEvent("ChestButtonPressed","StartUnbRobocup","onChestButtonPressed")    

##############################################################################
#                          RUNNING THE MAIN ROUTINE
############################################################################## 

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass

