#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath=yaraselim1994/cloud-devops-capstone
 
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username $1 --password $2 
docker tag capstone $dockerpath:latest

# Push image to a docker repository
docker push $dockerpath:latest
