# Backup old kubeconfig
mkdir -p ~/.kube
cp ~/.kube/config ~/.kube/config.bak 2>/dev/null

# Remove current kubeconfig
rm -f ~/.kube/config

# Recreate kubeconfig
aws eks update-kubeconfig \
  --region us-east-2 \
  --name jenkins-cluster

# Verify kubeconfig uses AWS CLI
grep command ~/.kube/config

# Test authentication
aws sts get-caller-identity

# Test cluster access
kubectl get nodes -o wide
