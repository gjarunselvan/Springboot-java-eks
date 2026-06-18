kubectl get nodes
kubectl get secret
kubectl get pods
kubectl get svc
NAME       STATUS   ROLES           AGE     VERSION
minikube   Ready    control-plane   4m56s   v1.32.0
NAME                 TYPE                             DATA   AGE
my-registry-secret   kubernetes.io/dockerconfigjson   1      2m12s
NAME                                READY   STATUS             RESTARTS   AGE
mysql-db-5b85495469-2wnl5           1/1     Running            0          44s
todo-application-7ff46cfbff-s4tp4   0/1     InvalidImageName   0          31s
NAME                       TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
kubernetes                 ClusterIP   10.96.0.1        <none>        443/TCP          4m55s
mysql-db-service           ClusterIP   None             <none>        3306/TCP         44s
todo-application-service   NodePort    10.110.183.189   <none>        8081:30080/TCP   31s
labuser@ip-172-31-2-198:~/Desktop/todo-application$ 
