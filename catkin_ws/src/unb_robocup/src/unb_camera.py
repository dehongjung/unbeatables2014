#!/usr/bin/env python

##############################################################################
#                                INCLUDES
##############################################################################
import roslib; roslib.load_manifest('unb_robocup')
import rospy
import math
import nao_msgs

#Naoqi
from naoqi import ALProxy
import vision_definitions

#opencv
import cv

##############################################################################
#                            NODE MAIN ROUTINE
##############################################################################

def main():
    
    
    # Initialize Node
    rospy.init_node('camera_node')
    
    # Initialize object
    camera = Camera()  
    rospy.loginfo("Antes do Loop")
    camera.Loop()  
    
    # Bloqueante
    rospy.spin()
        
##############################################################################
#                            CLASS Camera
##############################################################################

class Camera:

    def __init__(self):
        rospy.loginfo("Comecou inicializacao")
        self.al_cam_proxy = ALProxy("ALVideoDevice", "127.0.0.1", 9559)
        #self.al_vision_proxy = ALProxy("ALVision", "127.0.0.1", 9559)
        self.resolution = vision_definitions.kQVGA
        self.color_space = vision_definitions.kYUV422ColorSpace
        self.fps = 30
        self.name_id = self.al_cam_proxy.subscribeCamera("NaoCameras", 0,self.resolution, self.color_space, self.fps)
        #self.name_id = self.al_cam_proxy.subscribe("NaoCameras", 0,self.resolution, self.color_space, self.fps)
        self.image = self.al_cam_proxy.getImagesLocal(self.name_id)

    ##############################################################################
    #                         NODE FUNCTION
    ##############################################################################
                    
    def Loop(self):
        # Define rate
        rate = rospy.Rate(30)
        rospy.loginfo("Mae vou entrar no while")
        while not rospy.is_shutdown():
            self.al_cam_proxy.releaseImage(self.name_id)
            self.image = self.al_cam_proxy.getImagesLocal(self.name_id)
            print self.image
            rate.sleep()

##############################################################################
#                          RUNNING THE MAIN ROUTINE
############################################################################## 

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass


