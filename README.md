[![CircleCI](https://circleci.com/gh/AndreBrinkop/ML-Microservice-Kubernetes-FlaskApp.svg?style=svg)](https://circleci.com/gh/AndreBrinkop/ML-Microservice-Kubernetes-FlaskApp)

## Project Overview
This project will contain all the necessary files and scripts to operationalize a Machine Learning Microservice API. The operationalized API is a Python flask app that serves out predictions (inference) about housing prices through API calls.\
This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

This API is using a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).

---

## Repository Content

* `app.py` contains the code for the Python flask app
* `requirements.txt` contains a list of Python dependencies needed for the Python flask app
* `make_prediction.sh` runs a prediction using the operationalized API
* `run_docker.sh` builds a docker image for the Python flask app and runs it
* `upload_docker.sh` tags and uploads the created docker image to Docker Hub
* `run_kubernetes.sh` fetches the docker image from Docker Hub and runs it with Kubernetes

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes (using image from Docker Hub):  `./run_kubernetes.sh`
