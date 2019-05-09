#!/bin/bash
# Remove nsot deployment
kubectl delete deployment nsot

# Remove nsot service
kubectl delete service nsot
