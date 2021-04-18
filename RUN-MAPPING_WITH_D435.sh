#!/bin/bash

# Load setup.bash
source ~/.bashrc

# 
readonly SETTING_FILE_PATH="Examples/RGB-D/D435.yaml"
echo "Setting file path            >>  ${SETTING_FILE_PATH}"

readonly SUBSCRIBE_IMAGE_COLOR="/camera/rgb/image_raw:=/camera/color/image_raw"
echo "Subscribe image color topic  >>  ${SUBSCRIBE_IMAGE_COLOR}"

readonly SUBSCRIBE_IMAGE_DEPTH="/camera/depth_registered/image_raw:=/camera/aligned_depth_to_color/image_raw"
echo "Subscribe image depth topic  >>  ${SUBSCRIBE_IMAGE_DEPTH}"

# 実行コマンド作成
_cmd="rosrun ORB_SLAM2 RGBD Vocabulary/ORBvoc.txt ${SETTING_FILE_PATH} ${SUBSCRIBE_IMAGE_COLOR} ${SUBSCRIBE_IMAGE_DEPTH}"
echo "実行コマンド
${_cmd}"

# 実行
$_cmd

