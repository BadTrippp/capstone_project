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
docker login registry-1.docker.io
docker tag project4 $dockerpath

# Step 3:
# Push image to a docker repository
docker push badtrip/udacity-project4

aws ecr get-login-password --region us-east-1 | docker login --username admin --password-stdin 294899139296.dkr.ecr.us-east-1.amazonaws.com

echo $(aws ecr get-login-password)|docker login --password-stdin --username admin 294899139296.dkr.ecr.us-east-1.amazonaws.com

export password=$(aws ecr get-login-password --region us-east-1)
docker login --username admin --password-stdin 294899139296.dkr.ecr.us-east-1.amazonaws.com