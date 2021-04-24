#!/bin/bash
# rosrun ORB_SLAM2 Stereo Vocabulary/ORBvoc.txt Examples/Stereo/ZED.yaml true /camera/left/image_raw:=/zed/zed_node/left/image_rect_gray /camera/right/image_raw:=/zed/zed_node/right/image_rect_gray


# Load setup.bash
source ~/.bashrc

# 
readonly SETTING_FILE_PATH="Examples/Stereo/ZED.yaml"
echo "Setting file path            >>  ${SETTING_FILE_PATH}"

readonly SUBSCRIBE_IMAGE_RIGHT="/camera/right/image_raw:=/zed/zed_node/right/image_rect_color"
echo "Subscribe image right topic  >>  ${SUBSCRIBE_IMAGE_RIGHT}"

readonly SUBSCRIBE_IMAGE_LEFT="/camera/left/image_raw:=/zed/zed_node/left/image_rect_color"
echo "Subscribe image left topic  >>  ${SUBSCRIBE_IMAGE_LEFT}"


# 実行コマンド作成
_cmd="rosrun ORB_SLAM2 Stereo Vocabulary/ORBvoc.txt ${SETTING_FILE_PATH} true ${SUBSCRIBE_IMAGE_RIGHT} ${SUBSCRIBE_IMAGE_LEFT}"
echo "実行コマンド
${_cmd}"

# 実行
$_cmd
