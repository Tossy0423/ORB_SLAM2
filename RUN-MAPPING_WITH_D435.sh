#!/bin/bash

# Load setup.bash
source ~/.bashrc

now_date=`date '+%Y%m%d-%H:%M:%S'`

readonly SETTING_FILE_PATH=`Examples/RGB-D/D435.yaml`
echo $SETTING_FILE_PATH
# rosrun ORB_SLAM2 RGBD Vocabulary/ORBvoc.txt Examples/RGB-D/D435.yaml /camera/rgb/image_raw:=/camera/color/image_raw /camera/depth_registered/image_raw:=/camera/aligned_depth_to_color/image_raw
