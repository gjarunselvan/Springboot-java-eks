Run these commands now
1. Verify cluster
kubectl get nodes

Expected:

NAME       STATUS   ROLES           AGE   VERSION
minikube   Ready    control-plane   ...
2. Create Docker registry secret
kubectl create secret docker-registry my-registry-secret \
--docker-username=gjarunselvan \
--docker-password='YOUR_DOCKER_PASSWORD'
3. Verify secret
kubectl get secret

You must see:

my-registry-secret
4. Deploy

From project folder:

kubectl apply -f mysql-deployment.yaml
kubectl apply -f todo-application-deployment.yaml
5. Check pods
kubectl get pods
6. Check services
kubectl get svc
Send me ONLY these outputs
kubectl get nodes
kubectl get secret
kubectl get pods
kubectl get svc

Once I see those 4 outputs, I'll tell you exactly what remains for the grader. You're very close to the finish line now. 🚀
