# ROS2 notes

## The ROS Graph
The ROS graph is a network of ROS 2 elements processing data together at the same time. It encompasses all executables and the connections between them.

## Nodes
Each node in the ROS graph should be responsible for a single, modular purpose, e.g. controlling the wheel motors or publishing the sensor data from a laser range-finder. Each node can send and receive data from other nodes via topics, services, actions, or parameters.

## Topics
Topics are elements of the ROS graph that act as a bus for nodes to exchange messages. A node may publish data to any number of topics and simultaneously have subscriptions to any number of topics.

## Services
Nodes can communicate using services in ROS 2. Unlike a topic - a one way communication pattern where a node publishes information that can be consumed by one or more subscribers - a service is a request/response pattern where a client makes a request to a node providing the service and the service processes the request and generates a response.

You generally don’t want to use a service for continuous calls; topics or even actions would be better suited.

## Parameters
A parameter is a configuration value of a node. You can think of parameters as node settings. In ROS 2, each node maintains its own parameters. You can get and set parameter values from the command line. You can also save the parameter settings to a file to reload them in a future session.

## Actions
Actions are one of the communication types in ROS 2 and are intended for long running tasks. They consist of three parts: a goal, feedback, and a result.

Actions are built on topics and services. Their functionality is similar to services, except actions can be canceled. They also provide steady feedback, as opposed to services which return a single response.

Actions use a client-server model, similar to the publisher-subscriber model. An “action client” node sends a goal to an “action server” node that acknowledges the goal and returns a stream of feedback and a result.

