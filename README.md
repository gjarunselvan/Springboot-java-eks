pipeline {
    tools {
        maven 'Maven3'
    }
    agent any
    environment {
        registry = "423623851306.dkr.ecr.us-east-2.amazonaws.com/springboot-jenkins-ecr-repo"
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: 'github-credentials', url: 'https://github.com/gjarunselvan/springboot-jenkins-eks.git'
            }
        }
        
        stage('Build Jar') {
            steps {
                sh 'mvn clean package'
            }
        }
        
        stage('Building image') {
          steps{
            script {
                sh 'whoami'
                dockerImage = docker.build registry 
            }
          }
        }
        
        
        // Uploading Docker images into AWS ECR
        stage('Pushing to ECR') {
            steps{  
                script {
                    sh 'aws ecr get-login-password --region <region> | docker login --username AWS --password-stdin <ECR_URI>'
                    sh 'docker push <<REPOSITORY URI>>:latest'
                }
            }
        }
        
        
        stage('K8S Deploy') {
            steps{   
                script {
                    withKubeConfig([credentialsId: 'K8S', serverUrl: '']) {
                    sh ('kubectl apply -f  eks-deploy-k8s.yaml')
                    }
                }
            }
        }
    }
}
