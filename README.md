# ROS2-Docker
A getting started guide of ROS2 with docker


## Why Docker?
It's 2023, Apple has already released 2 generations of computer chips (since Intel transistor technologic is no longer competitve and ARM is rock solid) which turn out to be stunning! Unfortonately, as a new challenger there, therte is little software support in ROS2 (which it is also kind of new) and it is also quite complicated to found stable binaries from the Open Robotics Foundation and, finally, that's why docker seem to be a feasible alternative to start developing ROS2 projects using an apple silicon machine.

There are many other study cases which docker may be handy. Such as easily installing your project into another computer with out messing up their pervious set-up, or needing to install your project in multiple robots.


Besides it is not recommended at all, this is a joruney I would like to take.

## Install
I'm starting this repo with instructions for apple silicon, but in the future I will try to install this project in Single Board Computers.

1. Install Docker or Docker Desktop from the official website.

2. Install XQuartz. Latest version work for both Intel and Apple silicon chips. Restart when done. We need xquartz to use GUI applications, e.g., rtq.

3. Set up Xserver to allow connections from network clients. To do that, open xquartz, goto settings->Security

3. Download the base ros image from Docker Hub:
```shell
docker pull ros:ros-<ros_distro>-base
```


## Usage
Once you installed docker, xquartz and a ros image:

1. Add your ip to xquartz: Open xterm from xquartz and type:
```shell
xhost <your_computer_ip>
```

2. Open Docker Desktop or start docker form CLI.

3. Launch a container with the ros image:
```shell
docker run -it -e DISPLAY=<your_computer_ip>:0 --name ros ros:ros-<ros_distro>-base
```
where -e is used to set environment variables. For instance, here $DISPLAY is set.

Now you can use your container as it was an ubuntu terminal with ros priorly installed.

## How to
Get the container id:
```shell
docker ps
```


Open another terminal of the same container:
```shell
docker exec -it <container_id> bash
source *_entrypoint.sh
```

## TODO:
- Create a container with packages installed
- Mount volume disks or binds
