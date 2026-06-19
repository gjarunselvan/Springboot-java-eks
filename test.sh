#!/bin/bash

echo "======================================"
echo "AWS IDENTITY"
echo "======================================"

aws sts get-caller-identity

echo ""
echo "======================================"
echo "ECR REPOSITORY"
echo "======================================"

aws ecr describe-repositories \
--repository-names springboot-jenkins-ecr-repo \
--region us-east-2

echo ""
echo "======================================"
echo "CREATING EKS CLUSTER"
echo "======================================"

eksctl create cluster \
--name jenkins-cluster \
--region us-east-2 \
--nodegroup-name jenkins-nodegroup \
--node-type t3.medium \
--nodes 2 \
--nodes-min 2 \
--nodes-max 2 \
--managed

echo ""
echo "======================================"
echo "VERIFY CLUSTER"
echo "======================================"

eksctl get cluster --region us-east-2

echo ""
echo "======================================"
echo "VERIFY NODES"
echo "======================================"

kubectl get nodes -o wide

echo ""
echo "======================================"
echo "VERIFY PODS"
echo "======================================"

kubectl get pods -A

echo ""
echo "======================================"
echo "DONE"
echo "======================================"
