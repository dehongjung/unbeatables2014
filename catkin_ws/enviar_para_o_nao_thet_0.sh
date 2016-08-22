cd /home/nao/catkin_ws/build
make clean
cmake .
cd ..
catkin_make
scp -r /home/nao/catkin_ws nao@192.168.0."$1":/home/nao
