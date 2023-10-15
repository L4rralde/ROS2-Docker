FROM ros:humble-ros-base

RUN apt-get update && apt-get install ros-humble-turtlesim -y && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install ~nros-humble-rqt* -y && rm -rf /var/lib/apt/lists/*
