pipeline {
    agent { docker { image 'node:lts-alpine' } }
    stages {
        stage('build') {
            steps {
                sh 'node --version'
                sh 'npm i'
            }
        }

        stage('test') {
            steps {
                sh 'npm run test'
            }
        }
    }
} 