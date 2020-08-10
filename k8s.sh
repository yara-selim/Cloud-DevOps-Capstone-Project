#!/bin/bash
kubectl run capstone\
--image=yaraselim1994/cloud-devops-capstone\
--port=80
kubectl port-forward --address 0.0.0.0 capstone 8888:80
