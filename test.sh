aws ecr describe-repositories \
--repository-names springboot-jenkins-ecr-repo \
--region us-east-2
{
    "repositories": [
        {
            "repositoryArn": "arn:aws:ecr:us-east-2:761018881666:repository/springboot-jenkins-ecr-repo",
            "registryId": "761018881666",
            "repositoryName": "springboot-jenkins-ecr-repo",
            "repositoryUri": "761018881666.dkr.ecr.us-east-2.amazonaws.com/springboot-jenkins-ecr-repo",
            "createdAt": "2026-01-31T11:46:54.264000+00:00",
            "imageTagMutability": "MUTABLE",
            "imageScanningConfiguration": {
                "scanOnPush": false
            },
            "encryptionConfiguration": {
                "encryptionType": "AES256"
            }
        }
    ]
}
ubuntu@ip-172-31-39-80:~$ 

