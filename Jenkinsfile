def env_production = 'production'
def env_development = 'development'

pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        deleteDir()
        checkout scm
      }
    }
    stage('Build') {
      steps {
        script {
          sh 'npm install'
        }
      }
    }
    stage('Unit Test') {
      steps {
        script {
          sh 'npm test'
        }
      }
    }
  }
}
