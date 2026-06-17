aws ecr describe-repositories \
--repository-name springboot-jenkins-ecr-repo \
--region us-east-2 \
--query 'repositories[0].repositoryUri' \
--output text
