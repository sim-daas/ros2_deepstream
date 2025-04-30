cd ..
cd deepstream
cd /home/
ls
git clone https://github.com/ultralytics/ultralytics.git
cd ultralytics
python3 -m venv myenv
nala install python3.10-venv
python3 -m venv yolov8
pip3 install -e .
pip3 install onnx onnxslim onnxruntime
ls
pip install ultralytics
cd ..
git clone https://github.com/marcoslucianops/DeepStream-Yolo.git
cp DeepStream-Yolo/utils/export_yoloV8.py ultralytics/.
cd ultralytics/
wget https://github.com/ultralytics/assets/releases/download/v8.2.0/yolov8m.pt
python3 export_yoloV8.py -w yolov8m.pt --dynamic --simplify
pip install ultralytics
python3 export_yoloV8.py -w yolov8m.pt --dynamic --simplify
ls
cd ..
ls
cd DeepStream-Yolo/
ls
cd ..
history 
cd
cat .bash_history 
ls
ls -a
cd /home/
ls
ls ros/
cd ultralytics/
ls
python3 export_yoloV8.py -w yolov8m.pt --dynamic --simplify
", line 3, in <module>
    from .fastsam import FastSAM
pip install --upgrade matplotlib ultralytics
python3 export_yoloV8.py -w yolov8m.pt --dynamic --simplify
ls
cd ..
cd DeepStream-Yolo/
export CUDA_VER=12.2
cp /home/ultralytics/yolov8m.pt.onnx .
cp /home/ultralytics/labels.txt .
make -C nvdsinfer_custom_impl_Yolo clean && make -C nvdsinfer_custom_impl_Yolo
nvcc --version
nala install nvcc
nvidia-smi
update-alternatives --display cuda
export CUDA_VER=12.3
make -C nvdsinfer_custom_impl_Yolo clean && make -C nvdsinfer_custom_impl_Yolo
export CUDA_VER=12.2
nala install cuda-toolkit-12-2
nala install cuda-toolkit-12-3
nala install cuda-toolkit-12-2
nala install cuda-toolkit-12-2 --no-fix-broken
nala install cuda-toolkit-12-3
update-alternatives --set cuda /usr/local/cuda-12.2
nala install cuda-toolkit-12-2
update-alternatives --set cuda /usr/local/cuda-12.3
export CUDA_VER=12.3
nala install cuda-toolkit-12-3
update-alternatives --display cuda
make -C nvdsinfer_custom_impl_Yolo clean && make -C nvdsinfer_custom_impl_Yolo
deepstream-app -c deepstream_app_config.txt
sudo deepstream-app -c deepstream_app_config.txt
ls
history
cd ..
ls deepstream_python_apps/apps/deepstream-test1-usbcam/
nala install ranger
ranger 
nala update
ls
which ls
cat /usr/bin/ls
history 
ls
cd /home/
ls
code DeepStream-Yolo/deepstream_app_config.txt 
deepstream-app -c deepstream_app_config.txt
cd DeepStream-Yolo/
deepstream-app -c deepstream_app_config.txt
ls
deepstream-app -c deepstream_app_config.txt
ls
deepstream-app -c deepstream_app_config.txt
ls
deepstream-app -c deepstream_app_config.txt
history 
deepstream-app -c deepstream_app_config.txt
pip
sh pip
bash pip3
bash "pip3"
python3 -m pip
cd
history
nala install python3-gi python3-dev python3-gst-1.0 python-gi-dev git meson     python3 python3-pip python3.10-dev cmake g++ build-essential libglib2.0-dev     libglib2.0-dev-bin libgstreamer1.0-dev libtool m4 autoconf automake libgirepository1.0-dev libcairo2-dev
cd /opt/nvidia/deepstream/deepstream/samples/configs/deepstream-app/
cd ..
cd deepstream/samples/configs/deepstream-app/
history
cd ros/deepstream
ls
cp /opt/nvidia/deepstream/deepstream/samples/streams/sample_720p.h264 .
python3 run.py 
nano ~/.bashrc 
code ~/.bashrc 
source ~/.bashrc
python3 run.py 
cp ../config_infer_primary_yoloV8.txt config_inferyolov8.txt
python3 run.py 
python3 run.py s
ls
python3 run.py s
python3 run.py s s
python3 run.py
source ~/.bashrc
python3 run.py
ls
python3 run.py
cd deepstream_python_apps/apps/deepstream-test1/
code deepstream_test_1.py 
cd /home/ros/deepstream/
python3 run.py 
ros2
cd
ros2 run demo_nodes_cpp talker
cd ros/deepstream/
python3 run.py 
code config_tracker.txt 
python3 run.py 
cd ..
mkdir ros2
mkdir ros2/src
cd ros2/
colcon build
ros2
nala install python3-colcon-common-extensions
colcon build
ls
source install/setup.bash
cd src/
ros2 pkg create deepros --build-type ament_python
code deepros/package.xml 
cp ../../deepstream/* deepros/.
code deepros/setup.py 
cd ..
colcon build
source install/setup.bash 
cd src/deepros/
ls
rm config_*
rm deepstream_class.py 
rm run.py 
rm sample_720p.h264 
cd deepros/
cp ../../../../deepstream/* deepros/.
cp ../../../../deepstream/* .
ls
cd ..
colcon build
cd src/deepros/deepros/
python3 run.py 
cd ..
code deepros/setup.py 
cd ..
colcon build
cd src/deepros/deepros/
python3 run.py 
cd ..
source install/setup.bash 
cd src/deepros/deepros/
python3 run.py 
cd ..
colcon build
source install/setup.bash 
cd src/deepros/deepros/
python3 run.py 
cd ..
rosdep install
nala install ros-humble-rosdep
ros2 run deepros detect
colcon build
source install/setup.bash 
ros2 run deepros detect
ros2 run demo_nodes_cpp talker
cd ..
cd ros/ros2/src/deepros/
code package.xml 
code setup.cfg 
cd ..
colcon build
source install/setup.bash 
python3 src/deepros/deepros/run.py 
cd src/deepros/deepros/
python3 run.py 
ros2
python3 run.py 
cd ..
colcon build
source install/setup.bash 
cd src/deepros/deepros/
python3 run.py 
code run.py 
python3 run.py 
code deepstream_class.py 
python3 run.py 
source /home/ros/ros2/install/setup.bash 
python3 run.py 
source /home/ros/ros2/install/setup.bash 
python3 run.py 
cp deepstream_python_apps/ /opt/nvidia/deepstream/deepstream/samples/.
cp -r deepstream_python_apps/ /opt/nvidia/deepstream/deepstream/samples/.
cd /opt/nvidia/deepstream/deepstream/samples/deepstream_python_apps/apps/
ls
cd deepstream-test1/
python3 deepstream_test_1.py ../../../streams/sample_720p.h264 
cd ..
cd configs/
mkdir tracker
code config_tracker_IOU.yml
code config_tracker_nvdcfperf.yml
cd ..
cd deepstream_python_apps/apps/deepstream-test1/
python3 deepstream_test_1.py 
python3 deepstream_test_1.py ../../../streams/sample_720p.h264 
cd
cd ros2_ws/
cd src/py_pubsub/py_pubsub/
code publisher_member_function.py 
source ~/ros2_ws/install/setup.bash 
ros2 run py_pubsub talker
ls
python3 publisher_member_function.py 
code newnode.py
ls
python3 newnode.py 
gdb --args python3 newnode.py
nala install gdb
gdb --args python3 newnode.py
gdb python3 newnode.py
gdb newnode.py
chmod +x newnode.py 
gdb newnode.py
python3 publisher_member_function.py 
cd /home/ros/ros2/
colcon build
source /home/ros/ros2/install/setup.bash 
cd src/deepros/deepros/
python3 run.py
cd ros/deepstream/
python3 run.py 
ls
cp * /home/ros/ros2/src/deepros/deepros/.
cd ..
cd ros2/
colcon build
cd
cd ros2_ws/
colcon build
python3 snode.py 
cd
source /home/ros/ros2/install/setup.bash 
ros2 run deepros subs
nala install ros-humble-gazebo-plugins
cd
ls
cd roswithai/ros2/
source /home/ros/ros2/install/setup.bash 
ros2 run deepros subs
python3 snode.py 
cd
source /opt/ros/humble/setup.bash 
source ~/ros2_ws/install/setup.bash 
ls
cd /home/ros/
source ros2/install/setup.bash 
ros2 run deepros subs
ls
cd
ls
code pub.py 
pip install mediapipe opencv-python
code sm.py
wget https://storage.googleapis.com/mediapipe-models/hand_landmarker/hand_landmarker/float16/latest/hand_landmarker.task
python3 sm.py 
wget https://storage.googleapis.com/mediapipe-models/gesture_recognizer/gesture_recognizer/float16/latest/gesture_recognizer.task
python3 sm.py 
code gest.py
python3 gest.py 
cd
python3 gest.py 
cd
cd /home/ros/
./push.sh 
git status
./push.sh 
ls
./push.sh 
ls
cd
ls
ls roswithai/
rm -r roswithai/
ls top/
rm top/
rm -r top/
cp * /home/ros/smart-home/.
cd ros/
ls
mkdir smart-home
ls smart-home/
cd smart-home/
ls
python3 sm.py 
rm pub.py 
mv sm.py hand-landmarkdet.py
python3 gest
python3 gest.py 
mv gest.py gesture-det.py
mv rosgespub.py gest-pub.py
cd ..
./push.sh 
clear
rm -r smart-home/
./push.sh 
ros2 run demo_nodes_cpp listener
cd
history
ros2 run demo_nodes_cpp listener
ign
cd
ros2
rviz2 
ign
cd
ign
rviz2 
ros2 run demo_nodes_cpp listener
ros2 run demo_nodes_cpp talker
ros2 run demo_nodes_cpp listener
ping 224.0.0.1
apt install ping
apt install  inetutils-ping 2:2.2-2ubuntu0.1
apt install  inetutils-ping 
ping 224.0.0.1
export ROS_DOMAIN_ID=0
export ROS_IP=$(hostname -I | awk '{print $1}')
ros2 run demo_nodes_cpp listener
export RMW_IMPLEMENTATION=rmw_fastrtps_cpp
source /opt/ros/humble/setup.bash 
ros2 run demo_nodes_cpp listener
ros2 run demo_nodes_cpp talker
sudo apt-get install ros-${ROS_DISTRO}-ros-gz
apt-get update
sudo apt-get install ros-${ROS_DISTRO}-ros-gz
ign
ign gazebo
ign
rviz2
ign gazebo
rviz2
ign gazebo
ros2 run demo_nodes_cpp talker
ip a
ifconfig
apt update
apt install ip
apt install ipconfig
apt install ifconfig
apt install ip-utils
apt install iputils
apt install ip
apt install iputils-ping
ip a
ipconfig
ping
ifconfig
apt install net-tools
ifconfig
ros2 run demo_nodes_cpp talker
ifconfig
ros2 run demo_nodes_cpp talker
cd
ls
ros2 run demo_nodes_cpp talker
cd
nano fastdds.xml
export FASTRTPS_DEFAULT_PROFILES_FILE=$HOME/fastdds.xml
ros2 run demo_nodes_cpp listener
sudo apt install nmap
nmap -sU -p- localhost
ros2 run demo_nodes_cpp listener
sudo iptables -L -v -n
apt install iptables
sudo iptables -L -v -n
sudo netstat -uln | grep 7400
sudo ss -uln | grep 7400
ign gazebo
nmap
nmap -sU -p- localhost
nmap -sU -p- 172.16.143.138
ros2 run demo_nodes_cpp listener
nmap -sU -p- 172.16.143.138
ping 224.0.0.1
ip maddr show
apt-get install iproute2
apt install socat
nc -lu 12345
socat UDP-RECV:12345,ip-add-membership=224.0.0.1:eth0 -
socat - UDP-DATAGRAM:224.0.0.1:12345
route -n | grep 224.0.0.0
route -n 
ip link show enp4s0 | grep MULTICAST
sudo ip link set enp4s0 multicast on
sudo route add -net 224.0.0.0 netmask 240.0.0.0 dev enp4s0
ip link show enp4s0 | grep MULTICAST
route -n | grep 224.0.0.0
socat - UDP-DATAGRAM:224.0.0.1:12345
socat -d -d UDP4-RECV:12345,ip-add-membership=224.0.0.1:enp4s0 STDOUT
ros2 run demo_nodes_cpp listener
export ROS_LOCALHOST_ONLY=1
source /opt/ros/humble/setup.bash 
ros2 run demo_nodes_cpp listener
export ROS_DOMAIN_ID=1       # Must be consistent across nodes
export RMW_IMPLEMENTATION=rmw_fastrtps_cpp
export ROS_LOCALHOST_ONLY=0
env | grep ROS
ros2 doctor --report
ip maddr show enp4s0
ros2 doctor --report
ros2 run demo_nodes_cpp talker
ros2 run demo_nodes_cpp listener
sudo iptables -L | grep 7400
ros2 run demo_nodes_cpp listener
nvidia-smi
cd
ros2
ping
env | grep ROS_
cd ros/deepstream/
python3 run.py 
ls
python3 run.py 
cd
cd /home/ros/deepstream/
ls
nnp deepstream_class.py 
nano deepstream_class.py 
cd
ls
cd /home/
ls
cd DeepStream-Yolo/
ls
history
ls
cd ..
cd ultralytics/
python3 export_yoloV8.py -w yolov8m.pt --dynamic --simplify
wget https://github.com/ultralytics/assets/releases/download/v8.2.0/yolov8x.pt
python3 export_yoloV8.py -w yolov8x.pt --dynamic --simplify
ls
cp yolov8x.pt.onnx ../DeepStream-Yolo/.
cd ..
cd DeepStream-Yolo/
ls
history 
nano deepstream_app_config.txt 
nano config_infer_primary_yoloV8.txt 
deepstream-app -c deepstream_app_config.txt 
nano config_infer_primary_yoloV8.txt 
deepstream-app -c deepstream_app_config.txt 
nano config_infer_primary_yoloV8.txt 
deepstream-app -c deepstream_app_config.txt 
nano config_infer_primary_yoloV8.txt 
deepstream-app -c deepstream_app_config.txt 
ls
nano config_infer_primary_yoloV8.txt 
ls
deepstream-app -c deepstream_app_config.txt 
cd
cd /home/
cd DeepStream-Yolo/
deepstream-app -c deepstream_app_config.txt 
ls
nano config_infer_primary_yoloV8.txt 
deepstream-app -c deepstream_app_config.txt 
nano config_infer_primary_yoloV8.txt 
deepstream-app -c deepstream_app_config.txt 
nano config_infer_primary_yoloV8.txt 
deepstream-app -c deepstream_app_config.txt 
nano config_infer_primary_yoloV8.txt 
deepstream-app -c deepstream_app_config.txt 
cd ros/deepstream/
python3 run.py videos/cars1.mp4 
python3 run.py videos/cars3.mp4 
cd ros/deepstream/
python3 run.py videos/cars3.mp4 
cd ros/deepstream/
python3 run.py videos/cars3.mp4 
cd ros/deepstream/
python3 run.py videos/cars1.mp4 
ros2 echo topic topic
ros2 echo topic 
ros2 topic echo
ros2 topic echo 'topic'
cd
cd /home/ros/deepstream/
ls
python3 traffic-analytics.py 
cd ros/deepstream/
python3 run.py videos/cars1.mp4 
cd ..
ls
cp DeepStream-Yolo/ ros/deepstream/.
cp -r DeepStream-Yolo/ ros/deepstream/.
cd ros/deepstream/
ls
rm model_b8_gpu0_fp32_yolov8x.engine 
apt install cuda-toolkit-12-3
