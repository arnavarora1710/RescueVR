import os
os.environ["OPENCV_IO_ENABLE_OPENEXR"]="1"
import cv2
from ultralytics import YOLO
import json
import supervision as sv
import numpy as np

model = YOLO('yolov8s.pt')
model.to('cuda')

frame_dir = "C:\\Users\\zbot4\\Videos\\extract-turkey\\final-subset"
depth_dir = "C:\\Users\\zbot4\\Videos\\extract-turkey\\MeshroomCache\\DepthMapFilter\\latest"
sfm = "cameras.sfm"
views = {}
poses = {}

with open(sfm, 'r') as f:
    data = json.load(f)
    intrinsic = data['intrinsics'][0]
    view_data = data['views']
    for camera in view_data:
        views[camera['frameId']] = camera
    
    poses_data = data['poses']

    for pose in poses_data:
        poses[pose['poseId']] = pose
print(intrinsic)
for frame in os.listdir(frame_dir)[50:]:
    idx = frame[5:-4]
    view = views[idx]
    pose = poses[view['poseId']]

    img = cv2.imread(os.path.join(frame_dir, frame))
    depth = cv2.imread(os.path.join(depth_dir, view['poseId']  + '_depthMap.exr'), cv2.IMREAD_ANYCOLOR | cv2.IMREAD_ANYDEPTH)

    results = model(img)[0]
    detections = sv.Detections.from_ultralytics(results)
    detections = detections[detections.class_id == 0]
    detections = detections[detections.confidence > 0.3]

    for detection in detections:
        xyxy = detection[0]

        center = [(xyxy[0] + xyxy[2]) / 2, (xyxy[1] + xyxy[3]) / 2]

        x = [xyxy[0] / 2, xyxy[2] / 2]
        x = [int(x[0]), int(x[1])]

        y = [xyxy[1] / 2, xyxy[3] / 2]
        y = [int(y[0]), int(y[1])]

        depth_subset = depth[y[0]:y[1], x[0]:x[1]]
        rotation = np.array(pose['pose']['transform']['rotation'])
        translation = np.array(pose['pose']['transform']['center'])
        focal = intrinsic['value'][0][0]
        principal = intrinsic['value'][0][2]
        projection = np.array([[focal, 0, principal], [0, focal, principal], [0, 0, 1]])


