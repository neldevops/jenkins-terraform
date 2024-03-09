pipeline {
    agent any
   environment {
        AWS_ACCESS_KEY_ID = credentials('aws-accesskey')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secretkey')
   }

    stages {
        stage('Checkout') {
            steps {
                 echo 'this is check out' 
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/neldevops/jenkins-terraform.git']])
            
            
            }
        }

         stage('terraform initialize') {
            steps {
                    sh 'terraform init'
                    
            }
        }

        stage('terraform validate') {
            steps {
                    sh 'terraform fmt'
                    sh 'terraform validate'
                    
            }
        }

        stage('terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
    
        stage('terraform apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
     
    }
}