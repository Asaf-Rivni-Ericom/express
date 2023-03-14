pipeline {
    agent any
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
