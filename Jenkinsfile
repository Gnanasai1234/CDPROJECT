pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/Gnanasai1234/CDPROJECT.git'
            }
        }
        stage('Build') {
            steps {
                bat './mvnw clean package -DskipTests'  // Build your project using Maven wrapper
            }
        }
        stage('Docker Build & Run') {
            steps {
                bat 'docker-compose down'  // Stop any running containers
                bat 'docker-compose build' // Build Docker images
                bat 'docker-compose up -d' // Run containers in detached mode
            }
        }
    }

    post {
        success {
            echo "Pipeline Completed Successfully!"
        }
        failure {
            echo "Pipeline Failed. Check project!"
        }
    }
}
