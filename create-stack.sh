#!/bin/bash
aws cloudformation create-stack --stack-name k8s-stack$(uuidgen) --template-body file://k8s.yml   --parameters file://k8s-parameters.json  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-west-2
