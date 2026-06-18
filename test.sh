ubectl delete deployment todo-application
deployment.apps "todo-application" deleted
labuser@ip-172-31-2-198:~/Desktop/todo-application$ kubectl apply -f todo-application-deployment.yaml
deployment.apps/todo-application created
service/todo-application-service unchanged
labuser@ip-172-31-2-198:~/Desktop/todo-application$ kubectl get pods -w
NAME                                READY   STATUS    RESTARTS   AGE
mysql-db-5b85495469-2wnl5           1/1     Running   0          4m15s
todo-application-78c798bdd4-dw2fl   1/1     Running   0          10s
labuser@ip-172-31-2-198:~/Desktop/todo-application$ kubectl get podsds
kubectl get svc
NAME                                READY   STATUS    RESTARTS   AGE
mysql-db-5b85495469-2wnl5           1/1     Running   0          4m32s
todo-application-78c798bdd4-dw2fl   1/1     Running   0          27s
NAME                       TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
kubernetes                 ClusterIP   10.96.0.1        <none>        443/TCP          8m43s
mysql-db-service           ClusterIP   None             <none>        3306/TCP         4m32s
todo-application-service   NodePort    10.110.183.189   <none>        8081:30080/TCP   4m19s
labuser@ip-172-31-2-198:~/Desktop/todo-application$ minikube service todo-application-service --url
http://192.168.49.2:30080
labuser@ip-172-31-2-198:~/Desktop/todo-application$ ^C
labuser@ip-172-31-2-198:~/Desktop/todo-application$ 
