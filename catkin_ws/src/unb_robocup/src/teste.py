#!/usr/bin/env python

##############################################################################
#                                INCLUDES
##############################################################################
import roslib; roslib.load_manifest('unb_robocup')
import rospy

#Services
from std_srvs.srv import Empty
##############################################################################
#                            NODE MAIN ROUTINE
##############################################################################

def main():

    # Initialize Node. NOTE: NO INTERRUPT SIGNAL BY DEFAULT
    rospy.init_node(name='teste_node', disable_signals=True)
    # Initialize object
    end = End()  
    try:
        rospy.spin()
    except KeyboardInterrupt:
        rospy.loginfo('shutdown unb_sonar_node')
        rospy.signal_shutdown('Keyboard interrupt') 
        
##############################################################################
#                            CLASS IMU
##############################################################################

class End:

    ##############################################################################
    #                         CONSTRUCTORS AND DESTRUCTORS
    ##############################################################################

    def __init__(self):

        
        # Initialize publishers
    
        # Initialize service client
        
        # Initialize service server
        self.ss_end = rospy.Service("/end_program", Empty, self.End )
         
    ##############################################################################
    #                         Service Server Callbacks
    ##############################################################################
    def End( self , req ):
        rospy.signal_shutdown('Service End') 
        return EmptyResponse()


##############################################################################
#                          RUNNING THE MAIN ROUTINE
############################################################################## 

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass
        
