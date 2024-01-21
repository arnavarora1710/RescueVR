# BoilerMakeXI

# Project Overview

## Inspiration
The inspiration behind RescueVR was to provide a powerful tool for first responders during natural disasters. Leveraging computer vision and VR technology, RescueVR aims to identify people in distress and damaged buildings from 2D drone footage. The goal is to convert this footage into a 3D walkable VR environment, enhancing the situational awareness of first responders. An LLM assistant lets first responders query information about the situation without having to deal with multiple complex ML models.

## What it does
RescueVR utilizes Yolov8 for detecting individuals in distress and a Convolutional Neural Network for identifying damaged buildings in drone footage. The interface is built using React and NextJs, allowing first responders to upload the drone footage and use the LLM assistant. The innovative Multi View Stereo Reconstruction transforms 2D drone footage into a 3D walkable VR environment, enabling a more immersive and informative experience. Additionally, an LLM (Language Model) assistant empowers first responders to query information seamlessly.

## How we built it
- **People Detection:** Yolov8 was employed for detecting people in distress.
- **Building Identification:** A Convolutional Neural Network was utilized to identify damaged buildings.
- **User Interface:** React and NextJs were chosen to construct the user interface.
- **VR Environment:** Multi View Stereo (MVS) Reconstruction facilitated the conversion of 2D drone footage into a 3D walkable VR environment.

## Challenges we ran into
- **Dataset Challenges:** Finding a suitable dataset for detecting damaged buildings was a significant hurdle. Most of them had a satellite view instead of an aerial view.
- **Model Training:** Training over 5 different types of models for more than 20 hours during the hackathon. The dataset we settled on for damaged building detection had a huge imbalance in training examples.
- **Inference Time:** The inference involving 2 different Computer Vision models was very slow. By running inference only when the scene changes significantly (every 2 seconds) we could significantly reduce the time it took to get our results from over 5 minutes to under 30 seconds.
- **3D VR Environment Construction:** The limited size and quality of the dataset posed challenges in constructing a 3D VR environment.

## Accomplishments that we're proud of
- **Efficient ML Models:** Successful implementation of multiple ML models with low inference times.
- **Immersive VR Environment:** Development of a walkable 3D VR environment of a natural disaster from drone footage.
- **Integration with ChatGPT API:** Implementation of the ChatGPT API to easily query information about the situation.

## What we learned
- **VR Development:** Building VR environments using MVS.
- **Overfitting Prevention:** Strategies for preventing overfitting in ML models.
- **Inference Optimization:** Techniques to save time while running inference on video files.
- **Web Development:** Building React and NextJS applications.
- **HTTP Requests:** Understanding how HTTP requests.

## What's next for RescueVR
- **Real-Time Processing:** Transition to real-time processing instead of relying on uploaded drone footage.
- **Damage Level Visualization:** Implement color coding for buildings in the VR environment based on damage levels.
