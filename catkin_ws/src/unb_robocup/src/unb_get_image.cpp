#include<exception>
#include<ros/ros.h>
#include<alproxies/almemoryproxy.h>

//AlVision
#include <alproxies/alvideodeviceproxy.h>
#include <alvision/alimage.h>
#include <alvision/alvisiondefinitions.h>

//Service description
#include <unb_robocup/GetImage.h>

//#include <sstream>
//#include <boost/format.hpp>
//#include <driver_base/SensorLevels.h>
#include <sensor_msgs/image_encodings.h>
//#include <tf/transform_listener.h>
class UnbNaoCamera
{
    public:
        
        ros::NodeHandle node_handle_;
        
        //Get Image Service Server
        ros::ServiceServer ss_get_image_;
        
        //Camera proxy
        AL::ALVideoDeviceProxy* camera_proxy;
        
        //Image pointer
        AL::ALImage* image_pointer;
        
        //Name ID
        std::string name_id_1;
        std::string name_id_0;
        
        UnbNaoCamera(ros::NodeHandle& node_handle)
        {
            node_handle_ = node_handle;
            
            ss_get_image_ = node_handle.advertiseService("/unb_robocup/camera/get", &UnbNaoCamera::getImageCallback, this);
            
            camera_proxy = new AL::ALVideoDeviceProxy("127.0.0.1", 9559);
            
            image_pointer = NULL;
            
            name_id_0 = "Camera_0";            
            name_id_1 = "Camera_1";
            
            name_id_0 = camera_proxy->subscribeCamera(name_id_0, 0, AL::kQVGA, AL::kBGRColorSpace,30);
            name_id_1 = camera_proxy->subscribeCamera(name_id_1, 1, AL::kQVGA, AL::kBGRColorSpace,30);
         }
         ~UnbNaoCamera ()
         {
            camera_proxy->releaseImage(name_id_0);
            camera_proxy->unsubscribe(name_id_0);
            camera_proxy->releaseImage(name_id_1);
            camera_proxy->unsubscribe(name_id_1);
            delete camera_proxy;   
         }
         
         bool getImageCallback(unb_robocup::GetImage::Request& request, unb_robocup::GetImage::Response& response)
         {
            sensor_msgs::Image image;
            //Image sent by the message
            AL::ALValue image_data;
            image_data.arrayReserve(7);
            //Subscribe to the camera requested
            //name_id = camera_proxy->subscribeCamera(name_id, request.camera_number, AL::kQVGA, AL::kBGRColorSpace,30);
            //image_pointer = (AL::ALImage*)camera_proxy->getImageLocal(name_id);
            if(request.camera_number==0)
            {
                image_data = camera_proxy->getImageRemote(name_id_0);
            }else
            {
                image_data = camera_proxy->getImageRemote(name_id_1);
            }
            /*
            if (config_.use_ros_time)
                image.header.stamp = ros::Time::now();
            else { 
                // use NAOqi timestamp
                image.header.stamp = ros::Time(((double) image_data[4] / 1000000.0) + (double) image_data[5]);
            }
            */
            image.header.stamp = ros::Time(((double) image_data[4] / 1000000.0) + (double) image_data[5]);
            image.width = (int) image_data[0];
            image.height = (int) image_data[1];
            image.step = image.width * (int) image_data[2];
            image.encoding = sensor_msgs::image_encodings::RGB8;
            
            int image_size = image.height * image.step;
            image.data.resize(image_size);
        
            memcpy(&(image.data)[0], 
                (unsigned char*) image_data[6].GetBinary(),
                image_size);
                
            response.image=image;
            //image_data = image_pointer->toALValue();
            //Release the one on the memory
            if(request.camera_number==0)
            {
                camera_proxy->releaseImage(name_id_0);
            }else
            {
                camera_proxy->releaseImage(name_id_1);
            }
            //camera_proxy->unsubscribe(name_id);
            
            return true; 
          }
};

int main(int argc, char** argv)
{
    //Always need to do this
    ros::init(argc, argv, "node_unb_get_image");
    ros::NodeHandle node_handle;
    
    UnbNaoCamera unb_nao_camera(node_handle);
    
    try {
        ros::spin();
    }
    catch (std::exception& e){
        //unb_nao_camera.camera_proxy->releaseImage(unb_nao_camera.name_id_0);
        //unb_nao_camera.camera_proxy->unsubscribe(unb_nao_camera.name_id_0);
        //unb_nao_camera.camera_proxy->releaseImage(unb_nao_camera.name_id_1);
        //unb_nao_camera.camera_proxy->unsubscribe(unb_nao_camera.name_id_1);
        ROS_INFO_STREAM("shutdown unb_get_image_node");
    }
    //unb_nao_camera.camera_proxy->releaseImage(unb_nao_camera.name_id_0);
    //unb_nao_camera.camera_proxy->unsubscribe(unb_nao_camera.name_id_0);
    //unb_nao_camera.camera_proxy->releaseImage(unb_nao_camera.name_id_1);
    //unb_nao_camera.camera_proxy->unsubscribe(unb_nao_camera.name_id_1);
    return 0;
}      
            
            
