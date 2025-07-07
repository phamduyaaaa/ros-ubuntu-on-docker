# ROS Ubuntu on Docker

## Chạy trên máy tính cá nhân

Liệt kê toàn bộ docker image hiện có
```
sudo docker images
```
Liệt kê toàn bộ docker container, bao gồm cả các container đang chạy và đã dừng
```
sudo docker ps -a
```
Xây dựng một Docker image mới từ Dockerfile trong thư mục hiện tại
```
sudo docker build -t ros-noetic-ubuntu .
```
chạy một Docker container mới từ image
```
sudo docker run -it --rm ros-noetic-ubuntu
```
Khởi động ros master
```
roscore
```
Mở thêm terminal trong container 66d8291d0597 (xem số id bằng lệnh sudo docker ps -a)
```
sudo docker exec -it 66d8291d0597 bash
```
Chạy roscpp_tutorials talker
```
rosrun roscpp_tutorials talker
```
Thoát shell khỏi container hiện tại
```
exit hoặc Ctrl + D
```

## Chạy trên Vast.ai
Tham khảo tại: https://hub.docker.com/r/phamducduy1/ubuntu-focal-desktop-ros-noetic

![image](https://github.com/user-attachments/assets/e479a8c6-8011-482b-9306-c26253279692)
Docker Options:
```
-e ENABLE_AUTH=true -e ENABLE_HTTPS=true -e VNCOPTIONS="-DisableBasicAuth" -e NO_VNC_PORT=16901 -e WEBSOCKET_PORT=16901 -p 16901:16901  -e OPEN_BUTTON_PORT=6901 -e OPEN_BUTTON_TOKEN=1 -e PROXIED_PORTS=6901
```
![image](https://github.com/user-attachments/assets/b567e93a-9fee-4ecb-8f5c-eaef08f09b67)
![image](https://github.com/user-attachments/assets/43fee4fd-842e-4d93-9339-d1fd8e22dc23)



