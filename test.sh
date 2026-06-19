#!/bin/bash

echo "===== DOCKER ====="
ls /var/lib/jenkins/plugins | grep docker

echo ""
echo "===== PIPELINE ====="
ls /var/lib/jenkins/plugins | grep workflow

echo ""
echo "===== GIT ====="
ls /var/lib/jenkins/plugins | grep git

echo ""
echo "===== KUBERNETES ====="
ls /var/lib/jenkins/plugins | grep kubernetes

echo ""
echo "===== AWS ====="
ls /var/lib/jenkins/plugins | grep aws

echo ""
echo "===== CREDENTIALS ====="
ls /var/lib/jenkins/plugins | grep credentials

echo ""
echo "===== IMPORTANT DEPENDENCIES ====="
ls /var/lib/jenkins/plugins | egrep "bouncycastle|commons-compress|jakarta-mail|instance-identity|authentication-tokens"
===== DOCKER =====
docker-commons
docker-commons.jpi
docker-java-api
docker-java-api.jpi
docker-plugin
docker-plugin.jpi
docker-workflow
docker-workflow.jpi

===== PIPELINE =====
docker-workflow
docker-workflow.jpi
workflow-api
workflow-api.jpi
workflow-basic-steps
workflow-basic-steps.jpi
workflow-cps
workflow-cps.jpi
workflow-durable-task-step
workflow-durable-task-step.jpi
workflow-job
workflow-job.jpi
workflow-multibranch
workflow-multibranch.jpi
workflow-scm-step
workflow-scm-step.jpi
workflow-step-api
workflow-step-api.jpi
workflow-support
workflow-support.jpi

===== GIT =====
git
git-client
git-client.jpi
git.jpi

===== KUBERNETES =====
kubernetes-cli
kubernetes-cli.jpi
kubernetes-client-api
kubernetes-client-api.jpi
kubernetes-credentials
kubernetes-credentials.jpi

===== AWS =====
aws-credentials
aws-credentials.jpi
aws-java-sdk-ec2
aws-java-sdk-ec2.jpi
aws-java-sdk-minimal
aws-java-sdk-minimal.jpi
aws-java-sdk2-core
aws-java-sdk2-core.jpi
aws-java-sdk2-ec2
aws-java-sdk2-ec2.jpi
aws-java-sdk2-ecr
aws-java-sdk2-ecr.jpi

===== CREDENTIALS =====
aws-credentials
aws-credentials.jpi
credentials
credentials-binding
credentials-binding.jpi
credentials.jpi
kubernetes-credentials
kubernetes-credentials.jpi
plain-credentials
plain-credentials.jpi
ssh-credentials
ssh-credentials.jpi

===== IMPORTANT DEPENDENCIES =====
authentication-tokens
authentication-tokens.jpi
bouncycastle-api
bouncycastle-api.jpi
commons-compress-api
commons-compress-api.jpi
instance-identity
instance-identity.jpi
jakarta-mail-api
jakarta-mail-api.jpi
ubuntu@ip-172-31-39-80:~$ 
