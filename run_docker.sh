#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
echo "========= CLEAR OLD ENVIRONMENT ========="
docker rm capstone_project
docker rmi capstone_project
echo "========= DONE ========="
echo "." 
echo "."
echo "."
echo "========= BUILD NEW IMAGE ========="
docker build --tag=capstone_project .
echo "========= DONE ========="
echo "." 
echo "."
echo "."
# Step 2: 
# List docker images
echo "========= LIST IMAGES ========="
docker image ls
echo "========= DONE ========="
