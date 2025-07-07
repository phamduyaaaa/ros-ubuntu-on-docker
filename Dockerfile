# Copyright (c) 2025 Pham Duc Duy. All rights reserved.
# Author: duyphamrobotics
#
FROM ros:noetic-ros-core-focal

RUN apt-get update && apt-get install --no-install-recommends -y \
    build-essential \
    python3-rosdep \
    python3-rosinstall \
    python3-vcstools \
    curl \
    gnupg2 \
    lsb-release \
    && rm -rf /var/lib/apt/lists/*

RUN rosdep init && \
    rosdep update --rosdistro $ROS_DISTRO

RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-ros-base=1.5.0-1* \
    ros-noetic-roscpp-tutorials \
    ros-noetic-rospy-tutorials \
    ros-noetic-turtlesim \
    && rm -rf /var/lib/apt/lists/*

RUN echo "source /opt/ros/noetic/setup.bash" >> /root/.bashrc

CMD ["/bin/bash"]
