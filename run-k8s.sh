#!/usr/bin/env bash

# This is your Docker ID/path
dockerpath=yaraselim1994/cloud-devops-capstone

# Run the Docker Hub container with kubernetes
kubectl run capstone --image=$dockerpath --port=80

# List kubernetes pods
sleep 10
kubectl get pods

# Forward the container port to a host
POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
kubectl port-forward $POD_NAME 80:80
