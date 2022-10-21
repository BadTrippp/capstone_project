#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=294899139296.dkr.ecr.us-east-1.amazonaws.com/capstone_project

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $dockerpath
docker tag capstone_project $dockerpath
docker tag capstone_project:latest $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest
