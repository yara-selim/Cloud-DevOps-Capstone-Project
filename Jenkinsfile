pipeline {
    environment {
        USER_CREDENTIALS = credentials('dockerhub')
    }
    agent any
    stages {
        stage('Lint HTML') {
            steps {
                sh 'tidy -q -e *.html'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh "chmod +x run_docker.sh"
                sh './run_docker.sh'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                sh "chmod +x upload_docker.sh"
                sh './upload_docker.sh $USER_CREDENTIALS_USR $USER_CREDENTIALS_PSW'
            }
        }
        stage('Connect to AWS') {
              steps {
                  withAWS(region:'us-west-2',credentials:'aws-static') {
                  
                      aws s3 ls
             }
         }
     }

    }
}
