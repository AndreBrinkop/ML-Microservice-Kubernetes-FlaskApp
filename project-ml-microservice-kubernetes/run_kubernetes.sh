#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerimage=sklearnflaskapp
dockerpath=abrinkop/$dockerimage

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment $dockerimage --image=$dockerpath

# Step 3:
# List kubernetes pods
pod_name=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
echo Name of the Pod: $pod_name
kubectl get pods

# Wait until pod is ready
kubectl wait --for=condition=Ready pod/$pod_name

# Step 4:
# Forward the container port to a host
kubectl port-forward $pod_name 8000:80