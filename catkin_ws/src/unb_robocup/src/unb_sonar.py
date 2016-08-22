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
from unb_robocup.srv import GetSonar
from unb_robocup.srv import GetSonarResponse

##############################################################################
#                            NODE MAIN ROUTINE
##############################################################################

def main():
    
    # Initialize Node
    rospy.init_node('unb_sonar_node')
    
    # Initialize object
    sonar = Sonar()    
    try:
        rospy.spin()
    except KeyboardInterrupt:
        rospy.loginfo('shutdown unb_sonar_node')
        sonar.sonar_proxy.unsubscribe("myApplication") 
        rospy.signal_shutdown('Keyboard interrupt') 
    
             
##############################################################################
#                            CLASS RobotPlot
##############################################################################

class Sonar:

    ##############################################################################
    #                         CONSTRUCTORS AND DESTRUCTORS
    ##############################################################################

    def __init__(self):
    
        self.sonar_proxy = ALProxy("ALSonar","127.0.0.1",9559)
        self.sonar_proxy.subscribe("myApplication") #Precisa disso pra fazer o ultrasom ligar
        self.memory_proxy = ALProxy("ALMemory", "127.0.0.1", 9559)

        # Initialize service server
        self.ss_get_sonar_state = rospy.Service("/unb_robocup/sonar_state/get", GetSonar, self.GetSonar )
       
         
    ##############################################################################
    #                         Service Server Callbacks
    ##############################################################################
    def GetSonar( self , req ):
        self.sonar_left_data = self.memory_proxy.getData("Device/SubDeviceList/US/Left/Sensor/Value")
        self.sonar_right_data = self.memory_proxy.getData("Device/SubDeviceList/US/Right/Sensor/Value")
        return GetSonarResponse(self.sonar_left_data,self.sonar_right_data)


##############################################################################
#                          RUNNING THE MAIN ROUTINE
############################################################################## 

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass

