#!/usr/bin/env python

##############################################################################
#                                INCLUDES
##############################################################################
import roslib; roslib.load_manifest('unb_robocup')
import rospy


from nao_driver import  motion

#Naoqi
from naoqi import ALProxy
from naoqi import ALModule
from naoqi import ALBroker
#Messages

#Services

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
        
        
        SuperTeste = SuperTesteModule("SuperTeste")
        
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
            t_inic=rospy.get_time();
            odom_data=self.al_motion_proxy.getPosition('Torso', motion.SPACE_WORLD, True)
            self.sonar_left_data = self.memory_proxy.getData("Device/SubDeviceList/US/Left/Sensor/Value")
            self.sonar_right_data = self.memory_proxy.getData("Device/SubDeviceList/US/Right/Sensor/Value")
            self.torso_angle_x = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/AngleX/Sensor/Value");
            self.torso_angle_y = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/AngleY/Sensor/Value");
            self.acc_x = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/AccX/Sensor/Value")
            self.acc_y = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/AccY/Sensor/Value")
            self.acc_z = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/AccZ/Sensor/Value")
            self.gyr_y = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/GyrY/Sensor/Value")
            self.gyr_x = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/GyrX/Sensor/Value")
            t_end=rospy.get_time()
            print  (t_end-t_inic)*1000
            rate.sleep()     
   

##############################################################################
#                          RUNNING THE MAIN ROUTINE
############################################################################## 


class SuperTesteModule(ALModule):

    def __init__(self, name):
        ALModule.__init__(self, name)
        # No need for IP and port here because
        # we have our Python broker connected to NAOqi broker
        
        self.memory_proxy = ALProxy("ALMemory", "127.0.0.1", 9559)
        self.al_motion_proxy = ALProxy("ALMotion","127.0.0.1",9559)
        t_inic=rospy.get_time();
        odom_data=self.al_motion_proxy.getPosition('Torso', motion.SPACE_WORLD, True)
        self.sonar_left_data = self.memory_proxy.getData("Device/SubDeviceList/US/Left/Sensor/Value")
        self.sonar_right_data = self.memory_proxy.getData("Device/SubDeviceList/US/Right/Sensor/Value")
        self.torso_angle_x = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/AngleX/Sensor/Value");
        self.torso_angle_y = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/AngleY/Sensor/Value");
        self.acc_x = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/AccX/Sensor/Value")
        self.acc_y = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/AccY/Sensor/Value")
        self.acc_z = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/AccZ/Sensor/Value")
        self.gyr_y = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/GyrY/Sensor/Value")
        self.gyr_x = self.memory_proxy.getData("Device/SubDeviceList/InertialSensor/GyrX/Sensor/Value")
        t_end=rospy.get_time()
        print 'teste'
        print  (t_end-t_inic)*1000
        print 'fim teste' 
        
                
if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass

