pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/khushikt2105/CI-CD-Pipeline.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t mini-ci-cd-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker stop mini-app || true'
                sh 'docker rm mini-app || true'
                sh 'docker run -d -p 3000:3000 --name mini-app mini-ci-cd-app'
            }
        }
    }
}
