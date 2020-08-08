#!/usr/bin/env bash

# Build image and add a descriptive tag
sudo docker build . -t capstone

# List docker images
docker image ls
