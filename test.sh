kubectl delete deployment todo-application
kubectl apply -f todo-application-deployment.yaml

Then:

kubectl get pods -w

Expected:

todo-application-xxxxx   1/1   Running
Then verify
kubectl get pods
kubectl get svc

and test:

minikube service todo-application-service --url

or:

curl http://$(minikube ip):30080
