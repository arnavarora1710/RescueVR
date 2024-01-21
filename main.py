import os
from flask import Flask, request, jsonify
import cv2
import numpy as np
import tensorflow as tf
from uuid import uuid4
from tensorflow.keras.preprocessing import image

app = Flask(__name__)


# Load the saved model
model = tf.keras.models.load_model('Model/cnn')

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

    # Open the video file
    cap = cv2.VideoCapture(video_path)

    # Check if the video opened successfully
    if not cap.isOpened():
        return jsonify({"error": "Could not open video"})

    # Variables to store the results for each frame
    results = []

    count = 0
    while True:
        # Read a frame from the video
        ret, frame = cap.read()

        # Break the loop if the video is over
        if not ret:
            break

        if (count % 5 != 0):
            continue
        # Preprocess the frame for inference
        frame = cv2.resize(frame, (64, 64))  # Assuming your model expects 64x64 input
        test_image = image.img_to_array(frame)
        test_image = np.expand_dims(test_image, axis=0)

        # Perform inference on the current frame
        result = model.predict(test_image)
        results.append(result.tolist())
        count += 1

    # Release the video capture object
    cap.release()

    # Convert the results to a numpy array
    results = np.array(results).tolist()

    return jsonify({"results": results})

if __name__ == '__main__':
    app.run()