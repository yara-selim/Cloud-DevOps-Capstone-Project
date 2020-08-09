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
    stage('Aqua Microscanner') {
        steps{
            aquaMicroscanner imageName: 'capstone', notCompliesCmd: '', onDisallowed: 'ignore' , outputFormat: 'html'
         }
    }
        stage('Push to Docker Hub') {
            steps {
                sh "chmod +x upload_docker.sh"
                sh './upload_docker.sh $USER_CREDENTIALS_USR $USER_CREDENTIALS_PSW'
            }
        }


    }
}
