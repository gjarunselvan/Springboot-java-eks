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
