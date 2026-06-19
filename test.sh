aws ecr create-repository \
--repository-name springboot-jenkins-ecr-repo \
--region us-east-2

aws: [ERROR]: An error occurred (RepositoryAlreadyExistsException) when calling the CreateRepository operation: The repository with name 'springboot-jenkins-ecr-repo' already exists in the registry with id '761018881666'
ubuntu@ip-172-31-39-80:~$ 

