pipeline {
    agent any

    stages {
        stage('Init') {
            steps {
                cleanWs()
            }
        }

        stage('SCM') {
            steps {
                git 'https://github.com/Alex-Golub/simple-webapp-nodejs.git'
            }
        }

        stage('Build') {
            steps {
                sh 'docker build -t simple-webapp-nodejs:1.0 .'
                sh 'docker images'
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker run -itd \
                --name simple-webapp-nodejs-container \
                -p 3000:3000 \
                simple-webapp-nodejs:1.0'
            }
        }
    }
}
