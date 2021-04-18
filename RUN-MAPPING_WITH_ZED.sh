#!/bin/bash
rosrun ORB_SLAM2 Stereo Vocabulary/ORBvoc.txt Examples/Stereo/ZED.yaml true /camera/left/image_raw:=/zed/zed_node/left/image_rect_gray /camera/right/image_raw:=/zed/zed_node/right/image_rect_gray
