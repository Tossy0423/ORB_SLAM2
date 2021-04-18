#!/bin/bash
source ~/.bashrc
now_date=`date '+%Y%m%d-%H:%M:%S'`
echo $now_date
rosbag record /camera/aligned_depth_to_color/image_raw /camera/color/image_raw -O $now_date
