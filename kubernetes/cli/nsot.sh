#!/bin/bash
# create a deployment by pulling the image from the official nsot repo from docker.io
kubectl create deployment nsot docker.io/nsot/nsot:latest

# now expose that deployment to the outside world via a service
kubectl create service nodeport nsot --tcp=8990:8990
