#!/usr/bin/env python
import roslib; roslib.load_manifest('unb_robocup')
import rospy
import numpy as np

from naoqi import ALProxy

def main():
    
    teste = ALProxy("ALTextToSpeech","127.0.0.1",9559)
    teste.say("Hello World!")


if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass
