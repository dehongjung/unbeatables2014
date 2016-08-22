#!/usr/bin/env python


import roslib; roslib.load_manifest('unb_robocup')
import rospy

#Messages
from std_msgs.msg import Bool

import sys
import time

import subprocess
from naoqi import ALProxy
from naoqi import ALBroker
from naoqi import ALModule

from optparse import OptionParser

NAO_IP = "nao.local"

# Global variable to store the StartRos module instance
StartUnbRobocup = None
memory = None
leds = None
pub_can_start = None
flag_turn_off=0
class StartUnbRobocupModule(ALModule):

    def __init__(self, name):
        ALModule.__init__(self, name)
        # No need for IP and port here because
        # we have our Python broker connected to NAOqi broker
        
        
        self.tts = ALProxy("ALTextToSpeech")
        # Subscribe to the FaceDetected event:
        global memory
        memory = ALProxy("ALMemory")
        memory.subscribeToEvent("MiddleTactilTouched",
            "StartUnbRobocup",
            "onMiddleTactilTouched")

    def onMiddleTactilTouched(self, *_args):
        memory.unsubscribeToEvent("MiddleTactilTouched",
            "StartUnbRobocup")
        leds=ALProxy("ALLeds")
        leds.fadeRGB("RightFaceLeds", 0x00009900,0)
        leds.fadeRGB("LeftFaceLeds", 0x00FF9900,0)
        self.tts.say("Lets Start")
        global pub_can_start
        pub_can_start.publish(True)
        global flag_turn_off
        flag_turn_off=1
        # Unsubscribe to the event when talking,
        # to avoid repetitions
        #memory.subscribeToEvent("MiddleTactilTouched","StartUnbRobocup","onMiddleTactilTouched")


def main():
    # Initialize Node
    rospy.init_node('unb_start_node')
    global pub_can_start
    pub_can_start = rospy.Publisher('/unb_robocup/can_start', Bool)
    pub_can_start.publish(False)
    
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
    global flag_turn_off
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print
        print "Interrupted by user, shutting down"
        myBroker.shutdown()
    myBroker.shutdown()
    rospy.signal_shutdown('Keyboard interrupt') 
    sys.exit(0)


##############################################################################
#                          RUNNING THE MAIN ROUTINE
############################################################################## 

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass
