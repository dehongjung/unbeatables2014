#!/usr/bin/env python

##############################################################################
#                                INCLUDES
##############################################################################
import roslib; roslib.load_manifest('unb_robocup')
import rospy

import cv2
import cv2.cv
import cv
import numpy as np
from naoqi import ALProxy
from PIL import Image
#import Image
import vision_definitions
#Msgs
from std_msgs.msg import Int32MultiArray
#Services
from unb_robocup.srv import TrackBall
from unb_robocup.srv import TrackBallResponse
from unb_robocup.srv import TrackGoal2
from unb_robocup.srv import TrackGoal2Response
from unb_robocup.srv import CalcHistogram
from unb_robocup.srv import CalcHistogramResponse
#Histogram
from histogram import *

##############################################################################
#                            NODE MAIN ROUTINE
##############################################################################

def main():
    
    # Initialize Node
    rospy.init_node('unb_vision_node')
    
    # Initialize object
    unb_vision = UnBVision()    
    try:
        unb_vision.Loop()
    except KeyboardInterrupt:
        unb_vision.cam_proxy.unsubscribe(unb_vision.name_id_0)
        unb_vision.cam_proxy.unsubscribe(unb_vision.name_id_1)
        rospy.signal_shutdown('Keyboard interrupt')      
    
##############################################################################
#                            CLASS RobotPlot
##############################################################################
class ReturnData:
    def __init__(self):
        self.x=0
        self.y=0
        self.bola=0
        self.camera = 1

class UnBVision:


    ##############################################################################
    #                         CONSTRUCTORS AND DESTRUCTORS
    ##############################################################################

    def __init__(self):
        #Wait for service   
    
    
        # Initialize publishers
        self.pub_lines = rospy.Publisher('/unb_robocup/vision/lines', Int32MultiArray)
        # Initialize service client
        
        # Initialize service server
        self.ss_track_ball = rospy.Service('/unb_robocup/vision/track_ball', TrackBall , self.TrackBall)
        self.ss_calc_histogram = rospy.Service('/unb_robocup/vision/calc_histogram', CalcHistogram , self.CalcHistogram)
        #self.ss_track_goal = rospy.Service('/unb_robocup/vision/track_goal', GetSonar , self.TrackGoal)
        self.ss_track_goal2 = rospy.Service('/unb_robocup/vision/track_goal2', TrackGoal2 , self.TrackGoal2)
        
        self.cam_proxy=ALProxy("ALVideoDevice","127.0.0.1",9559)
        self.resolution=vision_definitions.kQVGA
        #self.color_space=vision_definitions.kYUVColorSpace
        self.color_space=vision_definitions.kBGRColorSpace
        self.fps=30
        self.name_id_0 =self.cam_proxy.subscribeCamera("Camera_0dsh",0,self.resolution,self.color_space,self.fps)
        self.name_id_1 =self.cam_proxy.subscribeCamera("Camera_1dsh",1,self.resolution,self.color_space,self.fps)
        
        self.size = 320,240
        self.frame=0
        self.bola = 0
        self.count = 0
        self.x=0
        self.y=0
        self.found = 0
        
        self.xgol = 0
        self.ygol = 0
        self.gol= 0
        self.con3 = 0
        self.bufferX = 0
        self.bufferY = 0
        self.goalbuffer = np.zeros(30)
        
        self.return_data=ReturnData()
        self.return_data_ready=ReturnData()
        self.return_data_histogram=ReturnData()
        #self.return_data_goal = ReturnData()
        #self.return_data_ready_goal = ReturnData()


        self.frame_top=None
        self.frame_bot=None
        
        self.histogram = Histogram()
    ##############################################################################
    #                         NODE FUNCTION
    ##############################################################################

    def Loop(self):

        # Define rate
        rate = rospy.Rate(30);
           
        # Wait for CTRL+C
        while not rospy.is_shutdown():
            #image = self.sc_get_image(1)
            image_0=self.cam_proxy.getImageRemote(self.name_id_0)
            self.cam_proxy.releaseImage(self.name_id_0)
            
            image_1=self.cam_proxy.getImageRemote(self.name_id_1)
            self.cam_proxy.releaseImage(self.name_id_1)
            
            #image[6] contains the image data passed as an array of ASCII chars
            data_0=image_0[6]
            image_width_0=image_0[0]
            image_height_0=image_0[1]
            
            self.frame_0 = Image.fromstring('RGB',(image_width_0, image_height_0),data_0)
            b, g, r = self.frame_0.split()
            self.frame_0 = Image.merge('RGB', (r,g,b))
            #self.frame_0.save("calibracao_0.png","PNG")
            
            #image[6] contains the image data passed as an array of ASCII chars
            data_1=image_1[6]
            image_width_1=image_1[0]
            image_height_1=image_1[1]
            
            self.frame_1 = Image.fromstring("RGB",(image_width_1, image_height_1),data_1)
            b, g, r = self.frame_1.split()
            self.frame_1 = Image.merge('RGB', (r,g,b))
            #self.frame_1.save("calibracao_1.png","PNG")
            
            self.frame_top=np.asarray(self.frame_0)
            self.frame_bot=np.asarray(self.frame_1)
            self.ProcessBall(self.frame_top,self.frame_bot)
            
            self.ProcessGoal(self.frame_top)
            rate.sleep()
        
    ##############################################################################
    #                         PROCESS FUNCTION BALL
    ##############################################################################
    def ProcessBall(self,frame_top,frame_bot):
                           
        self.VisionBot(frame_bot)
        
        if self.bola == 0:
            self.VisionTop(frame_top)
            if(self.bola ==0):
                print "Nao achou"                 
        
    ##############################################################################
    #                         PROCESS FUNCTION GOAL
    ##############################################################################   
    
    def ProcessGoal(self, frame_top):
        hueMin = 21
        hueMax = 38
        satMin = 151
        satMax = 220
        valMin = 184
        valMax = 255
        yellow_min = np.array([hueMin, satMin, valMin],dtype=np.uint8)
        yellow_max = np.array([hueMax, satMax, valMax],dtype=np.uint8)

        # Convert BGR to HSV
        hsv_frame = cv2.cvtColor(frame_top, cv2.COLOR_BGR2HSV)
        thresholded = cv2.inRange(hsv_frame, yellow_min, yellow_max)


        img = thresholded.copy()
        cop = frame_top.copy()
        src = cop.copy()
        skel = np.zeros(img.shape,np.uint8)

        
         
        frame = cv2.cvtColor(src,cv2.COLOR_BGR2HSV)
        img = cv2.inRange(frame, yellow_min, yellow_max)
        element = cv2.getStructuringElement(cv2.MORPH_CROSS,(3,3))
        element2 = cv2.getStructuringElement(cv2.MORPH_CROSS,(5,5))
        done = False
        temp = cv2.dilate(img,element)
        eroded = cv2.erode(temp,element)
        img = cv2.erode(eroded,element)
        
        while( not done):
            eroded = cv2.erode(img,element)
            temp = cv2.dilate(eroded,element)
            temp = cv2.subtract(img,temp)
            skel = cv2.bitwise_or(skel,temp)
            img = eroded.copy()
         
            zeros = self.size - cv2.countNonZero(img)
            if zeros == self.size:
                done = True

        done = False
        temp = cv2.dilate(skel,element)
        eroded = temp.copy()
        emp = img.copy()    
        newRho = 15
        newTheta = 10
        newTresh = 247
       
        

        lines = cv2.HoughLines(eroded,newRho,np.pi/newTheta,newTresh)
        if lines is not None:
            i = 0
            
            Xi = 1
            Yi = 1
            self.xgol = 0
            self.ygol = 0
            
            for rho,theta in lines[0]:
                a = np.cos(theta)
                b = np.sin(theta)
                x0 = a*rho
                y0 = b*rho
                x1 = int(x0 + 1000*(-b))
                y1 = int(y0 + 1000*(a))
                x2 = int(x0 - 1000*(-b))
                y2 = int(y0 - 1000*(a))
                xTemp1 = abs(x1)
                xTemp2 = abs(x2)
                yTemp1 = abs(y1)
                yTemp2 = abs(y2)
                if(((0.95*xTemp2<= xTemp1) & (1.05*xTemp2 >= xTemp1))|((0.9*yTemp2<=yTemp1) & (1.1*yTemp2 >= yTemp1))):                 
                    cv2.line(emp,(x1,y1),(x2,y2),(255,255,255),2)
                    cv2.line(cop,(x1,y1),(x2,y2),(255,255,255),2)
                    if(theta == 0):
                         self.xgol = ((Xi-1)*self.xgoa + x0)/Xi    #RETORNO
                         Xi+=1  
                    else:
                        self.ygol = ((Yi-1)*self.ygol + y0)/Yi     #RETORNO
                        Yi += 1         
                i+= 1  
            if i == 3:
                self.goalbuffer[self.con3] = 1
            else:
                self.goalbuffer[self.con3] = 0
            goalsum = (100*sum(self.goalbuffer))/30
            if goalsum >= 50:
                self.gol = 1                        #RETORNO
                print "ACHOU GOL"
            else:
                self.gol = 0                         #RETORNO
                print "NAUM ACHOU GOL"
            if(((self.bufferX-30) <= self.xgol) & (self.xgol <= (self.bufferX+30)) & ((self.bufferY-30) <= self.ygol) & (self.ygol <= (self.bufferY+30))): 
                print "xgoal =",self.xgol
                print "ygoal =",self.ygol
                self.bufferX = self.xgol
                self.bufferY = self.ygol
                self.xgol = self.bufferX
                self.ygol = self.bufferY
            elif(self.nAchou > 30):
                self.bufferX = self.xgol
                self.bufferY = self.ygol
                self.nAchou = 0
                print "xgoal =",self.xgol
                print "ygoal =",self.ygol 
            else:
                self.nAchou += 1
                print "xgoal =",self.xgol
                print "ygoal =",self.ygol    
                
                self.xgol = self.bufferX
                self.ygol = self.bufferY
        self.con3 += 1
        self.con3 = self.con3%30

    ##############################################################################
    #                         PROCESS Vision Top Camera
    ##############################################################################
    def VisionTop(self,frame_top):
        #rospy.loginfo("CAMERA DE CIMA")
        thresh = np.zeros(self.size, dtype=np.uint8)
        

        # Convert BGR to HSV
        img_hsv = cv2.cvtColor(frame_top, cv2.COLOR_BGR2HSV)
        img_gray = cv2.cvtColor(frame_top, cv2.COLOR_RGB2GRAY)
        
        #Gaussian Blur
        ORANGETrackingFrames = cv2.blur(frame_top,(11,11))
     

        # define range of orange color in BGR
        #lower_orange = np.array([0,161,88], dtype=np.uint8)   CASA
        #upper_orange = np.array([4, 255, 255], dtype=np.uint8)
        lower_orange = np.array([97, 167, 132], dtype=np.uint8)
        upper_orange = np.array([210, 255, 255], dtype=np.uint8)

        # Threshold the HSV image to get only orange colors
        thresh = cv2.inRange(img_hsv, lower_orange, upper_orange)
        
        #Split
        thresholded1 = cv2.split(img_hsv)[0]
        thresholded2 = cv2.split(img_hsv)[1]
        thresholded3 = cv2.split(img_hsv)[2]
        
        
        #Gaussian 
        #thresh = cv2.blur(thresh,(3,3))
        
        #Opening
        kernel = np.ones((5,5),np.uint8)

        thresh = cv2.morphologyEx(thresh, cv2.MORPH_OPEN, kernel)
        #thresh = cv2.erode(thresh,kernel,iterations = 1)
        #thresh = cv2.dilate(thresh,kernel,iterations = 1)
        #thresh = cv2.dilate(thresh,kernel,iterations = 1)

        
        
        #Moments
        M = cv2.moments(thresh)
        if M['m00'] == 0.0:
            M['m00'] = 1

        ORANGEmoment10 = float(M['m10']/M['m00'])
        
        ORANGEmoment01 = float(M['m01']/M['m00'])
        
        if M['m00'] == 0.0:
            ORANGEmoment10 = 0.0
            ORANGEmoment01 = 0.0
            
        x = ORANGEmoment10
        y = ORANGEmoment01
        
        img_contours = np.zeros(self.size, dtype=np.uint8)
        img_contours = thresh.copy()
        
        #Contours
        contours, hierarchy = cv2.findContours(img_contours,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE)
        
        contours_poly = [(0,0) for i in range(len(contours))]
        boundRect = [(0,0,0,0) for i in range(len(contours))]
        center = [(0,0) for i in range(len(contours))]
        radius = [0.0 for i in range(len(contours))]
            
        for i in range(0, len(contours)):
            contours_poly[i] = cv2.approxPolyDP(contours[i], 3, True)
            boundRect[i] = cv2.boundingRect( contours_poly[i] )
            center[i], radius[i] = cv2.minEnclosingCircle(contours_poly[i])
        
        flag_get_data=0
        if x > 0 and y > 0:
            self.bola=1    
            print "ACHOU! [Top]"
            print ("X: %d    Y: %d" %(x, y))
        else:
            self.bola=0         
        #print "Bola = %d"%self.bola
        #image[6] contains the image data passed as an array of ASCII chars
        
        #frame_0 = Image.fromarray(thresh)
        #frame_0.save("thresh_0.png","PNG")
        
      
        self.return_data.x= x
        self.return_data.y= y
        self.return_data.camera = 0
        self.return_data.bola = self.bola
        self.return_data_ready=self.return_data
        
    ##############################################################################
    #                         PROCESS Vision Bottom Camera
    ##############################################################################
    def VisionBot(self,frame_bot):
        
        #rospy.loginfo("CAMERA DE BAIXO")
        thresh = np.zeros(self.size, dtype=np.uint8)
        

        # Convert BGR to HSV
        img_hsv = cv2.cvtColor(frame_bot, cv2.COLOR_BGR2HSV)
        img_gray = cv2.cvtColor(frame_bot, cv2.COLOR_RGB2GRAY)
        
        #Gaussian Blur
        ORANGETrackingFrames = cv2.blur(frame_bot,(11,11))
     

        # define range of orange color in BGR
        #lower_orange = np.array([0,161,88], dtype=np.uint8)   CASA
        #upper_orange = np.array([4, 255, 255], dtype=np.uint8)
        lower_orange = np.array([97, 167, 132], dtype=np.uint8)
        upper_orange = np.array([210, 255, 255], dtype=np.uint8)

        # Threshold the HSV image to get only orange colors
        thresh = cv2.inRange(img_hsv, lower_orange, upper_orange)
        
        
        #Gaussian 
        #thresh = cv2.blur(thresh,(3,3))
        
        #Opening
        kernel = np.ones((5,5),np.uint8)

        thresh = cv2.morphologyEx(thresh, cv2.MORPH_OPEN, kernel)
        #thresh = cv2.erode(thresh,kernel,iterations = 1)
        #thresh = cv2.dilate(thresh,kernel,iterations = 1)
        #thresh = cv2.dilate(thresh,kernel,iterations = 1)

        
        
        #Moments
        M = cv2.moments(thresh)
        if M['m00'] == 0.0:
            M['m00'] = 1

        ORANGEmoment10 = float(M['m10']/M['m00'])
        
        ORANGEmoment01 = float(M['m01']/M['m00'])
        
        if M['m00'] == 0.0:
            ORANGEmoment10 = 0.0
            ORANGEmoment01 = 0.0
            
        x = ORANGEmoment10
        y = ORANGEmoment01
        
        img_contours = np.zeros(self.size, dtype=np.uint8)
        img_contours = thresh.copy()
        
        #Contours
        contours, hierarchy = cv2.findContours(img_contours,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE)
        
        contours_poly = [(0,0) for i in range(len(contours))]
        boundRect = [(0,0,0,0) for i in range(len(contours))]
        center = [(0,0) for i in range(len(contours))]
        radius = [0.0 for i in range(len(contours))]
            
        for i in range(0, len(contours)):
            contours_poly[i] = cv2.approxPolyDP(contours[i], 3, True)
            boundRect[i] = cv2.boundingRect( contours_poly[i] )
            center[i], radius[i] = cv2.minEnclosingCircle(contours_poly[i])
        
        flag_get_data=0
        if x > 0 and y > 0:
            for i in range(0, len(contours)):
                if cv2.contourArea(contours[i]) > 10:
                    check = cv2.pointPolygonTest( contours[i], (x, y), True)
                    if check >= 0:
                        self.bola = 1
                        #print "Countour Area: %d " %cv2.contourArea(contours[i])
                        print "ACHOU! [BOTTOM]"
                        print ("X: %d    Y: %d" %(x, y))
                        break
                    else:
                        self.bola=0
                else:
                     self.bola=0       
        else:
            self.bola=0         
        #print "Bola = %d"%self.bola
        #frame_0 = Image.fromarray(thresh)
        #frame_0.save("thresh_1.png","PNG")
        
        
      
        self.return_data.x= x
        self.return_data.y= y
        self.return_data.bola = self.bola
        self.return_data.camera = 1
        self.return_data_ready=self.return_data



    ##############################################################################
    #                         PROCESS FUNCTION LINES
    ##############################################################################
    
    def TrackLines(self, frame1):
            
        #Thresholds
        line_threshold_theta_low = 0.03
        line_threshold_theta_high = 0.315
        line_angle_threshold=np.pi/3.0
        houghLinesThreshold = 35
        close_threshold = 80
       
        # Convert BGR to HSV
        frame = cv2.cvtColor(frame1, cv2.COLOR_BGR2HSV)
        # Convert BGR to Grayscale
        img_gray = cv2.cvtColor(frame1, cv2.COLOR_RGB2GRAY)
        

            
        #Gaussian Blur
        #WHITETrackingFrames = cv2.blur(frame,(4,4))
        GREENTrackingFrames = cv2.blur(frame,(2,2))
        #GREENTrackingFrames = 255 - GREENTrackingFrames
        
        #CALIBRATE HERE
        lower_green = np.array([35, 80, 0], dtype=np.uint8)
        upper_green = np.array([85, 210, 210], dtype=np.uint8)
        
        
        # Threshold the HSV image to get only green colors
        GREENTrackingFrames = cv2.inRange(GREENTrackingFrames, lower_green, upper_green)
        GREENTrackingFrames = 255 - GREENTrackingFrames
       
        #Line Detection
        edges = cv2.Canny(GREENTrackingFrames,50,150,apertureSize = 3)
        lines = cv2.HoughLines(edges,1,np.pi/180,houghLinesThreshold)
        LINETrackingFrames = frame1.copy()
        
        x1 = []
        y1 = []
        x2 = []
        y2 = []
        
        k=0
        nLines=0
        param_list = []
        
        for rho,theta in lines[0]:
            flag = 0
            a = np.cos(theta)
            b = np.sin(theta)
            x0 = a*rho
            y0 = b*rho
            if k!=0:
                for n in range(0,k-1):
                    if (abs(lines[0][n][1]-lines[0][k][1])/(np.pi) >= line_threshold_theta_high):
                        flag = 1
                        break
                    if (abs(lines[0][n][1]-lines[0][k][1])/(np.pi) <= line_threshold_theta_low):
                        flag = 1
                        break
            if not flag:
                param_list.append([lines[0][k][0],lines[0][k][1]])
                x1.append(int(x0 + 400*(-b)))
                y1.append(int(y0 + 400*(a)))
                x2.append(int(x0 - 400*(-b)))
                y2.append(int(y0 - 400*(a)))
                cv2.line(LINETrackingFrames,(x1[nLines],y1[nLines]),(x2[nLines],y2[nLines]),(0,0,255),2)
                nLines+=1
            flag = 0 
            k+=1
        
        #Verify if the line is close
        line_is_close = 0
        
        for i in range(nLines):
            if (abs(param_list[i][1]) <= line_angle_threshold and (np.tan(param_list[i][1])*(160-x1[i]))+y1[i]>=close_threshold):
                line_is_close = 1
                break
        
        #Find the lines intersections
        line_intersection = []
        k=0
        point_is_close = 0
        
        for i in range(nLines):
            for j in range(i+1,nLines):
                m1 = np.tan(param_list[j][1])
                n1 = param_list[j][0]/np.cos(param_list[j][1])
                m2 = np.tan(param_list[i][1])
                n2 = param_list[i][0]/np.cos(param_list[i][1])
                if param_list[i][1] != param_list[j][1]: #retas nao sao paralelas
                    x_int = (m1*n2-n1*m2)/(m1-m2)
                    y_int = (n1-n2)/(m1-m2)
                    if(x_int>=0 and (x_int)<=360 and y_int>=0 and (y_int)<=240):
                        line_intersection.append([int(x_int),int(y_int)])
                        cv2.circle(LINETrackingFrames,(line_intersection[k][0],line_intersection[k][1]),3,(255,0,0),-1)
                        k+=1
                        if (y_int>=close_threshold):
                            point_is_close = 1

        print line_is_close,point_is_close
        #Int32MultiArray out
        #out.data[0]=line_is_close
        #out.data[1]=point_is_close
        #self.pub_lines.publish(out)
    ##############################################################################
    #                         PROCESS Histogram
    ##############################################################################
    def CalcHistogramFunction(self, flag):
        if flag == 0:
            self.histogram.getFirstImage(self.frame_top)
            self.return_data_histogram.isTheSame = False
        elif flag == 1:
            self.return_data_histogram.isTheSame = self.histogram.compareHistograms(self.frame_top)
    ##############################################################################
    #                         Service Server Callbacks
    ##############################################################################
    def TrackBall(self,req):
        return TrackBallResponse(self.return_data_ready.x,self.return_data_ready.y, self.return_data.camera,self.return_data_ready.bola)
    def CalcHistogram(self,req):
        self.CalcHistogramFunction(req.flag)
        return CalcHistogramResponse(self.return_data_histogram.isTheSame) 
    #def TrackGoal(self,req):
        #return GetSonarResponse(self.xgoal,self.ygoal,self.goal)
    def TrackGoal2(self,req):
        return TrackGoal2Response(self.xgol, self.ygol, self.gol)  
    
##############################################################################
#                          RUNNING THE MAIN ROUTINE
############################################################################## 

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass
