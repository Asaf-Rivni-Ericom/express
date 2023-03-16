pipeline {
    agent { docker { image 'node:lts-alpine' } }
    try {
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

            stage ('alert') {
                emailex {
                    body: 'Passed',
                    subject: 'Test passed',
                    to: 'asaf.rivni@ericom.com'
                }
            }
        }
    }
    catch (exception) {
        stage ('alert') {
            emailex {
                body: 'Passed',
                subject: 'Test passed',
                to: 'asaf.rivni@ericom.com'
            }
        }
    }
}