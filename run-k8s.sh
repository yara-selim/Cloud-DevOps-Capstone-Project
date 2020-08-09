#!/usr/bin/env bash

# This is your Docker ID/path
dockerpath=yaraselim1994/cloud-devops-capstone

# Run the Docker Hub container with kubernetes
kubectl run capstone\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward capstone 8000:80
