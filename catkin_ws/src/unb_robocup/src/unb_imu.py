#!/usr/bin/env python

##############################################################################
#                                INCLUDES
##############################################################################
import roslib; roslib.load_manifest('unb_robocup')
import rospy

#Naoqi
from naoqi import ALProxy

#Messages

#Services

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

    # Initialize Node. NOTE: NO INTERRUPT SIGNAL BY DEFAULT
    rospy.init_node(name='unb_imu_node', disable_signals=True)
    # Initialize object
    imu = Imu()  
    try:
        rospy.spin()
    except KeyboardInterrupt:
        rospy.loginfo('shutdown unb_sonar_node')
        rospy.signal_shutdown('Keyboard interrupt') 
##############################################################################
#                            CLASS IMU
##############################################################################

class Imu:

    ##############################################################################
    #                         CONSTRUCTORS AND DESTRUCTORS
    ##############################################################################

    def __init__(self):

        self.memory_proxy = ALProxy("ALMemory", "127.0.0.1", 9559)

        # Initialize publishers
    
        # Initialize service client
        
        # Initialize service server
        self.ss_get_imu = rospy.Service("/unb_robocup/imu/get_imu", GetImu, self.GetImu )
        self.ss_get_accel = rospy.Service("/unb_robocup/imu/get_accel_raw", GetAccel, self.GetAccel )
        self.ss_get_gyro = rospy.Service("/unb_robocup/imu/get_gyro_raw", GetGyro, self.GetGyro )
        self.ss_robot_has_fallen = rospy.Service("/unb_robocup/imu/robot_has_fallen", RobotHasFallen, self.RobotHasFallen )
         
    ##############################################################################
    #                         Service Server Callbacks
    ##############################################################################
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
        
