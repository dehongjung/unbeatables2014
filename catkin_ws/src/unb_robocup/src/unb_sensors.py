#!/usr/bin/env python

##############################################################################
#                                INCLUDES
##############################################################################
import roslib; roslib.load_manifest('unb_robocup')
import rospy


from nao_driver import  motion

#Naoqi
from naoqi import ALProxy

#Messages
from unb_robocup.msg import Odom

#Services
from unb_robocup.srv import GetSonar
from unb_robocup.srv import GetSonarResponse
from unb_robocup.srv import GetImu
from unb_robocup.srv import GetImuResponse
from unb_robocup.srv import GetGyro
from unb_robocup.srv import GetGyroResponse
from unb_robocup.srv import GetAccel
from unb_robocup.srv import GetAccelResponse
from unb_robocup.srv import RobotHasFallen
from unb_robocup.srv import RobotHasFallenResponse

##############################################################################
#                            NODE MAIN ROUTINE
##############################################################################

def main():
    
    # Initialize Node
    rospy.init_node('unb_sensors_node')
    
    # Initialize object
    sensors = Sensors()    
    try:
        sensors.Loop()
    except KeyboardInterrupt:
        rospy.loginfo('shutdown unb_sonar_node')
        sensors.sonar_proxy.unsubscribe("myApplication") 
        rospy.signal_shutdown('Keyboard interrupt') 
    
             
##############################################################################
#                            CLASS RobotPlot
##############################################################################

class Sensors:

    ##############################################################################
    #                         CONSTRUCTORS AND DESTRUCTORS
    ##############################################################################

    def __init__(self):
    
        self.sonar_proxy = ALProxy("ALSonar","127.0.0.1",9559)
        self.sonar_proxy.subscribe("myApplication") #Precisa disso pra fazer o ultrasom ligar
        self.memory_proxy = ALProxy("ALMemory", "127.0.0.1", 9559)
        self.al_motion_proxy = ALProxy("ALMotion","127.0.0.1",9559)
        
        # Initialize service server
        self.ss_get_sonar_state = rospy.Service("/unb_robocup/sensors/get_sonar", GetSonar, self.GetSonar )
        self.ss_get_imu = rospy.Service("/unb_robocup/sensors/get_imu", GetImu, self.GetImu )
        self.ss_get_accel = rospy.Service("/unb_robocup/sensors/get_accel_raw", GetAccel, self.GetAccel )
        self.ss_get_gyro = rospy.Service("/unb_robocup/sensors/get_gyro_raw", GetGyro, self.GetGyro )
        self.ss_robot_has_fallen = rospy.Service("/unb_robocup/sensors/robot_has_fallen", RobotHasFallen, self.RobotHasFallen )
       
        #Initialize publishers
        self.pub_odom = rospy.Publisher('/unb_robocup/sensors/odom', Odom)
        
        self.x_odom=0.0
        self.y_odom=0.0
        self.z_odom=0.0
        self.theta_x_odom=0.0
        self.theta_y_odom=0.0
        self.theta_z_odom=0.0
    ##############################################################################
    #                         NODE FUNCTION
    ##############################################################################

    def Loop(self):

        # Define rate
        rate = rospy.Rate(30);
        # Wait for CTRL+C
        while not rospy.is_shutdown():
            odom_data=self.al_motion_proxy.getPosition('Torso', motion.SPACE_WORLD, True)
            x=odom_data[0]
            y=odom_data[1]
            z=odom_data[2]
            theta_x=odom_data[3]
            theta_y=odom_data[4]
            theta_z=odom_data[5]
            self.pub_odom.publish(x,y,z,theta_x,theta_y,theta_z)
            rate.sleep()     
    ##############################################################################
    #                         Service Server Callbacks
    ##############################################################################
    def GetSonar( self , req ):
        self.sonar_left_data = self.memory_proxy.getData("Device/SubDeviceList/US/Left/Sensor/Value")
        self.sonar_right_data = self.memory_proxy.getData("Device/SubDeviceList/US/Right/Sensor/Value")
        return GetSonarResponse(self.sonar_left_data,self.sonar_right_data)
   
    def GetImu( self , req ):
        self.torso_angle_x = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/AngleX/Sensor/Value");
        self.torso_angle_y = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/AngleY/Sensor/Value");
        return GetImuResponse(self.torso_angle_x,self.torso_angle_y)

    def GetAccel( self , req ):
        self.acc_x = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/AccX/Sensor/Value")
        self.acc_y = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/AccY/Sensor/Value")
        self.acc_z = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/AccZ/Sensor/Value")
        return GetAccelResponse(self.acc_x,self.acc_y,self.acc_z)

    def GetGyro( self , req ):
        self.gyr_y = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/GyrY/Sensor/Value")
        self.gyr_x = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/GyrX/Sensor/Value")
        return GetGyroResponse(self.gyr_x,self.gyr_y)
        
    def RobotHasFallen( self , req ):
        self.robot_has_fallen = self.memory_proxy.getData("robotHasFallen")
        return RobotHasFallenResponse(self.robot_has_fallen)     

##############################################################################
#                          RUNNING THE MAIN ROUTINE
############################################################################## 

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass

