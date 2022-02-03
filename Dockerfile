FROM osrf/ros:noetic-desktop-focal@sha256:a370d213681522f27b36f1ebc4b5ef5e65cef5b697b7478720698e455f85c13b

LABEL Luca Schirmbrand - Remote Machine for DHBW Swarmlab Driving

ARG DEBIAN_FRONTEND=noninteractive

# Install nano
RUN apt-get update \
    && apt-get install -y nano

# Install git
RUN apt-get update \
    && apt-get install -y git

# Install net-tools
RUN apt-get update \
    && apt-get install -y net-tools

WORKDIR /remotecontainer_ws/src
RUN git clone https://github.com/lschirmbrand/DHBW_rviz_container.git

RUN mv ./DHBW_rviz_container ./rviz_launch

WORKDIR /remotecontainer_ws
RUN /bin/bash -c "source /opt/ros/noetic/setup.bash && \
    catkin_make_isolated"