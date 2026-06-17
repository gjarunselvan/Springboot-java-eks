echo "===== AWS CLI ====="
aws --version

echo "===== Caller Identity ====="
aws sts get-caller-identity

echo "===== Current Context ====="
kubectl config current-context

echo "===== Kubeconfig Command ====="
grep -A5 command ~/.kube/config

echo "===== EKS Token ====="
aws eks get-token \
  --region us-east-2 \
  --cluster-name jenkins-cluster | head
