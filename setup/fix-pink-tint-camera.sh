#Fix pink tint on Jetson Nano wide angle camera
#https://medium.com/@jonathantse/fix-pink-tint-on-jetson-nano-wide-angle-camera-a8ce5fbd797f
wget https://www.waveshare.com/w/upload/e/eb/Camera_overrides.tar.gz
tar zxvf Camera_overrides.tar.gz 
sudo cp camera_overrides.isp /var/nvidia/nvcam/settings/
sudo chmod 664 /var/nvidia/nvcam/settings/camera_overrides.isp
sudo chown root:root /var/nvidia/nvcam/settings/camera_overrides.isp