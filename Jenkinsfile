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
    post {
        success {
            emailext body: 'Build succeeded.',
                    subject: 'Build Successful!',
                    to: 'asaf.rivni@ericom.com'
        }
        failure {
            emailext body: 'Build failed. Please check the build logs for more information.',
                    subject: 'Build Failed!',
                    to: 'asaf.rivni@ericom.com'
        }
    }
}