#!/bin/bash
#rosservice call /gazebo/reset_world
#sleep 7
for i in `seq 1 4`;
do
    rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 1, right: 1}'
    rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 0.2, right: 0.2}'
    rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: -0.385, right: 0.385}'
    echo $i
done    


