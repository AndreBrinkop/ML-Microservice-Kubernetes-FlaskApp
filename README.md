[![CircleCI](https://circleci.com/gh/AndreBrinkop/ML-Microservice-Kubernetes-FlaskApp.svg?style=svg)](https://circleci.com/gh/AndreBrinkop/ML-Microservice-Kubernetes-FlaskApp)

## Project Overview
This project will contain all the necessary files and scripts to operationalize a Machine Learning Microservice API.
This operationalized API is a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.
This API is using a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`