import os
from flask import Flask, request, jsonify, send_file
import cv2
import numpy as np
import tensorflow as tf
from uuid import uuid4
from tensorflow.keras.preprocessing import image
import zipfile
import supervision as sv
from ultralytics import YOLO

app = Flask(__name__)


# Load the saved model
model = tf.keras.models.load_model('Model/cnn')
yolo = YOLO('yolov8s.pt')

@app.route('/cnn', methods=['POST'])
def cnn_endpoint():
    # Check if the post request has the file part
    if 'file' not in request.files:
        return jsonify({"error": "No file part"})

    file = request.files['file']

    # Check if the file is empty
    if file.filename == '':
        return jsonify({"error": "No selected file"})

    # Check if the file is an allowed format (you can adjust this based on your needs)
    allowed_extensions = {'mp4'}
    if '.' not in file.filename or file.filename.rsplit('.', 1)[1].lower() not in allowed_extensions:
        return jsonify({"error": "Invalid file format"})

    # Save the uploaded video
    dir = f'uploads/{uuid4()}'
    os.mkdir(dir)
    video_path = f'{dir}/uploaded.mp4'
    file.save(video_path)

    # Create or clear the 'save_dir' directory
    save_dir = 'save_dir'
    if os.path.exists(save_dir):
        for file_name in os.listdir(save_dir):
            file_path = os.path.join(save_dir, file_name)
            try:
                if os.path.isfile(file_path):
                    os.unlink(file_path)
            except Exception as e:
                print(f"Error clearing '{file_path}': {e}")
    else:
        os.mkdir(save_dir)
    # Open the video file
    cap = cv2.VideoCapture(video_path)

    # Check if the video opened successfully
    if not cap.isOpened():
        return jsonify({"error": "Could not open video"})

    # Variables to store the results for each frame
    results = []

    count = 0
    n_people = 0
    while True:
        # Read a frame from the video
        ret, frame = cap.read()

        # Break the loop if the video is over
        if not ret:
            break

        if (count % 5 != 0):
            continue
        # YOLO
        yolo_results = yolo(frame, imgsz=1280)[0]
        detections = sv.Detections.from_yolov8(yolo_results)
        detections = detections[detections.class_id == 0]
        if len(detections) > 0:
            n_people = max(n_people, len(detections))
            box_annotator = sv.BoxAnnotator(thickness=4, text_thickness=4, text_scale=2)
            yolo_frame = box_annotator.annotate(scene=frame, detections=detections, skip_label=True)
            cv2.imwrite(f'{save_dir}/frame_{count}.png', yolo_frame)
        # CNN
        # Preprocess the frame for inference
        frame = cv2.resize(frame, (64, 64))  # Assuming your model expects 64x64 input
        test_image = image.img_to_array(frame)
        test_image = np.expand_dims(test_image, axis=0)

        # Perform inference on the current frame
        result = model.predict(test_image)
        if result[0][0] < 0.5:
            # Save the frame in the 'save_dir' directory
            cv2.imwrite(f'{save_dir}/frame_{count}.png', frame)

        results.append(result.tolist())
        count += 1

    # Release the video capture object
    cap.release()

    # Convert the results to a numpy array
    results = np.array(results).tolist()

    zip_file_path = f'frames.zip'
    with zipfile.ZipFile(zip_file_path, 'w') as zip_file:
        for frame_name in os.listdir(save_dir):
            frame_path = os.path.join(save_dir, frame_name)
            zip_file.write(frame_path, os.path.basename(frame_path))

    # Provide a link to download the ZIP file
    download_link = f'http://127.0.1:5000/download'
    # os.rename(zip_file_path, download_link)

    return jsonify({"people": n_people, "download_link": download_link})

@app.route('/download', methods=['GET'])
def download_file():
    return send_file('frames.zip', as_attachment=True)

if __name__ == '__main__':
    app.run()
